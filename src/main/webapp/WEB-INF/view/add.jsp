<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/resource/jquery-3.2.1.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/mystyles.css" type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form action="">
			电影名：<input type="text" name="mname"><br><br>
			描述：<input type="text" name="anys"><br><br>
			上映时间：<input type="text" name="dates"><br><br>
			导演：<input type="text" name="actor"><br><br>
			类别：
				<c:forEach items="${typeListAll }" var="t">
					<input type="checkbox" value="${t.tid }">${t.tname }
				</c:forEach><br><br>
			
			<input type="button" value="添加" onclick="add()">
		</form>
	</center>
</body>
<script type="text/javascript">
	function add(){
		$.post(
		"add",
		$("form").serialize(),
		function(obj){
			if(obj){
				alert("添加成功");
				location.href="list";
			}else{
				alert("添加成功");
			}
		}
		)
	}
</script>
</html>