<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
 funcion validForm(form){
	 if(form.title.vlaue == ""){
		 alert("제목입력");
		 form.title.focus();
		 return false;
	 }
	 if(form.attachFile.value == ""){
		 alert("파일첨부 필수");
		 return false;
	 }
 }

</script>
<body>
<h3>멀티 파일업로드</h3>
<span style="color: red;">${errorMessage }</span>
<form name="fileForm" method="post" enctype="multipart/form-data"
action="MultiUploadProcess.do" onsubmit="return validateForm(this);">
  제목 : <input type="text" name="title" /><br /> 
        카테고리(선택사항) : 
            <input type="checkbox" name="cate" value="사진" checked />사진 
            <input type="checkbox" name="cate" value="과제" />과제 
            <input type="checkbox" name="cate" value="워드" />워드 
            <input type="checkbox" name="cate" value="음원" />음원 <br /> 
        첨부파일 : <input type="file" name="ofile" multiple /> <br />
        <input type="submit" value="전송하기" />
</body>
</html>