<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/hanatour/css/main1_find_pw.css">
</head>
<body>
    


    <div class="main1_find_id">
            <div class="main1_find_id_inner">

                <div class="main1_find_id_header">
                    <div>
                        <div></div>
                        <div>비밀번호 찾기</div>
                    </div>
                    <div></div>
                </div>

                <div class="main1_find_id_tab">

                    <div class="main1_find_id_tab_select">

                        <div class=""> 
                            아이디 찾기
                        </div>

                        <div class="main1_find_id_tab_active">
                            비밀번호 찾기
                        </div>

                    </div>

                </div>
                
                
                
                 <div class="main1_join5_inner1">
						<h1>비밀번호 : <%= session.getAttribute("findPw") %></h1>
					</div>
					
					<div class="main1_join5_inner_img">
						<img src="https://image.hanatour.com/usr/static/img2/pc/com/ico-hanatour-logo2.png" alt="">
					</div>
					
					<a href="<%=request.getContextPath() %>/hanatour/jsp/main1_home/main1_1.jsp">
						<div class="main1_join5_inner2">
							홈 화면으로
						</div>
					</a>
			
					<a href="<%=request.getContextPath() %>/hanatour/jsp/main1_home/main1_login.jsp">
						<div class="main1_join5_inner3">
							로그인 화면으로
						</div>
					</a>
                

            </div>

    </div>


</body>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath() %>/hanatour/script_jsp/main1_find_pw.js"></script>
</html>