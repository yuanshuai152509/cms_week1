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
			<input type="hidden" name="mid" value="${movie.mid }"><br><br>
			电影名：<input type="text" name="mname" value="${movie.mname }"><br><br>
			描述：<input type="text" name="anys" value="${movie.anys }"><br><br>
			上映时间：<input type="text" name="dates" value="${movie.dates }"><br><br>
			导演：<input type="text" name="actor" value="${movie.actor }"><br><br>
			类别：
				<c:forEach items="${typeListAll }" var="t">
					<input type="checkbox" value="${t.tid }">${t.tname }
				</c:forEach><br><br>
			
			<input type="button" value="修改" onclick="update()">
		</form>
	</center>
</body>
<script type="text/javascript">
	function update(){
		$.post(
		"update",
		$("form").serialize(),
		function(obj){
			if(obj){
				alert("修改成功");
				location.href="list";
			}else{
				alert("修改成功");
			}
		}
		)
	}
</script>
</html>