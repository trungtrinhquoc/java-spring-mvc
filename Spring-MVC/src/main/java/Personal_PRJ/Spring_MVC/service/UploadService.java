package Personal_PRJ.Spring_MVC.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {

    private ServletContext servletContext;

    public UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public void handleSaveUpLoadFile(MultipartFile file, String targetFolder) {
        String rootPath = this.servletContext.getRealPath("/resources/images");
        try {
            byte[] bytes = file.getBytes();

            File dir = new File(rootPath + File.separator + "avatar");
            if (!dir.exists()) {
                dir.mkdir();
            }

            File serverFile = new File(dir.getAbsoluteFile() + File.separator + System.currentTimeMillis() + "-" + file.getOriginalFilename());
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
            stream.write(bytes);
            stream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
