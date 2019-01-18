package com.gdupt.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.DrawPlan;
import com.gdupt.entity.SalesOpportunity;
import com.gdupt.mapper.DrawPlanMapper;
import com.gdupt.service.IDrawPlanService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.ibatis.annotations.Param;
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
public class DrawPlanServiceImpl extends ServiceImpl<DrawPlanMapper, DrawPlan> implements IDrawPlanService {
    @Autowired
    private DrawPlanMapper drawPlanMapper;
    public List<SalesOpportunity> list(Page page, String username, @Param("name")String name, @Param("outline")String outline, @Param("contacts")String contacts) {
        return drawPlanMapper.list(page,username, name, outline, contacts);
    }
    public List<DrawPlan> selectItem(Integer id){
        return drawPlanMapper.selectItem(id);
    }
}
