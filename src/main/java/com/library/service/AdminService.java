package com.library.service;

import com.library.bean.Admin;
import com.library.dao.AdminDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AdminService {

    @Autowired
    private AdminDao adminDao;

    public boolean verifyAdmin(long adminId, String password) {
        int count = adminDao.getMatchCount(adminId, password);
        return count > 0;
    }

    @Transactional
    public boolean resetAdminPassword(long adminId, String newPassword) {
        int result = adminDao.resetPassword(adminId, newPassword);
        return result > 0;
    }

    public String getAdminPassword(long adminId) {
        return adminDao.getPassword(adminId);
    }

    public String getAdminUsername(long adminId) {
        return adminDao.getUsername(adminId);
    }

    @Transactional
    public long addAdmin(Admin admin) {
        return adminDao.addAdmin(admin);
    }

    @Transactional
    public boolean updateAdmin(Admin admin) {
        int result = adminDao.updateAdmin(admin);
        return result > 0;
    }

    @Transactional
    public boolean deleteAdmin(long adminId) {
        int result = adminDao.deleteAdmin(adminId);
        return result > 0;
    }

    public Admin getAdminById(long adminId) {
        return adminDao.getAdminById(adminId);
    }

    public List<Admin> getAllAdmins() {
        return adminDao.getAllAdmins();
    }
}
