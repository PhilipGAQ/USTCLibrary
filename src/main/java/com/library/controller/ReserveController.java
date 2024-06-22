package com.library.controller;

import com.library.bean.ReaderCard;
import com.library.bean.Reserve;
import com.library.service.BookService;
import com.library.service.ReserveService;
import com.library.service.LendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ReserveController {
    @Autowired
    private BookService bookService;
    @Autowired
    private ReserveService reserveService;
    @Autowired
    private LendService lendService;

    // admin reserve list
    @RequestMapping("/reservelist.html")
    public ModelAndView reserveList(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("admin_reserve_list");
        modelAndView.addObject("list", reserveService.getAllReserve());
        return modelAndView;
    }

    // student reserve list
    @RequestMapping("/myreserve.html")
    public ModelAndView myReserve(HttpServletRequest request) {
        ReaderCard readerCard = (ReaderCard) request.getSession().getAttribute("readercard");
        ModelAndView modelAndView = new ModelAndView("reader_reserve_list");
        modelAndView.addObject("list", reserveService.getReserveByStudentId(readerCard.getReaderId()));
        return modelAndView;
    }

    // student reserves a book
    @RequestMapping("/reservebook.html")
    public String reserveBook(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        long bookId = Long.parseLong(request.getParameter("book_id"));
        ReaderCard readerCard = (ReaderCard) request.getSession().getAttribute("readercard");
        long studentId = readerCard.getReaderId();
        Reserve reserve = new Reserve();
        reserve.setBook_id(bookId);
        reserve.setStudent_id(studentId);
        reserveService.addReserve(reserve);
        redirectAttributes.addFlashAttribute("succ", "图书预定成功！");
        return "redirect:/reader_books.html";
    }


    @RequestMapping("/deletereserve.html")
    public String deleteReserve(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        int id = Integer.parseInt(request.getParameter("id"));
        if (reserveService.deleteReserve(id)) {
            redirectAttributes.addFlashAttribute("succ", "预定删除成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "预定删除失败，请联系管理员！");
        }
        return "redirect:/myreserve.html";
    }

    @RequestMapping("/admindeletereserve.html")
    public String adminDeleteReserve(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        int id = Integer.parseInt(request.getParameter("id"));
        if (reserveService.deleteReserve(id)) {
            redirectAttributes.addFlashAttribute("succ", "预定删除成功！");
        } else {
            redirectAttributes.addFlashAttribute("error", "预定删除失败");
        }
        return "redirect:/reservelist.html";
    }
}
