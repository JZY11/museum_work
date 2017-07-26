<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>museum add page</title>
    </head>
    <body>
        <h1>ADD Museum</h1>
        <%--<form action="${ctx}/museum/create" method="post">--%>
        <form action="${ctx}/museum/create" method="post" enctype="multipart/form-data">
            <input name="name" placeholder="NAME"><br>
            <%--<input name="logo" placeholder="LOGO"><br>--%>
            <%--<input name="picture" placeholder="PICTURE"><br>--%>
            LOGO<input type="file" name="logoFile"><br>
            PICTURE<input type="file" name="pictureFile" placeholder="PICTURE"><br>
            <input name="address" placeholder="ADDRESS"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>