<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix= "form" uri= "http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>教务系统</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/xadmin.js"></script>

</head>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a>教师系统</a></div>

    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">${user}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="index">退出</a></dd>
            </dl>
        </li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <c:choose>
                <c:when test="${userRight.rightId==1}">
                    <li>
                        <a  _href="teacherCourseManageList">
                            <i class="iconfont">&#xe723;</i>
                            <cite>课程管理</cite>
                        </a>
                    </li>
                    <li>
                        <a  _href="teacherSectionArrange">
                            <i class="iconfont">&#xe6fc;</i>
                            <cite>教务排课</cite>
                        </a>
                    </li>
                    <li>
                    	<a href="planOfStudyArrange">
                    	<i class="iconfont">&#xe6fc;</i>
                            <cite>学生学习计划安排</cite>
                        </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li>
                        <a  _href="teacherSectionChoose">
                            <i class="iconfont">&#xe705;</i>
                            <cite>教师选课</cite>
                        </a>
                    </li>
                    <li>
                        <a  _href="cate.html">
                            <i class="iconfont">&#xe6b5;</i>
                            <cite>教学管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <c:forEach items="${sectionList}" var="sectionList">
                                <li>
                                    <a _href="teacherSectionScore/${sectionList.sectionNo}">
                                        <i class="iconfont">&#xe6a7;</i>
                                        <cite>${sectionList.course.name}</cite>
                                    </a>
                                </li >
                            </c:forEach>
                        </ul>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>首页</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">©2014 模板之家</div>
</div>
</body>
</html>