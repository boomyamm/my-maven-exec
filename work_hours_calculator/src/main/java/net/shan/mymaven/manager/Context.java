package net.shan.mymaven.manager;

import net.shan.mymaven.dao.AccountDao;
import org.apache.log4j.Logger;

import static net.shan.mymaven.manager.DaoUtils.daoUtils;

public class Context {
    private Context(){}
    private final Logger log = Logger.getLogger(Context.class);
    private AccountDao accountDao;
    public void setAccountDao(AccountDao accountDao) {
        this.accountDao = accountDao;
        log.info("========>setAccountDao");
    }

    public void init(){
        daoUtils.setAccountDao(accountDao);
        log.info("========>init");
    }
}
