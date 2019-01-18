package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.DrawPlan;
import com.gdupt.entity.SalesOpportunity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface DrawPlanMapper extends BaseMapper<DrawPlan> {
    List<SalesOpportunity> list(Page page, @Param("username") String username, @Param("name")String name, @Param("outline")String outline, @Param("contacts")String contacts);

    List<DrawPlan> selectItem(Integer id);

}
