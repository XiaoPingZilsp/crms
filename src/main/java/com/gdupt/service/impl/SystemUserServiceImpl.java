package com.gdupt.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.SystemUser;
import com.gdupt.mapper.SystemUserMapper;
import com.gdupt.service.ISystemUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @since 2018-11-21
 */
@Service
public class SystemUserServiceImpl extends ServiceImpl<SystemUserMapper, SystemUser> implements ISystemUserService {

    @Autowired
    private SystemUserMapper systemUserMapper;

    @Override
    public SystemUser check(String logName) {
        return systemUserMapper.check(logName);
    }

    @Override
    public SystemUser selectInfo(String name) {
        return systemUserMapper.selectInfo(name);
    }

    @Override
    public boolean updatePsw(Integer id,String logPwd){ return systemUserMapper.updatePsw(id,logPwd);}

}
