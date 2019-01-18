package com.gdupt.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.ServiceManagement;
import com.gdupt.entity.ServiceUserAllot;
import com.gdupt.entity.vo.ServiceDeal;
import com.gdupt.mapper.ServiceUserAllotMapper;
import com.gdupt.service.IServiceUserAllotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @since 2018-11-22
 */
@Service
public class ServiceUserAllotServiceImpl extends ServiceImpl<ServiceUserAllotMapper, ServiceUserAllot> implements IServiceUserAllotService {

    @Autowired
    private ServiceUserAllotMapper serviceUserAllotMapper;
    @Override
    public List<BasicData> findServiceHandle() {
        return serviceUserAllotMapper.findServiceHandle();
    }

    @Override
    public boolean addAllot(ServiceUserAllot serviceUserAllot) {
        return serviceUserAllotMapper.addAllot(serviceUserAllot);
    }

    @Override
    public boolean addDeal(ServiceUserAllot serviceUserAllot) {
        return serviceUserAllotMapper.addDeal(serviceUserAllot);
    }

    @Override
    public List<ServiceDeal> findAll(Page page,String name) {
        return serviceUserAllotMapper.findAll(page,name);
    }

    @Override
    public List<ServiceDeal> findFile(Page page, String customer,String outline,String serviceType){
        return serviceUserAllotMapper.findFile(page,customer,outline,serviceType);
    }

    @Override
    public List<ServiceDeal> findFeedBack(Page page,String name) {
        return serviceUserAllotMapper.findFeedBack(page,name);
    }

    @Override
    public boolean addResult(ServiceUserAllot serviceUserAllot) {
        return serviceUserAllotMapper.addResult(serviceUserAllot);
    }

    @Override
    public List<BasicData> findSatisfaction() {
        return serviceUserAllotMapper.findSatisfaction();
    }

    @Override
    public boolean updateStatuss(ServiceManagement serviceManagement) {
        return serviceUserAllotMapper.updateStatuss(serviceManagement);
    }
}
