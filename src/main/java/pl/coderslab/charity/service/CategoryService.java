package pl.coderslab.charity.service;

import pl.coderslab.charity.entity.Category;

import java.util.List;

public interface CategoryService {

    public Category findCategoryById(Long id);

    public List<Category> findAllCategories();

    public void createCategory(Category category);

    public void updateCategory(Category categoryToUpdate);

    public void deleteCategory(Long categoryId);
}
