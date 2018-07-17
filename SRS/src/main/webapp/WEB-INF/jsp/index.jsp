<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>教务系统用户登录</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
<div class="col-md-5"> </div>
<div class="col-md-2">
    <div style="padding-top: 150px">
            <h3 class="text-center">
				教务系统登录
			</h3>
			<br/>
        <form method="get" action="login">
            <div class="form-group">
				<select>
				  <option value="stu">学生登录</option>
				  <option value="tea">教师登陆</option>
				</select>
				<br/>
                <label for="loginSsn">学号/工号</label>
                <input type="ssn" class="form-control" id="loginSsn" name="ssn" placeholder="请输入学号">
            </div>
            <div class="form-group">
                <label for="loginPassword">密码</label>
                <input type="password" class="form-control" id="loginPassword" name="password" placeholder="请输入密码">
            </div>
            <button type="submit" class="btn btn-success">登录</button>
        </form>
    </div>
</div>
</body>
</html>