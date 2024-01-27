package fileupload;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/13/MultiUploadProcess.do")
@MultipartConfig(
		maxFileSize = 1024 * 1024 * 1,
		
		maxRequestSize = 1024 * 1024 * 10
		)
public class MultiUploadProcess extends HttpServlet{
	
	private static final long serialVersionUid = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String saveDir = getServletContext().getRealPath("/Uploads");
			ArrayList<String> listFileName = FileUtil.multiFile(req, saveDir);
			for(String ofileName : listFileName) {
				String saveFileName = FileUtil.renameFile(saveDir, ofileName);
				insertMyFile(req, ofileName, saveFileName);
			}
			
			resp.sendRedirect("FileList.jsp");
			/*
			 * String oringinFileName = FileUtil.uploadFile(req, saveDir); String
			 * saveFileName = FileUtil.renameFile(saveDir, oringinFileName);
			 * insertMyFile(req, oringinFileName, saveFileName);
			 * resp.sendRedirect("FileList.jsp");
			 */
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("errorMessage", "파일업로드오루");
			req.getRequestDispatcher("MultiFileUploadMain.jsp").forward(req, resp);
		}
	}
		
		private void insertMyFile(HttpServletRequest req, String oFileNmae, String sfilename) {
			String title = req.getParameter("title");
			String[] cateArray = req.getParameterValues("cate");
			StringBuffer cateBuf = new StringBuffer();
			if(cateBuf == null) {
				cateBuf.append("선택항목없음");
			}else {
				for(String s : cateArray) {
					cateBuf.append(s+",");
				}
			}
			
			
			MyFileDTO dto = new MyFileDTO();
			dto.setTitle(title);
			dto.setCate(cateBuf.toString());
			dto.setOfile(oFileNmae);
			dto.setSfile(sfilename);
		
			MyFileDAO dao = new  MyFileDAO();
			dao.insertFile(dto);
			dao.close();
		}
	}

