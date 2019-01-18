package com.gdupt.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.OrderHistory;
import org.apache.ibatis.annotations.Param;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-21
 */
public interface IOrderHistoryService extends IService<OrderHistory> {
    List<OrderHistory> dataPage(IPage page, @Param("id") Integer id);
}
