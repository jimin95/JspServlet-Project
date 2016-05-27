<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>가좋사 - 회원가입</title>
		<style>
      	  body {
      	      font-size:large;
     	       background-color: rgb(253,251,239);
     		   }
      	  #logo {
      	      float:left;
      	 	 }
        	h2 {color:#434141; text-align:center;}
      		input.arg {width:200px;height:30px;}
        	fieldset {
            border: 1px solid rgb(253,251,239);
            margin-left:auto; margin-right:auto; width:10%;
            margin-top:10px;
       		 }
      	  footer{font-size:0.7em;}
    	</style>
	</head>
	<body>
	 <!--이미지 사진을 누르면 홈으로-->
   	 <header>
        <a id="join" href="login.html" target="_self"><div id="login"><b>로그인</b></div></a>
        <a href="main.html">
            <img id="logo" src="../pictures/logoname.png" width="100" height="50" alt="가좋사" />
        </a><br /><br />
    </header><hr />
    <!-- 왼쪽 큰 로고 사진 -->
    <section1 style="float:left">
        <img src="../pictures/logo.jpg" style="margin-top:200px; margin-left:10px" /><br /><br />
        <br /><br /><br />
    </section1>
    <!-- Q&A -->
    <form action="post" action="">
    	<fieldset style="width:13%">
                <legend>흡연 여부</legend>
                <label for="yes">흡연자</label>
                <input type="radio" id="yes" name="q1" value="yes" />
                <label for="no">비흡연자</label>
                <input type="radio" id="no" name="q1" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>상대방의 종교</legend>
                <input type="checkbox" value="dontcare" name="q2" />무관
                <input type="checkbox" value="chrst" name="q2" />기독교
                <input type="checkbox" value="cath" name="q2" />가톨릭교
                <input type="checkbox" value="bud" name="q2" />불교
                <input type="checkbox" value="etc" name="q2" />기타
        </fieldset>
        <fieldset style="width:13%">
                <legend>키</legend>
                <input type="text" value="tall" name="q3"/>cm
        </fieldset>
        <fieldset style="width:13%">
                <legend>활동적인 편이다</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="yes" value="q4" />
                <label for="no">X</label>
                <input type="radio" id="no" name="no" value="q4" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>활동적인 편이다</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="yes" value="q5" />
                <label for="no">X</label>
                <input type="radio" id="no" name="no" value="q5" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>활동적인 편이다</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="yes" value="q6" />
                <label for="no">X</label>
                <input type="radio" id="no" name="no" value="q6" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>활동적인 편이다</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="yes" value="q7" />
                <label for="no">X</label>
                <input type="radio" id="no" name="no" value="q7" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>활동적인 편이다</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="yes" value="q8" />
                <label for="no">X</label>
                <input type="radio" id="no" name="no" value="q8" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>활동적인 편이다</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="yes" value="q9" />
                <label for="no">X</label>
                <input type="radio" id="no" name="no" value="q9" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>활동적인 편이다</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="yes" value="q10" />
                <label for="no">X</label>
                <input type="radio" id="no" name="no" value="q10" />
        </fieldset>
    </form>
        <!-- footer -->
        <footer><a href="CustomerService.html" target="_blank">고객센터</a> <a href="Introduce.html" target="_self">홈페이지 소개</a> <b>Copyright ⓒ 가좋사.</b></footer>
	</body>
</html>