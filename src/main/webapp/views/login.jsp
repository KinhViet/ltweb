<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<h2>Đăng nhập</h2>

<form action="${pageContext.request.contextPath}/login" method="post">
    <label>Tên đăng nhập:</label><br/>
    <input type="text" name="username" required/><br/><br/>

    <label>Mật khẩu:</label><br/>
    <input type="password" name="password" required/><br/><br/>

    <button type="submit">Đăng nhập</button>
</form>

<c:if test="${not empty error}">
    <p style="color:red">${error}</p>
</c:if>

</body>
</html>
