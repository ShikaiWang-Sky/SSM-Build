<%--
  Created by IntelliJ IDEA.
  User: Wang
  Date: 2020/9/10
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>

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
                        书籍列表 —————————————————— 新增书籍
                    </small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <%--此处的label中的for标签对应下面input标签中的id, 这样点击label就可以直接到input!--%>
            <label for="bookName">书籍名称:</label>
             <%--input中的name要与实体类中的一致!--%>
            <input type="text" class="form-control" id="bookName" name="bookName" required>
        </div>
        <div class="form-group">
            <label for="bookCounts">书籍数量:</label>
            <input type="text" class="form-control" id="bookCounts" name="bookCounts" required>
        </div>
        <div class="form-group">
            <label for="detail">书籍描述:</label>
            <input type="text" class="form-control" id="detail" name="detail" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>

</div>

</body>
</html>
