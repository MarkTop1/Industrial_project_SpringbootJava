package com.youlai.system.converter;

import com.youlai.system.model.entity.SysDept;
import com.youlai.system.model.form.DeptForm;
import com.youlai.system.model.vo.DeptVO;
import org.mapstruct.Mapper;

/**
 * 部门对象转换器
 *
 * @author Rzm
 * @since 2023/12/12
 */
@Mapper(componentModel = "spring")
public interface DeptConverter {

    DeptForm entity2Form(SysDept entity);
    DeptVO entity2Vo(SysDept entity);

    SysDept form2Entity(DeptForm deptForm);

}
