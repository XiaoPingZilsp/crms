package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.gdupt.entity.BasicData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-22
 */
public interface BasicDataMapper extends BaseMapper<BasicData> {
    List<BasicData> dataPage(IPage page, @Param("search") String search);
    List<BasicData> selectslist(@Param("selects") String selects);
}
