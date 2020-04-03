<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>MatchingService</title>

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Gugi&display=swap&subset=korean"
	rel="stylesheet">
<!-- Third party plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>


<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a href="/MatchingService/index.jsp" class="navbar-brand js-scroll-trigger">MatchingService</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="">회원가입</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="loginInsert.do">로그인하기</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="BoardList.do">게시판</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Masthead-->
	<header class="masthead">
		<div class="container h-100">
			<div
				class="row h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-10 align-self-end">
					<h1 class="text-uppercase text-white font-weight-bold">Matching
						Teacher Student</h1>

					<script>
						function() {
							$("#btnSave").click(function() {
								var title = document.form1.title.value;
								var content = document.form1.content.value;
								var writer = document.form1.writer.value;

								if (title == "") {
									alert("제목을 입력하세요");
									document.form1.title.focus();
									return;
								}
								if (content == "") {
									alert("내용을 입력하세요");
									document.form1.content.focus();
									return;
								}
								if (writer == "") {
									alert("이름을 입력하세요");
									document.form1.writer.focus();
									return;
								}
								//폼에 입력한 데이터를 서버로 전송한다
								document.form1.submit();
							});
						}
					</script>

					<%-- <%@ include file="" %> --%>
					<h2>게시글 작성</h2>
					<button type="reset">처음부터 삭제하고 다시 쓰기</button>
					<br>
					<br>
					<br>
					<form name="form1" method="post" action="insert.do">
						<div>
							작성자이름 <input name="writer" placeholder="이름을 입력해주세요">
						</div>
						<div>
							제목 <input name="title" size="80" placeholder="제목을 입력해주세요">
						</div>
						<div>
							내용
							<textarea name="content" rows="4" cols="80"
								placeholder="내용을 입력해주세요"></textarea>
						</div>

						<div style="width: 650px; text-align: center;">
							<button type="submit" id="btnSave">확인</button>

						</div>
					</form>
					<hr class="divider my-4" />
				</div>
				
			</div>
		</div>
	</header>

	
	<!-- Call to action section-->

	<!-- Contact section-->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="mt-0">Let's Get In Touch!</h2>
					<hr class="divider my-4" />
					<p class="text-muted mb-5">Ready to start your next project
						with us? Give us a call or send us an email and we will get back
						to you as soon as possible!</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
					<i class="fas fa-phone fa-3x mb-3 text-muted"></i>
					<div>+1 (555) 123-4567</div>
				</div>
				<div class="col-lg-4 mr-auto text-center">
					<i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
					<!-- Make sure to change the email address in BOTH the anchor text and the link target below!-->
					<a class="d-block" href="mailto:contact@yourwebsite.com">contact@yourwebsite.com</a>
				</div>
			</div>
		</div>
	</section>


	<!-- Footer-->
	<footer class="bg-light py-5">
		<div class="container">
			<div class="small text-center text-muted">Copyright © 2020 -
				Start Bootstrap</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
