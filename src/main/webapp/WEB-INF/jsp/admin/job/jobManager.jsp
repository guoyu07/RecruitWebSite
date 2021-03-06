<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>职位管理</title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/plugins/bootstrap-3.3.5-dist/css/bootstrap-theme.css"/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/plugins/bootstrap-3.3.5-dist/css/bootstrap.css"/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/commons.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/admin/job/jobManager.css"/>"/>
	</head>

	<body>

		<%--引入导航栏 --%>
		<%@include file="/WEB-INF/jsp/commons/nav/nav.jspf" %>

		<div class="container">
			<!-- 面包屑 -->
			<div>
				<ol class="breadcrumb">
					<li>
						<a href="#">首页</a>
					</li>
					<li>
						<a href="#">我是管理员</a>
					</li>
					<li class="active">职位管理</li>
				</ol>
			</div>
			<div class="">
				<div>

					<form class="form-horizontal">
						<fieldset>

							<div id="legend" class="">
								<legend class="">职位管理</legend>
							</div>

							<table class="table table-hover" id="jobList">
								<thead>
									<tr>
										<th>职位名称</th>
										<th>关联公司</th>
										<th>发布时间</th>
										<th>收到简历</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${page.list }" var="job">
										<tr>
											<td>
												<a target="_blank" href="<c:url value="/common/jobDetailsEntry?id=${job.id }"/>" class="job-name">${job.name }</a>
											</td>
											<td>
												<a target="_blank" href="#" class="company-name">${job.company.name }</a>
											</td>
											<td>${job.createTime }</td>
											<td>${job.resumeCount }</td>
											<td>
												<div class="btn-group">
													<button type="button" class="btn btn-success btn-sm" name="delJobBtn" data-location="<c:url value="/admin/deleteJob?id=${job.id }&pageNumber=${page.pageNumber }"/>">删除</button>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</fieldset>
					</form>
				</div>
			</div>

			<!-- 引入分页 -->
			<c:set var="paginationLocation" value="/admin/companyManagerEntry" />
			<%@include file="/WEB-INF/jsp/commons/pagination/pagination.jspf" %>

			<%--引入页脚 --%>
			<%@include file="/WEB-INF/jsp/commons/footer/footer.jspf" %>

			<script type="text/javascript" src="<c:url value="/plugins/jquery/jquery-2.2.3.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/plugins/bootstrap-3.3.5-dist/js/bootstrap.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/plugins/layer/layer.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/js/commons.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/js/admin/job/jobManager.js"/>"></script>
			
	</body>

</html>