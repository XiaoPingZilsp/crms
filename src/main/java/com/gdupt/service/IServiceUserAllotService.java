package com.gdupt.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.ServiceManagement;
import com.gdupt.entity.ServiceUserAllot;
import com.gdupt.entity.vo.ServiceDeal;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-22
 */
public interface IServiceUserAllotService {
    List<BasicData> findServiceHandle();
    boolean addAllot(ServiceUserAllot serviceUserAllot);
    boolean addDeal(ServiceUserAllot serviceUserAllot);
    List<ServiceDeal> findAll(Page page,String name);
    List<ServiceDeal> findFile(Page page, String customer,String outline,String serviceType);
    List<ServiceDeal> findFeedBack(Page page,String name);
    boolean addResult(ServiceUserAllot serviceUserAllot);
    List<BasicData> findSatisfaction();
    boolean updateStatuss(ServiceManagement serviceManagement);
}
