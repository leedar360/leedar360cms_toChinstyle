$(function() {
	var countFlag = $("span[articlecounts=yes]");
	if(countFlag&&countFlag.length>0){//没有使用文章计数功能
		var articleKey = $("#articleKey").val();
		var moduleId = $("#eportalappPortletId").val();
		var columnId=$("#eprotalCurrentColumnId").val();
		var url = "/eportal/ui?pageId="+$("#eprotalCurrentPageId").val()+"&moduleId="+moduleId+"&columnId="+columnId+"&articleKey="+articleKey+"&struts.portlet.action=/app/counting-front!saveInfo.action";
		$.ajax( {
			type : "post",
			url : url,
			dataType : "text",
			async : false,
			success : function(msg) {
				$("span[articleCounts=yes]").html(msg);
			},
			error : function(msg) {
				//$("span[articleCounts=yes]").html(msg);
			}
		});
	}
	
	//文章下一篇、上一篇功能
	$.each($("[previousarticle='yes']"),function(){
		var element = $(this);
		if(element!=null&&element[0]!="undefined"){
			var articleKey = element.attr("articlekey");
			var columnid = element.attr("columnid");
			var isStaticRequest=$("#isStaticRequest").val();
			var urltype= element.attr("urltype");
			if(articleKey!=null&&articleKey!="undefined"&&!articleKey.match(/^\s*$/)){
				var moduleId = $("#epsPortletId").val();
				var url = "/eportal/ui?pageId="+$("#eprotalCurrentPageId").val()+"&moduleId="+moduleId+"&struts.portlet.action=/portlet/article!getPreOrNextArticle.action&urlType="+urltype;
				$.ajax( {
					type : "post",
					url : url,
					dataType : "text",
					data:{"articleKey":articleKey,"columnId":columnid,"staticRequest":isStaticRequest},
					async : false,
					success : function(msg) {
						    if(msg!="error"){
						        var tagName=element[0].tagName.toLowerCase();
						        msg=eval("("+msg+")");
						        var preTitle=msg.preTitle;
						        var preUrl=msg.preUrl;
						        var preTitlePhoto=msg.preTitlePhoto;
						        var nextTitle=msg.nextTitle;
						        var nextUrl=msg.nextUrl;
						        var nextTitlePhoto=msg.nextTitlePhoto;
						        if(tagName=="span"){
						            var spanNav=element;
							        if(preUrl.match(/^\s*$/)){
							            spanNav.prev().hide();
							        }else{
							            spanNav.html("<a href='"+preUrl+"'>"+preTitle+"</a>");
							        }
							        if(nextUrl.match(/^\s*$/)){
						              $("span[nextarticle='yes']").prev().hide();
						            }else{
						               $("span[nextarticle='yes']").html("<a href='"+nextUrl+"'>"+nextTitle+"</a>");
						            }
						        }else if(tagName=="img"){
							        if($("#previousArticleImage")[0]){
								         if(preUrl.match(/^\s*$/)){
								             $("#previousArticleImage").attr("src","/eportal/uiFramework/images/picNews/notuji.jpg");
								             $("#previousArticleImage").after("<br>已是第一图集");
								         }else{
									          if(!preTitlePhoto.match(/^\s*$/)){
									             $("#previousArticleImage").attr("src",preTitlePhoto);
									          }else{
									             $("#previousArticleImage").attr("src","/eportal/uiFramework/images/picNews/notuji.jpg");
									          }
									          $("#previousArticleImage").after("上一图集");
								          }
							        }
							        if($("#nextArticleImage")[0]){
								         if(nextUrl.match(/^\s*$/)){
								             $("#nextArticleImage").attr("src","/eportal/uiFramework/images/picNews/notuji.jpg");
								             $("#nextArticleImage").after("<br>已是最后图集");
								         }else{
									          if(!nextTitlePhoto.match(/^\s*$/)){
									             $("#nextArticleImage").attr("src",nextTitlePhoto);
									          }else{
									             $("#nextArticleImage").attr("src","/eportal/uiFramework/images/picNews/notuji.jpg");
									          }
									           $("#nextArticleImage").after("下一图集");
								          }
							        }
						        }
						    }
					},
					error : function(msg) {
						
					}
				});
			}
		}
	});	
	
});
function getPreviousOrNextArticlePath(type,columnId,articleKey,preImageId,nextImageId){
	var isStaticRequest=$("#isStaticRequest").val();
	var moduleId = $("#epsPortletId").val();
   	var url = "/eportal/ui?pageId="+$("#eprotalCurrentPageId").val()+"&moduleId="+moduleId+"&struts.portlet.action=/portlet/article!getPreOrNextArticle.action";
	$.ajax( {
		type : "post",
		url : url,
		dataType : "text",
		data:{"articleKey":articleKey,"columnId":columnId,"staticRequest":isStaticRequest},
		async : false,
		success : function(msg) {
			    if(msg!="error"){
			        msg=eval("("+msg+")");
			        if(type=="pre"){
				        var preTitle=msg.preTitle;
				        var preUrl=msg.preUrl;
				        if(!preUrl.match(/^\s*$/)){
				            window.location.href=preUrl;
				        }
			        }else if(type=="next"){
				        var nextTitle=msg.nextTitle;
				        var nextUrl=msg.nextUrl;
				        if(!nextUrl.match(/^\s*$/)){
				            window.location.href=nextUrl;
				        }
			        }
			    }
		},
		error : function(msg) {}
	});
}
