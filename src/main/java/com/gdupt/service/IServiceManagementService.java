package com.gdupt.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.ServiceManagement;
import com.gdupt.entity.vo.CoutService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-21
 */
public interface IServiceManagementService  {
    List<CoutService>  ServiceAge(@Param("age") String age);
    List<BasicData> findType();
    List<BasicData> findStatuss();
    boolean addService(ServiceManagement serviceManagement);
    boolean editService(ServiceManagement serviceManagement);
    CustomerInfo findCustomerByName(String name);
    List<ServiceManagement> dataPage(IPage page, @Param("search") String search);
    List<CoutService> ServiceAll();
    List<CustomerInfo> findCustomer();
    boolean removeById(Integer id);
}
