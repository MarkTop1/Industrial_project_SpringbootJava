package com.youlai.system.service;

import com.youlai.system.model.request.SensorAddRequest;
import com.youlai.system.model.request.SensorUpdateRequest;
import com.youlai.system.model.response.SensorResponse;

import java.util.List;

public interface SensorService {
    public List<SensorResponse> getAllSensor();

    public boolean deleteSensorById(Integer pipeId);

    public SensorResponse addSensor(SensorAddRequest sensorRequest);

    public SensorResponse updateSensor(SensorUpdateRequest sensorUpdateRequest);
}
