package com.youlai.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.youlai.system.mapper.ModelPipeMapper;
import com.youlai.system.model.entity.ModelPipe;
import com.youlai.system.service.ModelPipeService;
import org.springframework.stereotype.Service;

@Service
public class ModelPipeServiceImpl extends ServiceImpl<ModelPipeMapper, ModelPipe> implements ModelPipeService {

   @Override
   public String getModelPipeNameById(Integer id) {
      ModelPipe modelPipe = query().eq("id", id).one();
      return modelPipe.getPipeName();
   }

   @Override
   public ModelPipe getModelPipeById(Integer id) {
      ModelPipe modelPipe = query().eq("id", id).one();
      return modelPipe;
   }
}
