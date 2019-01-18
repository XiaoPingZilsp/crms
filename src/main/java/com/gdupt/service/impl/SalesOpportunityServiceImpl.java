package com.gdupt.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.SalesOpportunity;
import com.gdupt.mapper.SalesOpportunityMapper;
import com.gdupt.service.ISalesOpportunityService;
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
public class SalesOpportunityServiceImpl extends ServiceImpl<SalesOpportunityMapper, SalesOpportunity> implements ISalesOpportunityService {
    @Autowired
    private SalesOpportunityMapper salesOpportunityMapper;


    @Override
    public boolean edit(SalesOpportunity salesOpportunity) {
        return false;
    }

    @Override
    public List<SalesOpportunity> findAll(Page page, String name, String outline, String contacts) {
        return salesOpportunityMapper.findAll(page, name, outline, contacts);
    }
}

