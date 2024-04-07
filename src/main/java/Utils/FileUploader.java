package Utils;



import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

public class FileUploader {

	public static String uploadFile(HttpServletRequest request, HttpServletResponse response, String baseDirectory, String partName) throws IOException, ServletException {
        Part filePart = request.getPart(partName);
        if (filePart == null || filePart.getSize() == 0) {
            return null; // No file chosen or empty file.
        }

        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // Extracts file name.
        if (fileName == null || fileName.isEmpty()) {
            return null; // File name is invalid.
        }

        // Determine the specific directory based on the file type
        String fileExtension = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
        String uploadDirectory = baseDirectory;
        switch (fileExtension) {
            case "jpg":
            case "jpeg":
            case "png":
            case "gif":
                uploadDirectory += "/images";
                break;
            case "mp3":
                uploadDirectory += "/audio";
                break;
            // Add more cases as needed
        }

        Path path = Paths.get(uploadDirectory).resolve(fileName);
        Files.createDirectories(path.getParent()); // Ensure directory exists.

        Files.copy(filePart.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
        System.out.println(path);
        return fileName;
    }
}
