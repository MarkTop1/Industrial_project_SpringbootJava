package com.youlai.system.controller;

import com.youlai.system.common.result.Result;
import com.youlai.system.model.response.PipeResponse;
import com.youlai.system.service.PipeService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/v1/pipe")
public class PipeController {

    @Resource
    PipeService pipeService;

    @GetMapping("/getAll")
    @ResponseBody
    public Result<List<PipeResponse>> GetAllPipe(HttpServletRequest request, HttpServletResponse response) throws IOException {

        List<PipeResponse> allPipe = pipeService.getAllPipe();
        return Result.success(allPipe);
    }
}
