package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.gdupt.entity.RecordInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface RecordInfoMapper extends BaseMapper<RecordInfo> {
    List<RecordInfo> dataPage(IPage page, @Param("id") Integer id);
    boolean saveRecord(@Param("recordInfo") RecordInfo recordInfo);

}
