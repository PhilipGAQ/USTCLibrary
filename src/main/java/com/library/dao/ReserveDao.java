package com.library.dao;

import com.library.bean.Reserve;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Repository
public class ReserveDao {
    private static final String NAMESPACE = "com.library.dao.ReserveDao.";

    @Resource
    private SqlSessionTemplate sqlSessionTemplate;

    public void addReserve(Reserve reserve) {
        sqlSessionTemplate.insert(NAMESPACE + "addReserve", reserve);
    }

    public void updateReservationDate(int reservationId, java.util.Date reservationDate) {
        sqlSessionTemplate.update(NAMESPACE + "updateReservationDate", new HashMap<String, Object>() {{
            put("reservationId", reservationId);
            put("reservationDate", reservationDate);
        }});
    }

    public void deleteReserve(int reservationId) {
        sqlSessionTemplate.delete(NAMESPACE + "deleteReserve", reservationId);
    }

    public ArrayList<Reserve> getAllReserve() {
        List<Reserve> result = sqlSessionTemplate.selectList(NAMESPACE + "getAllReserve");
        return (ArrayList<Reserve>) result;
    }

    public ArrayList<Reserve> getReserveByStudentId(long studentId) {
        List<Reserve> result = sqlSessionTemplate.selectList(NAMESPACE + "getReserveByStudentId", studentId);
        return (ArrayList<Reserve>) result;
    }

    public ArrayList<Reserve> getReserveByBookId(long bookId) {
        List<Reserve> result = sqlSessionTemplate.selectList(NAMESPACE + "getReserveByBookId", bookId);
        return (ArrayList<Reserve>) result;
    }
}
