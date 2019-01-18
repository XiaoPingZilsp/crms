package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
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
public interface SalesOpportunityMapper extends BaseMapper<SalesOpportunity> {
    List<SalesOpportunity> findAll(Page page, @Param("name") String name, @Param("outline") String outline, @Param("contacts") String contacts);
}
