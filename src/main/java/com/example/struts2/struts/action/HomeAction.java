package com.example.struts2.struts.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.action.SessionAware;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class HomeAction extends ActionSupport implements SessionAware {

    Map<String,Object> session;

    public String execute() {
        session.put("username","JDoe");
        return SUCCESS;
    }

    @Override
    public void withSession(Map<String, Object> session) {
        this.session = session;
    }
}
