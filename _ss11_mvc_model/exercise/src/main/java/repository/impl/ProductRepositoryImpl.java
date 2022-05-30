package repository.impl;

import model.Product;
import repository.ProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements ProductRepository {
    private static Map<String, Product> productMap;
    static {
        productMap = new HashMap<>();
        productMap.put("Xiaomi",new Product(5, "Xiaomi", 1400, "Xiaomi Ultra", "Xiaomi China"));
        productMap.put("Oppo",new Product(4, "Oppo", 800, "Oppo Reno", "Oppo China"));
        productMap.put("Samsung",new Product(3, "Samsung", 1000, "Samsung Note 10", "Samsung Thai Nguyen"));
        productMap.put("Iphone",new Product(2, "Iphone", 2000, "Iphone XS Max", "Apple China"));
        productMap.put("Nokia", new Product(1, "Nokia", 1000, "Nokia E6", "Nokia Manu"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void addNewProduct(Product product) {
        productMap.put(product.getName(), product);
    }

    @Override
    public void updateProductInfo(Product product) {
        productMap.put(product.getName(), product);
    }

    @Override
    public void deleteProduct(Product product) {
        productMap.remove(product.getName());
    }

    @Override
    public void displayDetail(Product product) {

    }

    @Override
    public Product findByName(String name) {
        return productMap.get(name);
    }
}
