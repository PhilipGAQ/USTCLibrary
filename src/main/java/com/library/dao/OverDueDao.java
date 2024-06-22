package com.library.dao;

import com.library.bean.OverDue;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.List;

@Repository
public class OverDueDao {
    private static final String NAMESPACE = "com.library.dao.OverDueDao.";

    @Resource
    private SqlSessionTemplate sqlSessionTemplate;

    public void addOverDue(OverDue overDue) {
        sqlSessionTemplate.insert(NAMESPACE + "addOverDue", overDue);
    }

    public void updateReturnDate(int overdue_id, java.util.Date return_date) {
        sqlSessionTemplate.update(NAMESPACE + "updateReturnDate", new java.util.HashMap<String, Object>() {{
            put("overdue_id", overdue_id);
            put("return_date", return_date);
        }});
    }

    public void updateOverdueDetails(int overdue_id, int overdue_days, int fine_amount) {
        sqlSessionTemplate.update(NAMESPACE + "updateOverdueDetails", new java.util.HashMap<String, Object>() {{
            put("overdue_id", overdue_id);
            put("overdue_days", overdue_days);
            put("fine_amount", fine_amount);
        }});
    }

    public void deleteOverDue(long overdue_id) {
        sqlSessionTemplate.delete(NAMESPACE + "deleteOverDue", overdue_id);
    }

    public ArrayList<OverDue> getAllOverDue() {
        List<OverDue> result=sqlSessionTemplate.selectList(NAMESPACE + "getAllOverDue");
        return (ArrayList<OverDue>) result;
    }

    public ArrayList<OverDue> getOverDueByStudentId(long student_id) {
        List<OverDue> result=sqlSessionTemplate.selectList(NAMESPACE + "getOverDueByStudentId", student_id);
        return (ArrayList<OverDue>) result;
    }

    public ArrayList<OverDue> getOverDueByBorrowId(long borrow_id) {
        List<OverDue> result=sqlSessionTemplate.selectList(NAMESPACE + "getOverDueByBorrowId", borrow_id);
        return (ArrayList<OverDue>) result;
    }

}
