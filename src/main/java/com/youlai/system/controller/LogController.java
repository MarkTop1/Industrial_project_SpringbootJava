//package com.youlai.system.controller;
//
//import com.youlai.system.common.result.Result;
//import com.youlai.system.model.request.SensorAddRequest;
//import com.youlai.system.model.request.SensorUpdateRequest;
//import com.youlai.system.model.response.SensorResponse;
//import com.youlai.system.service.SensorService;
//import jakarta.annotation.Resource;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import org.springframework.web.bind.annotation.*;
//
//import java.io.IOException;
//import java.util.List;
//
//@RestController
//@RequestMapping("/api/v1/log")
//public class LogController {
//
//    @Resource
//    SensorService LogService;
//
//    @GetMapping("/getAll")
//    @ResponseBody
//    public Result<List<SensorResponse>> GetAllSensor(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        List<SensorResponse> allPipe = LogService.getAllSensor();
//        return Result.success(allPipe);
//    }
//}
