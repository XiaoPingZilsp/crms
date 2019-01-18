package com.gdupt.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.Menu;
import com.gdupt.mapper.MenuMapper;
import com.gdupt.service.IMenuService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @since 2018-11-22
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

}
