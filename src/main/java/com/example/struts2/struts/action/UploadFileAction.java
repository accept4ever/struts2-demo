package com.example.struts2.struts.action;

import com.opensymphony.xwork2.ActionSupport;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.apache.struts2.action.SessionAware;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;
import java.util.Random;

@Component
@Getter
@Setter
@Slf4j
public class UploadFileAction extends ActionSupport implements SessionAware {

    private File upload;
    private String uploadFileName;
    private String uploadContentType;
    private Integer currentProcessingStage;
    private Boolean showOverlay;

    @Value("${struts2application.working-folder}")
    private Path workingFolder;

    private Map<String, Object> session;

    public String execute() throws Exception {
        if (upload == null)
            return INPUT;
        showOverlay = true;
        if (!Files.exists(workingFolder)) {
            Files.createDirectories(workingFolder);
        }
        Files.list(workingFolder).filter(f -> f.endsWith(uploadFileName)).forEach(path -> {
            try {
                Files.delete(path);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
        Files.copy(upload.toPath(), Paths.get(workingFolder.toString(), uploadFileName));
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            currentProcessingStage = i + 1;
            int waitTime = 100 + random.nextInt(2900);
            log.info("Processing stage {} started and will take {} ms", currentProcessingStage,waitTime);
            Thread.sleep(waitTime);
            log.info("Processing stage {} completed", currentProcessingStage);
        }
        return SUCCESS;
    }

    @Override
    public void withSession(Map<String, Object> session) {
        this.session = session;
    }
}
