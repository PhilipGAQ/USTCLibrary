package com.library.controller;

import com.library.bean.ReaderCard;
import com.library.service.BookService;
import com.library.service.LendService;
import com.library.service.OverDueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class OverDueController {
    @Autowired
    private BookService bookService;
    @Autowired
    private LendService lendService;
    @Autowired
    private OverDueService overDueService;

    /*
    * show admin overdue
    * show reader overdue
    * student pay fine and delete overdue record
    * */

    //admin overdue list
    @RequestMapping("/overduelist.html")
    public ModelAndView overdueList(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("admin_overdue_list");
        modelAndView.addObject("list",overDueService.getAllOverDue());
        return modelAndView;
    }

    //student overdue list
    @RequestMapping("/myoverdue.html")
    public ModelAndView myOverdue(HttpServletRequest request) {
        ReaderCard readerCard = (ReaderCard) request.getSession().getAttribute("readercard");
        ModelAndView modelAndView = new ModelAndView("reader_overdue_list");
        modelAndView.addObject("list",overDueService.getOverDueByStudentId(readerCard.getReaderId()));
        return modelAndView;
    }

    //student pays fine
    @RequestMapping("deleteoverdue.html")
    public String deleteOverdue(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long id = Long.parseLong(request.getParameter("id"));
        if (overDueService.deleteOverDue(id)){
            redirectAttributes.addFlashAttribute("succ","罚款交付成功！");
        }
        else{
            redirectAttributes.addFlashAttribute("error","罚款交付失败，请联系管理员！");
        }
        return "redirect:/myoverdue.html";
    }


}



