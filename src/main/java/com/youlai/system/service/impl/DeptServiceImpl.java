package com.youlai.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.youlai.system.mapper.DeptMapper;
import com.youlai.system.model.entity.Dept;
import com.youlai.system.service.DeptService;
import org.springframework.stereotype.Service;

@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept> implements DeptService {
    @Override
    public String getDeptNameById(Integer deptId) {
        Dept dept = query().eq("id", deptId).one();
        return dept.getName();
    }
}
