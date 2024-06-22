package com.library.service;

import com.library.bean.OverDue;
import com.library.dao.OverDueDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.ArrayList;

@Service
public class OverDueService {
    @Autowired
    private OverDueDao overDueDao;

    /**
     * 添加逾期记录
     * @param overDue 逾期记录对象
     * @return 是否添加成功
     */
    public boolean addOverDue(OverDue overDue) {
        overDueDao.addOverDue(overDue);
        return true;
    }

    /**
     * 更新返回日期
     * @param overdueId 逾期记录ID
     * @param returnDate 返回日期
     * @return 是否更新成功
     */
    public boolean updateReturnDate(int overdueId, java.util.Date returnDate) {
        overDueDao.updateReturnDate(overdueId, returnDate);
        return true;
    }

    /**
     * 更新逾期详情
     * @param overdueId 逾期记录ID
     * @param overdueDays 逾期天数
     * @param fineAmount 罚款金额
     * @return 是否更新成功
     */
    public boolean updateOverdueDetails(int overdueId, int overdueDays, int fineAmount) {
        overDueDao.updateOverdueDetails(overdueId, overdueDays, fineAmount);
        return true;
    }

    /**
     * 删除逾期记录
     * @param overdueId 逾期记录ID
     * @return 是否删除成功
     */
    public boolean deleteOverDue(long overdueId) {
        overDueDao.deleteOverDue(overdueId);
        return true;
    }

    /**
     * 获取所有逾期记录
     * @return 逾期记录列表
     */
    public ArrayList<OverDue> getAllOverDue() {
        return overDueDao.getAllOverDue();
    }

    /**
     * 根据学生ID查询逾期记录
     * @param studentId 学生ID
     * @return 逾期记录列表
     */
    public ArrayList<OverDue> getOverDueByStudentId(long studentId) {
        return overDueDao.getOverDueByStudentId(studentId);
    }

    /**
     * 根据借书记录ID查询逾期记录
     * @param borrowId 借书记录ID
     * @return 逾期记录列表
     */
    public ArrayList<OverDue> getOverDueByBorrowId(long borrowId) {
        return overDueDao.getOverDueByBorrowId(borrowId);
    }
}
