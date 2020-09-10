<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Wang
  Date: 2020/9/9
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>

    <%--BootStrap美化页面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<%--栅格--%>
<div class="container">
    <%--清除浮动--%>
    <div class="row clearfix">
        <%--分屏12份--%>
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>
                        书籍列表 —————————————————— 显示所有书籍
                    </small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                </thead>

                <%--书籍从数据库中查询出来, 从这个list遍历出来 : foreach--%>
                <tbody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <%--通过a标签携带参数 ==> 使用?参数名=${参数值}--%>
                                <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a>
                                &nbsp; | &nbsp;
                                <%--通过a标签携带参数 ==> 此处使用RestFul风格--%>
                                <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <%--增加书籍的按钮--%>
    <div class="row clearfix">
        <div class="row">
            <div class="col-md-4 column">
                <%--toAddBook--%>
                <a href="${pageContext.request.contextPath}/book/toAddBook" class="btn btn-primary">
                    新增书籍
                </a>

                <%--显示全部书籍--%>
                <a href="${pageContext.request.contextPath}/book/allBook" class="btn btn-primary">
                    显示全部书
                </a>
            </div>

            <div class="col-md-4 column"></div>

            <div class="col-md-8 column">
                <%--查询书籍, style="float: right"为向右浮动--%>
                <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right" class="form-inline">
                    <span style="color: red; font-weight: bold">${error}</span>
                    <%--placeholder为默认显示的值--%>
                    <input type="text" placeholder="请输入要查询的书籍" class="form-control" name="queryBookName">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
