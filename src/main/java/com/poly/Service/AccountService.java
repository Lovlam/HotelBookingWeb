package com.poly.Service;

import com.poly.Entity.Account;
import com.poly.Repository.AccountRepository;

public class AccountService {

	private AccountRepository accountRepository = new AccountRepository();
	
	public Account register(Account account) throws Exception {
		
		Account accountOfEmail = accountRepository.findAccountByEmail(account.getEmail());
		if(accountOfEmail == null) {
			accountRepository.addAccount(account);
			return account;
		}else {
			return null;
	        
		}
		
	}
	
	public Account login(String email, String password) throws Exception {
		Account account = accountRepository.findByEmailAndPassword(email, password);
		System.out.println(accountRepository.findByEmailAndPassword(email, password));
        if(account == null) {
            return null;
        }
        return account;
	}
	
	
}
