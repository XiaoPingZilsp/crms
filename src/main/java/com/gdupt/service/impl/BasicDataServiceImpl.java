package com.gdupt.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.BasicData;
import com.gdupt.mapper.BasicDataMapper;
import com.gdupt.service.IBasicDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhy chg pxm lsp lpx xwy
 * @since 2018-11-22
 */
@Service
public class BasicDataServiceImpl extends ServiceImpl<BasicDataMapper, BasicData> implements IBasicDataService {
    @Autowired
    private BasicDataMapper basicDataMapper;
    @Override
    public List<BasicData> dataPage(IPage page, String search) {
        return basicDataMapper.dataPage(page,search);
    }

    @Override
    public List<BasicData> selectslist(String selects) {
        return basicDataMapper.selectslist(selects);
    }
}
