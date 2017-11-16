package com.samyak.springmvcshoppingcart.dao;

import java.util.List;

import com.samyak.springmvcshoppingcart.model.CartInfo;
import com.samyak.springmvcshoppingcart.model.OrderDetailInfo;
import com.samyak.springmvcshoppingcart.model.OrderInfo;
import com.samyak.springmvcshoppingcart.model.PaginationResult;

public interface OrderDAO {

	public void saveOrder(CartInfo cartInfo);

	public PaginationResult<OrderInfo> listOrderInfo(int page, int maxResult, int maxNavigationPage);

	public OrderInfo getOrderInfo(String orderId);

	public List<OrderDetailInfo> listOrderDetailInfos(String orderId);

}
