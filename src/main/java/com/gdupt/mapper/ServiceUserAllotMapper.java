package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.ServiceManagement;
import com.gdupt.entity.ServiceUserAllot;
import com.gdupt.entity.vo.ServiceDeal;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-22
 */
public interface ServiceUserAllotMapper extends BaseMapper<ServiceUserAllot> {
    List<BasicData> findServiceHandle();
    boolean addAllot(ServiceUserAllot serviceUserAllot);
    boolean addDeal(ServiceUserAllot serviceUserAllot);
    List<ServiceDeal> findAll(Page page,@Param("name") String name);
    List<ServiceDeal> findFile(Page page,@Param("customer") String customer,@Param("outline") String outline,@Param("serviceType") String serviceType);
    List<ServiceDeal> findFeedBack(Page page,@Param("name") String name);
    boolean addResult(ServiceUserAllot serviceUserAllot);
    List<BasicData> findSatisfaction();
    boolean updateStatuss(ServiceManagement serviceManagement);
}
