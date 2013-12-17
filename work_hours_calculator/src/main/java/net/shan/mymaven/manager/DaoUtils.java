package net.shan.mymaven.manager;

import net.shan.mymaven.dao.AccountDao;

public enum DaoUtils {
    daoUtils;

    private AccountDao accountDao;
    public void setAccountDao(AccountDao accountDao) {
        this.accountDao = accountDao;
    }
    public AccountDao getAccountDao() {
        return accountDao;
    }
}
