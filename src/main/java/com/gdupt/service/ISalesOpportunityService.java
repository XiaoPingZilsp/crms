package com.gdupt.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.SalesOpportunity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-21
 */
public interface ISalesOpportunityService extends IService<SalesOpportunity> {
    boolean edit(SalesOpportunity salesOpportunity);
    List<SalesOpportunity> findAll(Page page, @Param("name") String name, @Param("outline") String outline, @Param("contacts") String contacts);

}
