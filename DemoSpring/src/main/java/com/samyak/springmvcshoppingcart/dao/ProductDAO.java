package com.samyak.springmvcshoppingcart.dao;

import com.samyak.springmvcshoppingcart.entity.Product;
import com.samyak.springmvcshoppingcart.model.PaginationResult;
import com.samyak.springmvcshoppingcart.model.ProductInfo;

public interface ProductDAO {

	public Product findProduct(String code);

	public ProductInfo findProductInfo(String code);

	public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage);

	public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage, String likeName);

	public void save(ProductInfo productInfo);

}