package com.gdupt.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.CustomerContact;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-22
 */
public interface ICustomerContactService extends IService<CustomerContact> {
    List<CustomerContact> selectByCid(@Param("customerId") Integer id,Page page);
    List<CustomerContact> selectslist(@Param("selects") String selects);
}
