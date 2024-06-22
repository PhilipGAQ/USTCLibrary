package com.library.service;

import com.library.bean.Reserve;
import com.library.dao.BookDao;
import com.library.dao.ReserveDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.ArrayList;

@Service
public class ReserveService {
    @Autowired
    private ReserveDao reserveDao;
    private BookDao bookDao;
    /**
     * 添加预订记录
     * @param reserve 预订记录对象
     * @return 是否添加成功
     */
    public boolean addReserve(Reserve reserve) {
        reserveDao.addReserve(reserve);
        return true;
    }

    /**
     * 更新预订日期
     * @param reservationId 预订记录ID
     * @param reservationDate 预订日期
     * @return 是否更新成功
     */
    public boolean updateReservationDate(int reservationId, java.util.Date reservationDate) {
        reserveDao.updateReservationDate(reservationId, reservationDate);
        return true;
    }

    /**
     * 删除预订记录
     * @param reservationId 预订记录ID
     * @return 是否删除成功
     */
    public boolean deleteReserve(int reservationId) {
        reserveDao.deleteReserve(reservationId);
        return true;
    }

    /**
     * 获取所有预订记录
     * @return 预订记录列表
     */
    public ArrayList<Reserve> getAllReserve() {
        return reserveDao.getAllReserve();
    }

    /**
     * 根据学生ID查询预订记录
     * @param studentId 学生ID
     * @return 预订记录列表
     */
    public List<Reserve> getReserveByStudentId(long studentId) {
        List<Reserve> reserves = reserveDao.getReserveByStudentId(studentId);
        return reserves;
    }

    /**
     * 根据书籍ID查询预订记录
     * @param bookId 书籍ID
     * @return 预订记录列表
     */
    public ArrayList<Reserve> getReserveByBookId(long bookId) {
        return reserveDao.getReserveByBookId(bookId);
    }
}
