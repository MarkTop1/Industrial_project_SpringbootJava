//package com.youlai.system.service.impl;
//
//import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
//import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
//import com.youlai.system.mapper.SensorMapper;
//import com.youlai.system.model.entity.Sensor;
//import com.youlai.system.model.request.SensorAddRequest;
//import com.youlai.system.model.request.SensorUpdateRequest;
//import com.youlai.system.model.response.SensorResponse;
//import com.youlai.system.service.SensorService;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//
//@Service
//public class LogServiceImpl extends ServiceImpl<SensorMapper, Sensor> implements SensorService {
//
//    @Override
//    public List<SensorResponse> getAllSensor() {
//        LambdaQueryWrapper<Sensor> wrapper = new LambdaQueryWrapper<>();
//        wrapper.orderByAsc(Sensor::getId);
//        List<Sensor> sensorList = baseMapper.selectList(wrapper);
//        List<SensorResponse> sensorResponseList = new ArrayList<>();
//        for (Sensor sensor:sensorList){
//            SensorResponse sensorResponse = new SensorResponse();
//            sensorResponse.setId(sensor.getId());
//            sensorResponse.setSensorNumber(sensor.getSensorNumber());
//            sensorResponse.setSensorName(sensor.getSensorName());
//            sensorResponseList.add(sensorResponse);
//        }
//        return sensorResponseList;
//    }
//
//    @Override
//    public boolean deleteSensorById(Integer pipeId) {
//        return false;
//    }
//
//    @Override
//    public SensorResponse addSensor(SensorAddRequest sensorRequest) {
//        return null;
//    }
//
//    @Override
//    public SensorResponse updateSensor(SensorUpdateRequest sensorUpdateRequest) {
//        return null;
//    }
//
//}
