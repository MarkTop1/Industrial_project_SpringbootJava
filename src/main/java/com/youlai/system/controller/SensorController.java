package com.youlai.system.controller;

import com.youlai.system.common.result.Result;
import com.youlai.system.model.request.SensorAddRequest;
import com.youlai.system.model.request.SensorUpdateRequest;
import com.youlai.system.model.response.SensorResponse;
import com.youlai.system.service.SensorService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/v1/sensor")
public class SensorController {

    @Resource
    SensorService sensorService;

    @GetMapping("/getAll")
    @ResponseBody
    public Result<List<SensorResponse>> GetAllSensor(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<SensorResponse> allPipe = sensorService.getAllSensor();
        return Result.success(allPipe);
    }

    @DeleteMapping("/deleteById")
    @ResponseBody
    public Result<String> DeleteSensorById(Integer pipeId,HttpServletRequest request, HttpServletResponse response) throws IOException {
        sensorService.deleteSensorById(pipeId);
        return Result.success("删除成功");
    }

    @PostMapping("/add")
    public Result<SensorResponse> AddSensor(SensorAddRequest sensorRequest, HttpServletRequest request, HttpServletResponse response) throws IOException {
        sensorService.addSensor(sensorRequest);
        return Result.success();
    }

    @PostMapping("/update")
    public Result<SensorResponse> UpdatePipe(SensorUpdateRequest sensorUpdateRequest, HttpServletRequest request, HttpServletResponse response) throws IOException {
        sensorService.updateSensor(sensorUpdateRequest);
        return Result.success();
    }
}
