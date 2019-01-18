package com.gdupt.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.SystemUser;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-21
 */
public interface ISystemUserService extends IService<SystemUser> {

    SystemUser check(String logName);

    SystemUser selectInfo(String name);

    boolean updatePsw(Integer id,String logPwd);
}
