<%@page import="utils.JsFunction"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String saveDir = application.getRealPath("Uploads");
String savaNm = request.getParameter("sName");
String originNm = request.getParameter("oName");

try{
	File file = new File(saveDir, savaNm);
	InputStream is = new FileInputStream(file);
	
	
	
	String client = request.getHeader("User-Agent");
	if(client.indexOf("WOW64")== -1){
		originNm = new String(originNm.getBytes("UTF-8"),"ISO-8859-1");
	}else{
		originNm = new String(originNm.getBytes("KSC5601"),"ISO-8859-1");
	}
	
	response.reset();
	response.setContentType("application/octet-stream");
	response.setHeader("Content-Disposition", "attachment; filename=\""+originNm+"\"");
	response.setHeader("Content-Length",""+ file.length());
	
	out.clear();
	
	
	OutputStream os = response.getOutputStream();
	
	
	byte b[] = new byte[(int)file.length()];
	int readBuf = 0;
	while((readBuf = is.read(b))> 0){
		os.write(b, 0, readBuf);
	}
	
	is.close();
	os.close();			
}
catch(FileNotFoundException e){
	JsFunction.alertBack("파일을 찾을 수 없습ㄴ다", out);
}
catch(Exception e){
	JsFunction.alertBack("예외발생", out);
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>