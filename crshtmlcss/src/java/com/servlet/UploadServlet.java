package com.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DATA_DIRECTORY = "data";
    private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 1024;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024*512;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Check that we have a file upload request
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (!isMultipart) {
            return;
        }

        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Sets the size threshold beyond which files are written directly to
        // disk.
        factory.setSizeThreshold(MAX_MEMORY_SIZE);

        // Sets the directory used to temporarily store files that are larger
        // than the configured size threshold. We use temporary directory for
        // java
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        // constructs the folder where uploaded file will be stored
       /* String uploadFolder = getServletContext().getRealPath("")
                + File.separator + DATA_DIRECTORY;
*/      String fn = null;
        String uploadFolder="F:/Uploads/";
        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);
        Cookie cookie=null;
        Cookie[] cookies=null;
        cookies=request.getCookies();
        if(cookies!=null)
        {
        for(int i=0;i<cookies.length;i++)
        {
            cookie=cookies[i];
        if(cookie.getName().equals("id1"))
        {
        
                fn = cookie.getValue();
        }
        }
        }
        // Set overall request size constraint
        upload.setSizeMax(MAX_REQUEST_SIZE);
        int count=0;
        try {
            // Parse the request
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                count++;

                if (!item.isFormField()) {
                   // String fileName=new File(fn+"_"+count).;
                    String fn1 = new File(item.getName()).getName();
                    //String fileName=fn1;
                    String fileName=fn+"_"+count+".jpg";
                    String filePath = uploadFolder + File.separator + fileName;
                    File uploadedFile = new File(filePath);
                    System.out.println(filePath);
                    try {
                        // saves the file to upload directory
                        item.write(uploadedFile);
                    } catch (Exception ex) {
                        Logger.getLogger(UploadServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }

            // displays done.jsp page after upload finished
            getServletContext().getRequestDispatcher("/done.jsp").forward(
                    request, response);

        } catch (FileUploadException ex) {
            throw new ServletException(ex);
        }

    }

}