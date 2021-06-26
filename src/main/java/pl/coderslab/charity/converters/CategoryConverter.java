package pl.coderslab.charity.converters;

import org.springframework.beans.factory.annotation.Autowired;
import pl.coderslab.charity.entity.Category;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.charity.repositories.CategoryRepository;

public class CategoryConverter implements Converter<String, Category> {

    @Autowired
    CategoryRepository categoryRepository;

    @Override
    public Category convert(String s) {
        return categoryRepository.getOne(Long.parseLong(s));
    }
}
