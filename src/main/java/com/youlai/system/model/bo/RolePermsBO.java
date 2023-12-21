package com.youlai.system.model.bo;

import lombok.Data;

import java.util.Set;

/**
 * 角色权限业务对象
 *
 * @author Rzm
 * @since 2023/12/12
 */
@Data
public class RolePermsBO {

    /**
     * 角色编码
     */
    private String roleCode;

    /**
     * 权限标识集合
     */
    private Set<String> perms;

}
