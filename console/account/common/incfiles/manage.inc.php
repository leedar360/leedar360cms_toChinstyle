<?php
namespace jtbc;
class ui extends page {
  public static $account = null;

  public static function account()
  {
    $account = null;
    if (!is_null(self::$account)) $account = self::$account;
    else $account = self::$account = new console\account();
    return $account;
  }

  protected static function ppGetSelectRoleHTML($argRole = -1)
  {
    $tmpstr = '';
    $role = base::getNum($argRole, -1);
    $db = self::db();
    if (!is_null($db))
    {
      $optionUnselected = tpl::take('global.config.xmlselect_unselect', 'tpl');
      $optionselected = tpl::take('global.config.xmlselect_select', 'tpl');
      if ($role == -1) $tmpstr .= $optionselected;
      else $tmpstr .= $optionUnselected;
      $tmpstr = str_replace('{$explain}', tpl::take(':/role:manage.text-super', 'lng'), $tmpstr);
      $tmpstr = str_replace('{$value}', '-1', $tmpstr);
      $table = tpl::take(':/role:config.db_table', 'cfg');
      $prefix = tpl::take(':/role:config.db_prefix', 'cfg');
      $sql = new sql($db, $table, $prefix, 'time');
      $sqlstr = $sql -> sql;
      $rsa = $db -> fetchAll($sqlstr);
      foreach ($rsa as $i => $rs)
      {
        $rsId = base::getNum($rs[$prefix . 'id'], 0);
        $rsTopic = base::getString($rs[$prefix . 'topic']);
        if ($role == $rsId) $tmpstr .= $optionselected;
        else $tmpstr .= $optionUnselected;
        $tmpstr = str_replace('{$explain}', base::htmlEncode($rsTopic), $tmpstr);
        $tmpstr = str_replace('{$value}', $rsId, $tmpstr);
      }
    }
    return $tmpstr;
  }

  public static function moduleAdd()
  {
    $status = 1;
    $tmpstr = '';
    $account = self::account();
    if ($account -> checkPopedom(self::getPara('genre'), 'add'))
    {
      $tmpstr = tpl::take('manage.add', 'tpl');
      $tmpstr = str_replace('{$-select-role-html}', self::ppGetSelectRoleHTML(), $tmpstr);
      $tmpstr = tpl::parse($tmpstr);
      $tmpstr = $account -> replaceAccountTag($tmpstr);
    }
    $tmpstr = self::formatResult($status, $tmpstr);
    return $tmpstr;
  }

  public static function moduleEdit()
  {
    $status = 1;
    $tmpstr = '';
    $id = base::getNum(request::get('id'), 0);
    $account = self::account();
    if ($account -> checkPopedom(self::getPara('genre'), 'edit'))
    {
      $db = self::db();
      if (!is_null($db))
      {
        $table = tpl::take('config.db_table', 'cfg');
        $prefix = tpl::take('config.db_prefix', 'cfg');
        $sql = new sql($db, $table, $prefix);
        $sql -> id = $id;
        $sqlstr = $sql -> sql;
        $rs = $db -> fetch($sqlstr);
        if (is_array($rs))
        {
          $rsRole = base::getNum($rs[$prefix . 'role'], 0);
          $tmpstr = tpl::take('manage.edit', 'tpl');
          $tmpstr = tpl::replaceTagByAry($tmpstr, $rs, 10);
          $tmpstr = str_replace('{$-select-role-html}', self::ppGetSelectRoleHTML($rsRole), $tmpstr);
          $tmpstr = tpl::parse($tmpstr);
          $tmpstr = $account -> replaceAccountTag($tmpstr);
        }
      }
    }
    $tmpstr = self::formatResult($status, $tmpstr);
    return $tmpstr;
  }

  public static function moduleList()
  {
    $status = 1;
    $tmpstr = '';
    $page = base::getNum(request::get('page'), 0);
    $lock = base::getNum(request::get('lock'), 0);
    $pagesize = base::getNum(tpl::take('config.pagesize', 'cfg'), 0);
    $db = self::db();
    if (!is_null($db))
    {
      $account = self::account();
      $tmpstr = tpl::take('manage.list', 'tpl');
      $tpl = new tpl();
      $tpl -> tplString = $tmpstr;
      $loopString = $tpl -> getLoopString('{@}');
      $table = tpl::take('config.db_table', 'cfg');
      $prefix = tpl::take('config.db_prefix', 'cfg');
      $sql = new sql($db, $table, $prefix, 'time');
      if ($lock == 1) $sql -> lock = 1;
      $sqlstr = $sql -> sql;
      $pagi = new pagi($db);
      $rsAry = $pagi -> getDataAry($sqlstr, $page, $pagesize);
      if (is_array($rsAry))
      {
        foreach($rsAry as $rs)
        {
          $loopLineString = tpl::replaceTagByAry($loopString, $rs, 10);
          $loopLineString = str_replace('{$-role-topic}', base::htmlEncode($account -> getRoleTopicById($rs[$prefix . 'role'])), $loopLineString);
          $tpl -> insertLoopLine($loopLineString);
        }
      }
      $tmpstr = $tpl -> mergeTemplate();
      $batchAry = array();
      if ($account -> checkPopedom(self::getPara('genre'), 'lock')) array_push($batchAry, 'lock');
      if ($account -> checkPopedom(self::getPara('genre'), 'delete')) array_push($batchAry, 'delete');
      $variable['-batch-list'] = implode(',', $batchAry);
      $variable['-batch-show'] = empty($batchAry) ? 0 : 1;
      $variable['-pagi-rscount'] = $pagi -> rscount;
      $variable['-pagi-pagenum'] = $pagi -> pagenum;
      $variable['-pagi-pagetotal'] = $pagi -> pagetotal;
      $tmpstr = tpl::replaceTagByAry($tmpstr, $variable);
      $tmpstr = tpl::parse($tmpstr);
      $tmpstr = $account -> replaceAccountTag($tmpstr);
    }
    $tmpstr = self::formatResult($status, $tmpstr);
    return $tmpstr;
  }

  public static function moduleActionAdd()
  {
    $tmpstr = '';
    $status = 0;
    $message = '';
    $error = array();
    $account = self::account();
    $username = request::getPost('username');
    $password = request::getPost('password');
    $cpassword = request::getPost('cpassword');
    if (!$account -> checkPopedom(self::getPara('genre'), 'add'))
    {
      array_push($error, tpl::take('::console.text-tips-error-403', 'lng'));
    }
    else
    {
      $table = tpl::take('config.db_table', 'cfg');
      $prefix = tpl::take('config.db_prefix', 'cfg');
      smart::pushAutoRequestErrorByTable($error, $table);
      if (base::isEmpty($password)) array_push($error, tpl::take('manage.text-tips-field-error-1', 'lng'));
      if ($password != $cpassword) array_push($error, tpl::take('manage.text-tips-field-error-2', 'lng'));
      if (count($error) == 0)
      {
        $db = self::db();
        if (!is_null($db))
        {
          $sql = new sql($db, $table, $prefix);
          $sql -> username = $username;
          $sqlstr = $sql -> sql;
          $rs = $db -> fetch($sqlstr);
          if (is_array($rs)) array_push($error, tpl::take('manage.text-tips-add-error-101', 'lng'));
          else
          {
            $specialFiled = $prefix . 'id,' . $prefix . 'lock,' . $prefix . 'lastip,' . $prefix . 'lasttime,' . $prefix . 'delete';
            $preset = array();
            $preset[$prefix . 'password'] = md5($password);
            $preset[$prefix . 'time'] = base::getDateTime();
            $sqlstr = smart::getAutoRequestInsertSQL($table, $specialFiled, $preset);
            $re = $db -> exec($sqlstr);
            if (is_numeric($re))
            {
              $status = 1;
              $account -> creatAutoLog('manage.log-add-1', array('id' => $db -> lastInsertId));
            }
          }
        }
      }
    }
    if (count($error) != 0) $message = implode('|', $error);
    $tmpstr = self::formatMsgResult($status, $message);
    return $tmpstr;
  }

  public static function moduleActionEdit()
  {
    $tmpstr = '';
    $status = 0;
    $message = '';
    $error = array();
    $account = self::account();
    $id = base::getNum(request::get('id'), 0);
    $username = request::getPost('username');
    $password = request::getPost('password');
    $cpassword = request::getPost('cpassword');
    if (!$account -> checkPopedom(self::getPara('genre'), 'edit'))
    {
      array_push($error, tpl::take('::console.text-tips-error-403', 'lng'));
    }
    else
    {
      $table = tpl::take('config.db_table', 'cfg');
      $prefix = tpl::take('config.db_prefix', 'cfg');
      smart::pushAutoRequestErrorByTable($error, $table);
      if (!base::isEmpty($password) && $password != $cpassword) array_push($error, tpl::take('manage.text-tips-field-error-2', 'lng'));
      if (count($error) == 0)
      {
        $db = self::db();
        if (!is_null($db))
        {
          $sql = new sql($db, $table, $prefix);
          $sql -> username = $username;
          $sql -> setUnequal('id', $id);
          $sqlstr = $sql -> sql;
          $rs = $db -> fetch($sqlstr);
          if (is_array($rs)) array_push($error, tpl::take('manage.text-tips-edit-error-101', 'lng'));
          else
          {
            $specialFiled = $prefix . 'id,' . $prefix . 'password,' . $prefix . 'lock,' . $prefix . 'lastip,' . $prefix . 'lasttime,' . $prefix . 'time,' . $prefix . 'delete';
            $sqlstr = smart::getAutoRequestUpdateSQL($table, $specialFiled, $prefix . 'id', $id);
            $re = $db -> exec($sqlstr);
            if (is_numeric($re))
            {
              $status = 1;
              $message = tpl::take('manage.text-tips-edit-done', 'lng');
              $account -> creatAutoLog('manage.log-edit-1', array('id' => $id));
              if (!base::isEmpty($password)) $db -> exec("update " . $table . " set " . $prefix . "password='" . md5($password) . "' where " . $prefix . "id=" . $id);
            }
          }
        }
      }
    }
    if (count($error) != 0) $message = implode('|', $error);
    $tmpstr = self::formatMsgResult($status, $message);
    return $tmpstr;
  }

  public static function moduleActionBatch()
  {
    $tmpstr = '';
    $status = 0;
    $message = '';
    $account = self::account();
    $ids = base::getString(request::get('ids'));
    $batch = base::getString(request::get('batch'));
    if (base::checkIDAry($ids))
    {
      $table = tpl::take('config.db_table', 'cfg');
      $prefix = tpl::take('config.db_prefix', 'cfg');
      if ($batch == 'lock' && $account -> checkPopedom(self::getPara('genre'), 'lock'))
      {
        if (smart::dbFieldSwitch($table, $prefix, 'lock', $ids)) $status = 1;
      }
      else if ($batch == 'delete' && $account -> checkPopedom(self::getPara('genre'), 'delete'))
      {
        if (smart::dbFieldSwitch($table, $prefix, 'delete', $ids)) $status = 1;
      }
      if ($status == 1)
      {
        $account -> creatAutoLog('manage.log-batch-1', array('id' => $ids, 'batch' => $batch));
      }
    }
    $tmpstr = self::formatMsgResult($status, $message);
    return $tmpstr;
  }

  public static function moduleActionDelete()
  {
    $tmpstr = '';
    $status = 0;
    $message = '';
    $id = base::getNum(request::get('id'), 0);
    $account = self::account();
    if (!$account -> checkPopedom(self::getPara('genre'), 'delete'))
    {
      $message = tpl::take('::console.text-tips-error-403', 'lng');
    }
    else
    {
      $table = tpl::take('config.db_table', 'cfg');
      $prefix = tpl::take('config.db_prefix', 'cfg');
      if (smart::dbFieldSwitch($table, $prefix, 'delete', $id, 1))
      {
        $status = 1;
        $account -> creatAutoLog('manage.log-delete-1', array('id' => $id));
      }
    }
    $tmpstr = self::formatMsgResult($status, $message);
    return $tmpstr;
  }

  public static function getResult()
  {
    $tmpstr = '';
    $account = self::account();
    if ($account -> checkLogin())
    {
      if ($account -> checkPopedom(self::getPara('genre')))
      {
        $tmpstr = parent::getResult();
      }
    }
    return $tmpstr;
  }
}
?>
