<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <meta name="description" content="网站描述">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" href="${contextPath}/static/css/bootstrap.css">
        <link rel="stylesheet" href="${contextPath}/static/css/font-awesome.min.css">
        <link rel="stylesheet" href="${contextPath}/static/css/manager/main.css">
        <link rel="stylesheet" href="${contextPath}/static/css/manager/user.css">
        <script src="${contextPath}/static/js/manager/vendor/jquery-2.2.4.min.js"></script>
        <script src="${contextPath}/static/js/manager/vendor/bootstrap.min.js"></script>
        <script src="${contextPath}/static/js/manager/plugins.js"></script>
        <script src="${contextPath}/static/js/manager/tool.js"></script>
        <script type="text/javascript" src="${contextPath}/static/js/sweerAlert2.79.js"></script>
        <script type="text/javascript" src="${contextPath}/static/js/jquery.twbsPagination.min.js"></script>
    </head>
    <body>
        <div id="page-wrapper" class="page-loading">
            <div class="preloader">
                <div class="inner">
                    <div class="preloader-spinner themed-background hidden-lt-ie10"></div>
                    <h3 class="text-primary visible-lt-ie10"><strong>Loading..</strong></h3>
                </div>
            </div>
            <div id="page-container" class="header-fixed-top sidebar-visible-lg-full">
                <div id="sidebar">
                    <div id="sidebar-brand" class="themed-background">
                        <a href="#" class="sidebar-title">
                            <i class="icon-cog"></i> 
                            <span class="sidebar-nav-mini-hide">后台管理系统</span>
                        </a>
                    </div>
                    <div id="sidebar-scroll">
                        <div class="sidebar-content">
                            <ul class="sidebar-nav">
                                <li>
                                    <a href="/admin/"><i class="icon-home sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">首页</span></a>
                                </li>
                                <li>
                                    <a href="/admin//resume" ><i class="icon-chevron-right sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="icon-gift sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">简历管理</span></a>
                                </li>
                                <li>
                                    <a href="/admin//question"><i class="icon-chevron-right sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="icon-gift sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">问答管理</span></a>
                                </li>
                                <li>
                                    <a href="/admin//position"><i class="icon-chevron-right sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="icon-gift sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">职位管理</span></a>
                                </li>
                                <shiro:authenticated>
	                                <shiro:hasRole name="admin">
										<li>
											<a href="/admin/user" ><i class="icon-chevron-right sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="icon-gift sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">用户管理</span></a>
										</li>
									</shiro:hasRole>
								</shiro:authenticated>
                                <li>
                                    <a href="/admin/department" ><i
                                            class="icon-chevron-right sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="icon-gift sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">公司管理</span></a>

                                </li>
                                <li>
                                    <a href="/admin/job" ><i
                                            class="icon-chevron-right sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="icon-gift sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">职位类别管理</span></a>

                                </li>
                                <li>
                                    <a href="/admin/apply" ><i
                                            class="icon-chevron-right sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="icon-gift sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">职位申请进度管理</span></a>

                                </li>
                                <li>
                                    <a href="/admin/questionType" ><i
                                            class="icon-chevron-right sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="icon-gift sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">问卷类别管理</span></a>

                                </li>
                            </ul>
                            <!-- END Sidebar Navigation -->
                        </div>
                    </div>
                </div>
                <div id="main-container">
                    <header class="navbar navbar-inverse navbar-fixed-top">
                        <ul class="nav navbar-nav-custom">
                            <li>
                                <a href="javascript:void(0)" onclick="Tool.sidebar('toggle-sidebar');this.blur();">
                                    <i class="icon-reorder animation-fadeInRight" id="sidebar-toggle-mini"></i>
                                    <i class="icon-reorder animation-fadeInRight" id="sidebar-toggle-full"></i>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav-custom pull-right">
                            <li class="dropdown">
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="${contextPath}/static/img/1.jpg" alt="avatar">
                                    <span>管理员-${sessionScope.username}</span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li>
                                        <a href="/index1">
                                            <i class="icon-step-backward fa-fw pull-right"></i>
                                            返回前台首页
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/logout">
                                            <i class="icon-off fa-fw pull-right"></i>
                                            退出
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </header>
                    <div id="page-content">
                        <div>
                            <button  class="btn btn-primary"  data-toggle="modal" data-target="#add1" style="float: left;margin-right: 5px;">新增</button>
                            <div>
                                <form class="form-inline">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="exampleInputName2" placeholder="输入相应的关键字">
                                    </div>
                                    <a href="javaScript:void(0);" class="btn btn-primary btnQuery">查询</a>
                                </form>

                                <div>
                                </div>
                                <div class="table">
                                    <ul>
                                        <li>用户名</li>
                                        <li>答案1</li>
                                        <li>答案2</li>
                                        <li>角色</li>
                                        <li>管理</li>
                                    </ul>
                                    <ul id="ulContainer">

                                    </ul>

                                </div>
                       
                    </div>
                    <!--分页-->
			        <div id="page" style="float: right;margin-right: 145px;position: relative;top: -15px;">
                        <span id="totalPage" style="display: none">${user.pages}</span>
                        <ul class="pagination" id="pagination-demo"></ul>
			        </div>
                 
                </div>
            </div>
                </div>
            </div>
        </div>
        
         <!-- 新增 -->
		<div class="modal fade" id="add1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">新增用户</h4>
		      </div>
		      <div class="modal-body">
		        <form>
					  <div class="form-group">
					    <label for="question">用户名：</label>
					    <input type="text" class="form-control" id="username" placeholder="用户名">
					  </div>
					  <div class="form-group">
					    <label for="password">密码：</label>
					    <input type="password" class="form-control" id="password" placeholder="密码">
					  </div>
					  <div class="form-group">
						    <label for="question1">你的母亲的名字是?</label>
						    <input type="text" class="form-control" id="question1" placeholder="张三" required="required">
				      </div>
					  <div class="form-group">
						    <label for="question2">你的电话号码是?</label>
						    <input type="text" class="form-control" id="question2" placeholder="1111" required="required">
					  </div>
					  <div class="form-group">
					    <label for="exampleInputFile">角色：</label>
					    <select class="form-group" id="roleSelect">
					    	<option value="1">普通用户</option>
					    	<option value="2">管理员</option>
					    </select>
					  </div>
					
				</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		        <button type="button" class="btn btn-primary" id="addSave">保存</button>
		      </div>
		    </div>
		  </div>
		</div>
            <script  src="${contextPath}/static/js/manager/user.js"></script>
            <script src="${contextPath}/static/js/manager/userPage.js"></script>
    </body>
</html>