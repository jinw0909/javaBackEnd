<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex">
	<div class="logo col-2 d-flex justify-content-center align-items-center text-success">
		<h1>Melong</h1>
	</div>
	<div class="search col-10 d-flex align-items-center p-5">
		<form action="/jspTemplate/test02/test02_detail.jsp" method="get">
			<div class="input-group">
				<input type="text" class="form-control col-9" name="title">
				<div class="input-group-append">
					<button type="submit" class="button bg-info form-control col-3 text-white">검색</button>
				</div>
			</div>
		</form>
	</div>
</header>