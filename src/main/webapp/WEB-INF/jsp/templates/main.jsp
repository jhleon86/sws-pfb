<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>스프링부트 웹 서비스</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	
	<!--부트스트랩 css 추가-->
    <link rel="stylesheet" href="static/css/lib/bootstrap.min.css">
</head>
<body>


<h1>스프링부트로 시작하는 웹 서비스 Ver.7 </h1>

    <div class="col-md-12">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#savePostsModal">글 등록</button>
<!--         <button type="button" class="btn btn-primary" data-toggle="modal">페이스북 로그인</button> -->
<!--         <div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div> -->
        <div class="fb-login-button" scope="public_profile,email,publish_pages,manage_pages" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="true" data-auto-logout-link="true" data-use-continue-as="true" onlogin="fbLogin();"></div>
        
<!--         <fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button> -->


        
        <br/>
        <br/>
        <!--  목록 출력 영역 -->
        <table class="table table-horizontal table-bordered">
            <thead class="thead-strong">
                <tr>
                    <th>게시글번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>최종수정일</th>
                </tr>
            </thead>
            <tbody id="tbody">
            <c:forEach items="${posts}" var="post">
                <tr>
                    <td>${post.id}</td>
                    <td>${post.title}</td>
                    <td>${post.author}</td>
                    <td>${post.modifiedDate}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        
    </div>

    <div class="modal fade" id="savePostsModal" tabindex="-1" role="dialog" aria-labelledby="savePostsLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="savePostsLabel">게시글 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="title">제목</label>
                            <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="author"> 작성자 </label>
                            <input type="text" class="form-control" id="author" placeholder="작성자를 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="content"> 내용 </label>
                            <textarea class="form-control" id="content" placeholder="내용을 입력하세요"></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary" id="btn-save">등록</button>
                </div>
            </div>
        </div>
    </div>

	 <!--부트스트랩 js, jquery 추가-->
    <script src="static/js/lib/jquery.min.js"></script>
    <script src="static/js/lib/bootstrap.min.js"></script>
    <!--custom js 추가-->
    <script src="static/js/app/main.js"></script>
    <!-- facebook SDK -->
    <script src="static/js/common/facebookSDK.js"></script>
</body>
</html>