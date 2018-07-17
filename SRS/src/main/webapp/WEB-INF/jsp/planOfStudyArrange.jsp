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
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>

</head>
<body>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a>
          <cite>学生学习计划安排</cite></a>
      </span>
</div>
<div class="x-body">
    <xblock>
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addModel"><i class="layui-icon"></i>添加学习计划</button>
        <div class="modal fade" id="addModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel1">添加学习计划</h4>
                    </div>
                    <div class="modal-body">
                        <form  method="get" action="PlanOfStudyAdd">
                            <div class="row" style="margin-top: 20px">
                                <div class="col-md-2"></div>
                                <div class="col-md-10">
                                    <div class="col-md-7">
                                        <label>学生</label>
                                        <select class="form-control" name="studentssn">
                                            <c:forEach items="${students}" var="students">
                                                <option value="${students.ssn}">${students.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-md-7">
                                        <label>课程</label>
                                        <select class="form-control" name="courseNumber">
                                            <c:forEach items="${courses}" var="courses">
                                                <option value="${courses.number}">${courses.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="margin-top: 20px">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="submit" class="btn btn-primary">添加到学习计划</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>

            <th>学生名</th>
            <th>课程计划</th>
        </thead>
        <tbody>
        <c:forEach items="${student}" var="student">
            <tr>
                <td>${student.name}</td>
                <td>${student.planOfStudy}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="page">
        <div>
            <a class="prev" href="">&lt;&lt;</a>
            <a class="num" href="">1</a>
            <a class="next" href="">&gt;&gt;</a>
        </div>
    </div>

</div>
</div>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>