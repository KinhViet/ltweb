<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách danh mục</title>
</head>
<body>
<h2>Danh sách danh mục</h2>

<a href="${pageContext.request.contextPath}/admin/category/add">➕ Thêm danh mục</a>
<br/><br/>

<table border="1" width="100%" cellspacing="0" cellpadding="5">
    <tr>
        <th>STT</th>
        <th>Tên danh mục</th>
        <th>Ảnh</th>
        <th>Hành động</th>
    </tr>
    <c:forEach items="${cateList}" var="cate" varStatus="st">
        <tr>
            <td>${st.index + 1}</td>
            <td>${cate.name}</td>
            <td>
                <c:if test="${not empty cate.icon}">
                    <img src="${pageContext.request.contextPath}/image?fname=${cate.icon}" width="50" height="50"/>
                </c:if>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/admin/category/edit?id=${cate.id}">✏️ Sửa</a> |
                <a href="${pageContext.request.contextPath}/admin/category/delete?id=${cate.id}"
                   onclick="return confirm('Bạn có chắc muốn xóa danh mục này?')">🗑️ Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
