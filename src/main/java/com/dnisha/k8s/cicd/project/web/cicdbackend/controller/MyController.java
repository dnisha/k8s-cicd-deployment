package com.dnisha.k8s.cicd.project.web.cicdbackend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
    @GetMapping("/health")
    @ResponseBody

    public String health()
    {
        return "Hello from backend";
    }
}
