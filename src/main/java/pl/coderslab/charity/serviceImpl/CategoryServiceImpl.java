package pl.coderslab.charity.serviceImpl;

import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.entity.Category;
import pl.coderslab.charity.repositories.CategoryRepository;
import pl.coderslab.charity.service.CategoryService;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Primary
@AllArgsConstructor
@Transactional
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    @Override
    public Category findCategoryById(Long id){
        Optional<Category> categoryOptional = categoryRepository.findById(id);
        if(categoryOptional.isEmpty()){
            throw new IllegalStateException("Category do not exist");
        }
        return categoryOptional.get();
    }

    @Override
    public List<Category> findAllCategories(){
        return categoryRepository.findAll();
    }

    @Override
    public void createCategory(Category category){
        categoryRepository.save(category);
    }

    @Override
    public void updateCategory(Category categoryToUpdate){
        Category category = categoryRepository.findById(categoryToUpdate.getId()).orElseThrow(()-> new IllegalStateException("Category do not exist"));
        category.setName(categoryToUpdate.getName());
        categoryRepository.save(category);
    }

    @Override
    public void deleteCategory(Long categoryId){
        boolean exist = categoryRepository.existsById(categoryId);
        if (!exist){
            throw new IllegalStateException("Category do not exist");
        }
        categoryRepository.deleteById(categoryId);
    }


}
