package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.CustomerLoss;
import com.gdupt.entity.ServiceManagement;
import com.gdupt.entity.vo.CoutService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface ServiceManagementMapper extends BaseMapper<BasicData> {
    List<BasicData> findType();
    List<BasicData> findStatuss();
    boolean addService(ServiceManagement serviceManagement);
    boolean editService(ServiceManagement serviceManagement);
    CustomerInfo findCustomByName(String name);
    List<ServiceManagement> dataPage(IPage page, @Param("search") String search);
    List<CoutService>  ServiceAll();
    List<CustomerInfo> findCustomer();
    boolean removeById(Integer id);
    List<CoutService>  ServiceAge(@Param("age") String age);
}
