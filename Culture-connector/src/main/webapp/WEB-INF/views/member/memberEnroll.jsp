<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link rel="shortcut icon" href="assets/images/logo-culture-light.png" />

    <jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
        <jsp:param value="회원가입" name="title"/>
    </jsp:include>

    <style>
        #checkDuplicate {
   	 width: auto;  
    margin-top: 5px;
			}
        
    </style>
</head>

<section id="content">
    <h3 align="center">회원가입</h3>

    <form id="enroll-container" name="form1" action="${path}/member/enroll" method="post">
        <div class="container" style="min-height: 500px;">
            <div class="row justify-content-center">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6 col-xxl-5">
                    <div class="card border border-light-subtle rounded-4">
                        <div class="card-body p-3 p-md-4 p-xl-5">
                            <div class="row mb-3">
                                <label for="id" class="col-sm-3 col-form-label">아이디</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="id" name="id" placeholder="아이디 4글자 이상" required>
                                </div>
                                <div class="col-sm-3">
                                    <input type="button" class="btn btn-outline-dark mt-1 ml-1" id="checkDuplicate" value="중복확인"/>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="password1" class="col-sm-3 col-form-label">패스워드</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="password1" name="password" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="password2" class="col-sm-3 col-form-label">패스워드 확인</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="password2" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="name" class="col-sm-3 col-form-label">이름</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="name" name="name" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="phone" class="col-sm-3 col-form-label">전화번호</label>
                                <div class="col-sm-9">
                                    <input type="tel" class="form-control" id="phone" name="phone" maxlength="13" placeholder="010-1234-5678">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="email" class="col-sm-3 col-form-label">이메일</label>
                                <div class="col-sm-9">
                                    <input type="email" class="form-control" id="email" name="email">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="address" class="col-sm-3 col-form-label">주소</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="address" name="address">
                                </div>
                            </div>
                            <div class="row text-center">
                                <div class="col-sm-12">
                                    <input type="submit" class="btn btn-primary" id="enrollSubmit" value="가입"/>
                                    <input type="reset" class="btn btn-secondary ml-1" value="취소"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</section>



<script type="text/javascript">
	$(()=>{
		$('#password2').blur((e)=>{
			let password1 = $('#password1').val();
			let password2 = $('#password2').val();
			
			if(password1.trim() != password2.trim()){
				alert('패스워드가 일치하지 않습니다.');
				$('#password1').val('');
				$('#password2').val('');
				$('#password1').focus();
				
			}
		});
		
		$('#enrollSubmit').click((e)=>{
			// 서버에 보내기 전에 유효성 확인하는 로직부
			let id = $('#id').val();
			if(id.length < 4){
				alert('아이디가 4글자 보다 적습니다.');
				$('#id').focus();
				return false; // submit을 취소하는 방법, 실제 서버로 전달되지 않음
			}
			
			let password1 = $('#password1').val();
			if(password1.length < 4){
				alert('비밀번호가 4글자 보다 적습니다.');
				$('#password1').focus();
				return false; // submit을 취소하는 방법, 실제 서버로 전달되지 않음
			}
			
			// 유효성 검사로직을 추가하는 부분
			
			return true; // submit이 전송되는 부분			
		});
		
		$('#checkDuplicate').click((e)=>{
			let id = $('#id').val().trim();
			
			if(id.length < 4){
				alert('아이디가 4글자보다 적습니다.');
				return;
			}
			
			$.ajax({
				type:'get',
				url:'${path}/member/idCheck',
				data:{id},
				success:(result)=>{
						if(result.validate === true){
							alert('이미 사용중인 아이디 입니다.');
							$('#id').focus();
						}else{
							alert('사용 가능한 아이디 입니다.');
						}
					},
				error:(e)=>{
					alert('중복을 확인할수 없습니다.');
					console.log(e);
				},
			});
		});
		
	});
</script>
