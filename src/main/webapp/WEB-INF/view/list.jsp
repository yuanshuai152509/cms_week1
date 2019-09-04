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
<form action="" >
	电影名：<input type="text" name="mname"><input type="submit" value="查询">
</form>
<input type="button" value="添加" onclick="toAdd()"> 
	<table>
		<tr>
			<td>
				<input type="button" value="全选" onclick="qx()">
				<input type="button" value="全不选" onclick="qbx()">
				<input type="button" value="反选" onclick="fx()">
			</td>
			<td>序号</td>
			<td>电影名</td>
			<td>描述</td>
			<td>上映日期</td>
			<td>导演</td>
			<td>类型</td>
			<td>操作</td>
			
		</tr>
		<c:forEach items="${listmovie }" var="m">
			<tr>
				<td><input type="checkbox" value="${m.mid }" name="ids"></td>
				<td>${m.mid }</td>
				<td>${m.mname }</td>
				<td>${m.anys }</td>
				<td>${m.dates }</td>
				<td>${m.actor }</td>
				<td>${m.tname }</td>
				<td>
					<input type="button" value="修改"  onclick="toUpdate(${m.mid })">
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="8">
			<input type="button" value="批量删除" onclick="deletes()">	
			${fenye }
			</td>
			
		</tr>
	</table>
</body>
<script type="text/javascript">
	function deletes(){
		var mid = $("[name=ids]:checked").map(function(){
			return this.value;
		}).get().join(",");
		alert(mid);
		$.post(
			"deletes",
			{mid:mid},
			function(obj){
				if(obj){
					alert("删除成功");
					location.href="list";
				}else{
					alert("删除失败");
				}
			}
		)
	}
	function qx(){
		$("[name='ids']").attr("checked",true);
	}
	function qbx(){
		$("[name='ids']").attr("checked",false);
	}
	function fx(){
		$("[name='ids']").each(function(){
			this.checked=!this.checked;
		})
	}
	function toAdd(){
		location.href="toAdd";
	}
	function toUpdate(mid){
		location.href="toUpdate?mid="+mid;
	}
</script>
</html>