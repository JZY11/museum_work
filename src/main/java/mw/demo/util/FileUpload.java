package mw.demo.util;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * Created by zhenya.1291813139.com
 * on 2017/7/27.
 * museum_work.
 */
public class FileUpload {
    public static String upload(String filePath, MultipartFile file) {
        String photoFileName = getPhotoFileName();
        String originalFileName = file.getOriginalFilename();
        String exName = FilenameUtils.getExtension(originalFileName);
        try {
            String fileName = photoFileName.concat("." + exName);
            file.transferTo(new File(filePath, fileName));
            return fileName;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static String getPhotoFileName() {
        return Long.toString(System.nanoTime()) + Double.toString(Math.random());
    }
}
