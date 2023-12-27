package com.project.listeners;

import com.project.helpers.PropertiesFileHelper;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

import java.util.Properties;

@WebListener
public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        String authenticationLocation = context.getInitParameter("AUTHENTICATION_PROPERTIES_FILE_LOCATION");
        System.out.println(authenticationLocation);
        Properties authenticationProperties = PropertiesFileHelper.getProperties(context, authenticationLocation);
        context.setAttribute("AUTHENTICATION_LIST", authenticationProperties);
    }
}
