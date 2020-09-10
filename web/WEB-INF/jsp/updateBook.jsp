<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Wang
  Date: 2020/9/10
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>

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
                        书籍列表 —————————————————— 修改书籍
                    </small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <div class="form-group">
            <%--此处的label中的for标签对应下面input标签中的id, 这样点击label就可以直接到input!--%>
            <label for="bookName">书籍名称:</label>
            <%--input中的name要与实体类中的一致!--%>
            <%--value为文本框中默认显示的值, 这里从后台返回的对象中取出对应的字段--%>
            <input type="text" class="form-control" id="bookName" name="bookName" value="${queryResult.bookName}" required>
        </div>
        <div class="form-group">
            <label for="bookCounts">书籍数量:</label>
            <input type="text" class="form-control" id="bookCounts" name="bookCounts" value="${queryResult.bookCounts}" required>
        </div>
        <div class="form-group">
            <label for="detail">书籍描述:</label>
            <input type="text" class="form-control" id="detail" name="detail" value="${queryResult.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
        <%--此处修改要传递bookID, 同时此属性不应该被修改, 因此要使用隐藏域--%>
        <input type="hidden" name="bookID" value="${queryResult.bookID}">
    </form>


</div>

</body>
</html>
