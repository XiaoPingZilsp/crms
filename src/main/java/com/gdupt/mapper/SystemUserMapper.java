package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.gdupt.entity.SystemUser;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface SystemUserMapper extends BaseMapper<SystemUser> {

    SystemUser check(String logName);

    SystemUser selectInfo(String name);

    boolean updatePsw(@Param("id")Integer id, @Param("logPwd")String logPwd);
}
