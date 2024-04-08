package com.poly.Repository;

import java.util.List;

import com.poly.Entity.Account;

public interface IAcountRepository {
	Account findAccountById(int accountId);
	Account findAccountByEmail(String email);
	Account findByEmailAndPassword(String email, String password);
    void addAccount(Account account);
    void updateAccount(Account account);
    void deleteAccount(int accountId);
    List<Account> findAllAccounts();

}
