package repository;

import model.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();
    void addNewProduct(Product product);
    void updateProductInfo(Product product);
    void deleteProduct(Product product);
    void displayDetail(Product product);
    Product findByName(String name);
}
