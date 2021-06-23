package pl.coderslab.charity.serviceImpl;

import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.entity.Category;
import pl.coderslab.charity.repositories.CategoryRepository;
import pl.coderslab.charity.service.CategoryService;

import java.util.List;
import java.util.Optional;

@Service
@Primary
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    public Category findCategoryById(Long id){
        Optional<Category> categoryOptional = categoryRepository.findById(id);
        if(categoryOptional.isEmpty()){
            throw new IllegalStateException("Category do not exist");
        }
        return categoryOptional.get();
    }

    public List<Category> findAllCategories(){
        return categoryRepository.findAll();
    }

    public void createCategory(Category category){
        categoryRepository.save(category);
    }

    public void updateCategory(Category category){
        categoryRepository.save(category);
        //todo sprawdzenie istnienia w bazie przed aktualizacją
    }

    public void deleteCategory(Long categoryId){
        boolean exist = categoryRepository.existsById(categoryId);
        if (!exist){
            throw new IllegalStateException("Category do not exist");
        }
        categoryRepository.deleteById(categoryId);
    }


}
