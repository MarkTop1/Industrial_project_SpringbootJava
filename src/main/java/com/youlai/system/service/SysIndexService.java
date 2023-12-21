package com.youlai.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.youlai.system.model.dto.UserAuthInfo;
import com.youlai.system.model.entity.SysIndex;
import com.youlai.system.model.entity.SysUser;
import com.youlai.system.model.form.DictForm;
import com.youlai.system.model.form.UserForm;
import com.youlai.system.model.query.UserPageQuery;
import com.youlai.system.model.vo.UserExportVO;
import com.youlai.system.model.vo.UserInfoVO;
import com.youlai.system.model.vo.UserPageVO;

import java.util.List;

/**
 * 用户业务接口
 *
 * @author Rzm
 * @since 2023/12/12
 */
public interface SysIndexService extends IService<SysUser> {

    /**
     * 获取主页表单数据
     *
     * @param index_id
     * @return
     */
    UserForm getIndexFormData(Long index_id);


    DictForm entity2Form(SysIndex entity);

    DictForm getDictForm(Long index_id);
}
