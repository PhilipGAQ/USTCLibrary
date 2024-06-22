package com.library.controller;

import com.library.bean.Admin;
import com.library.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/allAdmins.html")
    public ModelAndView allAdmins() {
        List<Admin> admins = adminService.getAllAdmins();
        ModelAndView modelAndView = new ModelAndView("admin_all");
        modelAndView.addObject("admins", admins);
        return modelAndView;
    }

    @RequestMapping("admin_add.html")
    public ModelAndView adminInfoAdd() {
        return new ModelAndView("admin_admin_add");
    }

    @RequestMapping("admin_add_do.html")
    public String adminInfoAddDo(long admin_id, String name, String username, String password, RedirectAttributes redirectAttributes) {
        Admin admin = new Admin();
        admin.setAdminId(admin_id);
        admin.setName(name);
        admin.setUsername(username);
        admin.setPassword(password);
        long adminId = adminService.addAdmin(admin);
        if (adminId > 0) {
            redirectAttributes.addFlashAttribute("succ", "添加管理员信息成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "添加管理员信息失败！");
        }
        return "redirect:/allAdmins.html";
    }


    @RequestMapping("/updateAdmin.html")
    public String updateAdmin(@ModelAttribute Admin admin, RedirectAttributes redirectAttributes) {
        if (adminService.updateAdmin(admin)) {
            redirectAttributes.addFlashAttribute("succ", "Admin updated successfully");
        } else {
            redirectAttributes.addFlashAttribute("error", "Failed to update admin");
        }
        return "redirect:/allAdmins.html";
    }

    @RequestMapping("/deleteAdmin.html")
    public String deleteAdmin(@RequestParam("adminId") long adminId, RedirectAttributes redirectAttributes) {
        if (adminService.deleteAdmin(adminId)) {
            redirectAttributes.addFlashAttribute("succ", "Admin deleted successfully");
        } else {
            redirectAttributes.addFlashAttribute("error", "Failed to delete admin");
        }
        return "redirect:/allAdmins.html";
    }

    @RequestMapping("admin_edit.html")
    public ModelAndView adminInfoEdit(HttpServletRequest request) {
        long adminId = Long.parseLong(request.getParameter("adminId"));
        Admin admin = adminService.getAdminById(adminId);
        ModelAndView modelAndView = new ModelAndView("admin_admin_edit");
        modelAndView.addObject("admin", admin);
        return modelAndView;
    }

    @RequestMapping("admin_edit_do.html")
    public String adminInfoEditDo(long adminId, String name, String username, String password, RedirectAttributes redirectAttributes) {
        Admin admin = new Admin();
        admin.setAdminId(adminId);
        admin.setName(name);
        admin.setUsername(username);
        admin.setPassword(password);
        if (adminService.updateAdmin(admin)) {
            redirectAttributes.addFlashAttribute("succ", "管理员信息修改成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "管理员信息修改失败！");
        }
        return "redirect:/allAdmins.html";
    }
}
