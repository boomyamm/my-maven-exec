package net.shan.mymaven.dao.impl;

import net.shan.mymaven.dao.AccountDao;
import net.shan.mymaven.domain.AccountVO;
import org.mybatis.spring.support.SqlSessionDaoSupport;

public class AccountDaoImpl extends SqlSessionDaoSupport implements AccountDao {
    @Override
    public AccountVO getAccountAndCheck(AccountVO accountVO) {
        return getSqlSession().selectOne("getAccountAndCheck", accountVO);
    }
}
