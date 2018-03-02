<?php
namespace jtbc;
class ui extends page {
  public static function start()
  {
    self::setPageTitle(tpl::take('index.title', 'lng'));
  }

  public static function moduleList()
  {
    $status = 1;
    $tmpstr = '';
    $page = base::getNum(request::get('page'), 0);
    $keyword = base::getString(request::get('keyword'));
    $pagesize = base::getNum(tpl::take('config.pagesize', 'cfg'), 0);
    $db = self::db();
    if (!is_null($db))
    {
      $tmpstr = tpl::take('index.list', 'tpl');
      $tpl = new tpl();
      $tpl -> tplString = $tmpstr;
      $loopString = $tpl -> getLoopString('{@}');
      $sqlstr = "select * from (";
      $folder = smart::getFolderByGuide('search');
      $folderAry = explode('|+|', $folder);
      foreach($folderAry as $key => $val)
      {
        if (!base::isEmpty($val))
        {
          $searchMode = base::getNum(tpl::take('global.' . $val . ':search.mode', 'cfg'), 0);
          if ($searchMode == 1)
          {
            $table = tpl::take('global.' . $val . ':config.db_table', 'cfg');
            $prefix = tpl::take('global.' . $val . ':config.db_prefix', 'cfg');
            $sqlstr .= "select " . $prefix . "id as un_id, " . $prefix . "topic as un_topic, " . $prefix . "time as un_time, '" . addslashes($val) . "' as un_genre from " . $table . " where " . $prefix . "delete=0 and " . $prefix . "publish=1 and " . $prefix . "lang=" . base::getNum(self::getPara('lang'), 0) . " union all ";
          }
        }
      }
      $sqlstr = base::getLRStr($sqlstr, ' union all ', 'leftr');
      $sqlstr .= ") jtbc where 1=1" . smart::getCutKeywordSQL('un_topic', $keyword);
      $sqlstr .= " order by un_time desc";
      $pagi = new pagi($db);
      $rsAry = $pagi -> getDataAry($sqlstr, $page, $pagesize);
      if (is_array($rsAry))
      {
        foreach($rsAry as $rs)
        {
          $rsTopic = base::getString($rs['un_topic']);
          $loopLineString = tpl::replaceTagByAry($loopString, $rs, 10);
          $loopLineString = str_replace('{$-topic-keyword-highlight}', smart::replaceKeyWordHighlight(base::htmlEncode(smart::replaceKeyWordHighlight($rsTopic, $keyword))), $loopLineString);
          $tpl -> insertLoopLine(tpl::parse($loopLineString));
        }
      }
      $tmpstr = $tpl -> mergeTemplate();
      $variable['-pagi-rscount'] = $pagi -> rscount;
      $variable['-pagi-pagenum'] = $pagi -> pagenum;
      $variable['-pagi-pagetotal'] = $pagi -> pagetotal;
      $tmpstr = tpl::replaceTagByAry($tmpstr, $variable);
      $tmpstr = tpl::parse($tmpstr);
    }
    return $tmpstr;
  }

  public static function moduleDefault()
  {
    $tmpstr = tpl::take('index.default', 'tpl');
    $tmpstr = tpl::parse($tmpstr);
    if (base::isEmpty($tmpstr)) $tmpstr = self::moduleList();
    return $tmpstr;
  }
}
?>
