package net.shan.mymaven.manager;

import net.shan.mymaven.domain.AccountVO;

import static net.shan.mymaven.manager.DaoUtils.daoUtils;

public enum Account {
    account;

    public AccountVO check(String username, String password){
        AccountVO tmp = new AccountVO();
        tmp.setUsername(username);
        tmp.setPassword(password);
        return daoUtils.getAccountDao().getAccountAndCheck(tmp);
    }
}
