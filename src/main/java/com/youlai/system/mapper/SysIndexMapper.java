package com.youlai.system.mapper;

/**
 * 菜单持久接口层
 *
 * @author Rzm
 * @since 2023/12/12
 */

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.youlai.system.model.bo.RouteBO;
import com.youlai.system.model.entity.SysMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Set;

@Mapper
public interface SysIndexMapper extends BaseMapper<SysMenu> {

    List<RouteBO> listRoutes();

    /**
     * 获取主页信息
     *
     * @param index_id
     * @return
     */
    Set<String> listRolePerms(Set<Long> index_id);
}
