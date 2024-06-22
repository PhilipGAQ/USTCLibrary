package com.library.dao;

import com.library.bean.Admin;
import com.library.bean.ReaderInfo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class AdminDao {

    private final static String NAMESPACE = "com.library.dao.AdminDao.";
    @Resource
    private SqlSessionTemplate sqlSessionTemplate;

    public int getMatchCount(final long admin_id, final String password) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("admin_id", admin_id);
        paramMap.put("password", password);
        return sqlSessionTemplate.selectOne(NAMESPACE + "getMatchCount", paramMap);
    }

    public int resetPassword(final long admin_id, final String password) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("admin_id", admin_id);
        paramMap.put("password", password);
        return sqlSessionTemplate.update(NAMESPACE + "resetPassword", paramMap);
    }

    public String getPassword(final long admin_id) {
        return sqlSessionTemplate.selectOne(NAMESPACE + "getPassword", admin_id);
    }

    public String getUsername(final long admin_id) {
        return sqlSessionTemplate.selectOne(NAMESPACE + "getUsername", admin_id);
    }

    public final long addAdmin(final Admin admin) {
        if (sqlSessionTemplate.insert(NAMESPACE + "addAdmin", admin) > 0) {
            return 1;
        } else {
            return -1;
        }
    }

    public int updateAdmin(final Admin admin) {
        return sqlSessionTemplate.update(NAMESPACE + "updateAdmin", admin);
    }

    public int deleteAdmin(final long adminId) {
        return sqlSessionTemplate.delete(NAMESPACE + "deleteAdmin", adminId);
    }

    public Admin getAdminById(final long adminId) {
        return sqlSessionTemplate.selectOne(NAMESPACE + "getAdminById", adminId);
    }

    public List<Admin> getAllAdmins() {
        return sqlSessionTemplate.selectList(NAMESPACE + "getAllAdmins");
    }



}
