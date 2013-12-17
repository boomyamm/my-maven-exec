package net.shan.mymaven.dao;

import net.shan.mymaven.domain.AccountVO;

public interface AccountDao {
    AccountVO getAccountAndCheck(AccountVO accountVO);
}
