package service.impl;

import bean.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    //gọi obj của bên Repository qua => dùng nguyên lý DI của SOLID
    private IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        try {
            List<Product> products = productRepository.findAll();
            if (products.size() == 0) {
                return null;
            }
            return products;
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    @Override
    public Product findById(Integer id) {
        return null;
    }

    @Override
    public boolean save(Product product) {
        if (checkProduct(product)) {
            productRepository.save(product);
            return true;
        } else {
            return false;
        }
    }


    public boolean checkProduct(Product product) {
        if (product.getProductId() < 0) {               //check thêm case xem thử id mới có trùng id cũ ko rồi mới save!
            return false;
        }
        if (!product.getProductName().matches("^[a-z A-z]+$")) {
            return false;
        }
        return true;
    }
}
