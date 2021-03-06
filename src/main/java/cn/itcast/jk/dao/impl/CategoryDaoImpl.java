package cn.itcast.jk.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.itcast.jk.dao.CategoryDao;
import cn.itcast.jk.domain.Category;

/**
 * @Description:
 * @Author: nutony
 * @Company: http://java.itcast.cn
 * @CreateDate: 2014年10月9日
 */
@Repository
public class CategoryDaoImpl extends BaseDaoImpl<Category> implements
        CategoryDao {
    public CategoryDaoImpl() {
        // 设置命名空间
        super.setNs("cn.itcast.jk.mapper.CategoryMapper");
    }

    public void updateState(Map<?, ?> map) {
        super.getSqlSession().update(super.getNs() + ".updateState", map);
    }
}
