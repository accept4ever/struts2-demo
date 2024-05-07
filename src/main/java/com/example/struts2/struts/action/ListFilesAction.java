package com.example.struts2.struts.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.action.SessionAware;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;
import java.util.Map;

@Component
public class ListFilesAction extends ActionSupport implements SessionAware {

    private Map<String,Object> session;

    @Value("${struts2application.working-folder}")
    private File workingFolder;

    public String execute() {
        return SUCCESS;
    }

    public File[] getFiles() throws IOException {
        return workingFolder.listFiles();
    }

    @Override
    public void withSession(Map<String, Object> session) {
        this.session = session;
    }
}
