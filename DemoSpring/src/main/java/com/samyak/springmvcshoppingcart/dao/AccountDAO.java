package com.samyak.springmvcshoppingcart.dao;

import com.samyak.springmvcshoppingcart.entity.Account;

public interface AccountDAO {

	public Account findAccount(String userName);

}
