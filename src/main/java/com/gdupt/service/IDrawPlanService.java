package com.gdupt.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.DrawPlan;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.SalesOpportunity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-22
 */
public interface IDrawPlanService extends IService<DrawPlan> {
    List<SalesOpportunity> list(Page page, String username, @Param("name")String name, @Param("outline")String outline, @Param("contacts")String contacts);
    List<DrawPlan> selectItem(Integer id);
}
