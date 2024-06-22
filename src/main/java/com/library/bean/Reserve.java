package com.library.bean;

import java.io.Serializable;
import java.util.Date;

public class Reserve implements Serializable{

    private int reservation_id;
    private long student_id;
    private long book_id;
    private Date reservation_date;
    private String book_name=null;

    public String getBook_name() {return book_name;}
    public void setBook_name(String book_name) {this.book_name = book_name;}

    public int getReservation_id() {
        return reservation_id;
    }

    public void setReservation_id(int reservation_id) {
        this.reservation_id = reservation_id;
    }

    public long getStudent_id() {
        return student_id;
    }

    public void setStudent_id(long student_id) {
        this.student_id = student_id;
    }

    public long getBook_id() {
        return book_id;
    }

    public void setBook_id(long book_id) {
        this.book_id = book_id;
    }

    public Date getReservation_date() {
        return reservation_date;
    }

    public void setReservation_date(Date reservation_date) {
        this.reservation_date = reservation_date;
    }
}
