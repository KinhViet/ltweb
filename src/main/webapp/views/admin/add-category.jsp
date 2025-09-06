<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm danh mục</title>
</head>
<body>
<h2>Thêm danh mục</h2>

<form action="${pageContext.request.contextPath}/admin/category/add" method="post">
    <label>Tên danh mục:</label><br/>
    <input type="text" name="name" required/><br/><br/>

    <label>Ảnh (tên file hoặc URL):</label><br/>
    <input type="text" name="icon"/><br/><br/>

    <button type="submit">💾 Lưu</button>
    <a href="${pageContext.request.contextPath}/admin/category/list">⬅ Quay lại</a>
</form>

</body>
</html>
