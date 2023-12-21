package com.youlai.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.youlai.system.mapper.SensorMapper;
import com.youlai.system.model.entity.Sensor;
import com.youlai.system.model.request.SensorAddRequest;
import com.youlai.system.model.request.SensorUpdateRequest;
import com.youlai.system.model.response.SensorResponse;
import com.youlai.system.service.SensorService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SensorServiceImpl extends ServiceImpl<SensorMapper, Sensor> implements SensorService {

    @Override
    public List<SensorResponse> getAllSensor() {
        LambdaQueryWrapper<Sensor> wrapper = new LambdaQueryWrapper<>();
        wrapper.orderByAsc(Sensor::getId);
        List<Sensor> sensorList = baseMapper.selectList(wrapper);
        List<SensorResponse> sensorResponseList = new ArrayList<>();
        for (Sensor sensor:sensorList){
            SensorResponse sensorResponse = new SensorResponse();
            sensorResponse.setId(sensor.getId());
            sensorResponse.setSensorNumber(sensor.getSensorNumber());
            sensorResponse.setSensorName(sensor.getSensorName());
            sensorResponseList.add(sensorResponse);
        }
        return sensorResponseList;
    }

    @Override
    public boolean deleteSensorById(Integer sensorId) {
        try{
            Sensor sensor = query().eq("id", sensorId).one();
            baseMapper.deleteById(sensor);
        }catch (Exception e){
            return false;
        }
        return true;
    }

    @Override
    public SensorResponse addSensor(SensorAddRequest sensorRequest) {
        Sensor sensor = new Sensor(null,
                sensorRequest.getSensorNumber(),
                sensorRequest.getSensorName(),
                sensorRequest.getSensorType()
        );
        baseMapper.insert(sensor);
        SensorResponse sensorResponse = new SensorResponse();
        sensorResponse.setSensorNumber(sensor.getSensorNumber());
        sensorResponse.setSensorName(sensor.getSensorName());
        sensorResponse.setSensorType(sensor.getSensorType());
        return sensorResponse;
    }

    @Override
    public SensorResponse updateSensor(SensorUpdateRequest sensorUpdateRequest) {
        Sensor sensor = query().eq("id", sensorUpdateRequest.getSensorId()).one();
        sensor.setSensorNumber(sensorUpdateRequest.getSensorNumber());
        sensor.setSensorType(sensorUpdateRequest.getSensorType());
        sensor.setSensorName(sensorUpdateRequest.getSensorName());
        baseMapper.updateById(sensor);
        SensorResponse sensorResponse = new SensorResponse();
        sensorResponse.setId(sensor.getId());
        sensorResponse.setSensorType(sensor.getSensorType());
        sensorResponse.setSensorName(sensor.getSensorName());
        sensorResponse.setSensorNumber(sensor.getSensorNumber());
        return sensorResponse;
    }

}
