package fileupload;

import java.io.File;
import java.io.IOException;
import java.rmi.ServerException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

public class FileUtil {

	public static String uploadFile(HttpServletRequest req, String dir) throws IOException, ServletException{
		Part part = req.getPart("ofile");
		String partHeader = part.getHeader("content-disposition");
		String[] phArr = partHeader.split("filename=");
		String originFileName = phArr[1].trim().replace("\"","");
		if(!originFileName.isEmpty()) {
			part.write(dir+ File.separator + originFileName);
			
		}
		
		return originFileName;
	}
	
	public static String renameFile(String dir, String fileName) {
		String ext = fileName.substring(fileName.lastIndexOf("."));
		String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date() );
		String newFileName = now + ext;
		File oldFile = new File(dir +File.separator + fileName);
		File newFile = new File(dir +File.separator + newFileName);
		oldFile.renameTo(newFile);
		
		return newFileName;
	}
	public static ArrayList<String> multiFile(HttpServletRequest req, String dir) throws IOException, ServletException{
		
		ArrayList<String> listFileName = new ArrayList<String>();
		Collection<Part> parts = req.getParts();
		for(Part part : parts) {
			if(!part.getName().equals("ofile"))
				continue;
			
			String partHeader = part.getHeader("content-disposition");
			String[] phArr = partHeader.split("filename=");
			String originFileName = phArr[1].trim().replace("\"", "");
			if(!originFileName.isEmpty()) {
				part.write(dir+File.separator+originFileName);
			}
			listFileName.add(originFileName);
		}
		return listFileName;
	}
}
