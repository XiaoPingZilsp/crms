package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.OrderHistory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface OrderHistoryMapper extends BaseMapper<OrderHistory> {
    List<OrderHistory> dataPage(IPage page, @Param("id") Integer id);

}
