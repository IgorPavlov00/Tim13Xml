package Tim13.BackendZig.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

@Service
public class FileService {
    public String getValueFromMapForFile(int index, Map<String, String> mapping) {
        if (index == -1) {
            return null;
        }

        List<String> keysList = new ArrayList<>(mapping.keySet());

        if (index >= keysList.size()) {
            return null;
        }

        String key = keysList.get(index);

        return mapping.get(key);
    }

    public Path findImageInFolder(String id, String folder) throws IOException {
        try (Stream<Path> paths = Files.find(Paths.get(folder), 1,
                (path, attrs) -> path.getFileName().toString().startsWith("prikaz_znaka."))) {
            return paths.findFirst().orElse(null);
        }
    }


    public String determineContentTypeFromExtension(String filename) {
        String extension = filename.substring(filename.lastIndexOf(".") + 1).toLowerCase();
        switch (extension) {
            case "png":
                return "image/png";
            case "jpg":
            case "jpeg":
            default:
                return "image/jpeg";
        }
    }


    public void saveFileWithCustomName(MultipartFile file, String directoryPath, String desiredName) throws IOException {
        Path path = Paths.get(directoryPath + desiredName);
        byte[] bytes = file.getBytes();
        Files.write(path, bytes);
    }

    public int getIndex(MultipartFile[] array, MultipartFile value) {
        for (int i = 0; i < array.length; i++) {
            if (array[i] == value) {
                return i;
            }
        }
        return -1;  // if the value is not found in the array
    }
}
