<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>������ - ȸ������</title>
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
	 <!--�̹��� ������ ������ Ȩ����-->
   	 <header>
        <a id="join" href="login.html" target="_self"><div id="login"><b>�α���</b></div></a>
        <a href="main.html">
            <img id="logo" src="../pictures/logoname.png" width="100" height="50" alt="������" />
        </a><br /><br />
    </header><hr />
    <!-- ���� ū �ΰ� ���� -->
    <section1 style="float:left">
        <img src="../pictures/logo.jpg" style="margin-top:200px; margin-left:10px" /><br /><br />
        <br /><br /><br />
    </section1>
    <!-- Q&A -->
    <form action="post" action="">
    	<fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q1" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q1" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q2" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q2" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q3" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q3" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q4" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q4" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q5" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q5" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q6" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q6" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q7" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q7" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q8" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q8" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q9" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q9" value="no" />
        </fieldset>
        <fieldset style="width:13%">
                <legend>Ȱ������ ���̴�</legend>
                <label for="yes">O</label>
                <input type="radio" id="yes" name="q10" value="yes" />
                <label for="no">X</label>
                <input type="radio" id="no" name="q10" value="no" />
        </fieldset>
    </form>
        <!-- footer -->
        <footer><a href="CustomerService.html" target="_blank">������</a> <a href="Introduce.html" target="_self">Ȩ������ �Ұ�</a> <b>Copyright �� ������.</b></footer>
	</body>
</html>