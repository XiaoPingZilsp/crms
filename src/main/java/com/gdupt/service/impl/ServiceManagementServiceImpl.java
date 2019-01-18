package com.gdupt.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.ServiceManagement;

import com.gdupt.entity.vo.CoutService;
import com.gdupt.mapper.BasicDataMapper;
import com.gdupt.mapper.ServiceManagementMapper;
import com.gdupt.service.IServiceManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @since 2018-11-21
 */
@Service
public class ServiceManagementServiceImpl implements IServiceManagementService {

    @Autowired
    private ServiceManagementMapper serviceManagementMapper;

    @Override
    public List<BasicData> findType() {
        return serviceManagementMapper.findType();
    }

    @Override
    public List<BasicData> findStatuss() {
        return serviceManagementMapper.findStatuss();
    }

    @Override
    public boolean addService(ServiceManagement serviceManagement) {
        return serviceManagementMapper.addService(serviceManagement);
    }

    @Override
    public boolean editService(ServiceManagement serviceManagement) {
        return serviceManagementMapper.editService(serviceManagement);
    }

    @Override
    public CustomerInfo findCustomerByName(String name) {
        return serviceManagementMapper.findCustomByName(name);
    }

    @Override
    public List<ServiceManagement> dataPage(IPage page, String search) {
        return serviceManagementMapper.dataPage(page, search);
    }

    @Override
    public List<CoutService> ServiceAll() {
        return serviceManagementMapper.ServiceAll();
    }

    @Override
    public List<CustomerInfo> findCustomer() {
        return serviceManagementMapper.findCustomer();
    }

    @Override
    public boolean removeById(Integer id) {
        return serviceManagementMapper.removeById(id);
    }

    @Override
    public List<CoutService> ServiceAge(String age) {
        return serviceManagementMapper.ServiceAge(age);
    }
}
