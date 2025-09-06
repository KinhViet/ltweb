package home.service.impl;

import java.util.List;
import home.dao.CategoryDao;
import home.dao.impl.CategoryDaoImpl;
import home.Models.Category;
import home.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {
    CategoryDao categoryDao = new CategoryDaoImpl();

    @Override
    public void insert(Category category) {
        categoryDao.insert(category);
    }

    @Override
    public void edit(Category category) {
        Category oldCategory = categoryDao.get(category.getId());
        oldCategory.setName(category.getName());
        if (category.getIcon() != null) {
            oldCategory.setIcon(category.getIcon());
        }
        categoryDao.edit(oldCategory);
    }

    @Override
    public void delete(int id) {
        categoryDao.delete(id);
    }

    @Override
    public Category get(int id) {
        return categoryDao.get(id);
    }

    @Override
    public Category get(String name) {
        return categoryDao.get(name);
    }

    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }

    @Override
    public List<Category> search(String keyword) {
        return categoryDao.search(keyword);
    }
}

