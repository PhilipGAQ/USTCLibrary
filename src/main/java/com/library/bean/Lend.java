package com.library.bean;

import java.io.Serializable;
import java.util.Date;

public class Lend implements Serializable {

    private long borrow_id;
    private long book_id;
    private long reader_id;
    private Date borrow_date;
    private Date due_date;
    private Date return_date;

    public long getReaderId() {
        return reader_id;
    }

    public void setReaderId(long reader_id) {
        this.reader_id = reader_id;
    }

    public long getBook_id() {
        return book_id;
    }

    public void setBook_id(long book_id) {
        this.book_id = book_id;
    }

    public void setBorrow_id(long borrow_id) {
        this.borrow_id = borrow_id;
    }

    public Date getBackDate() {
        return due_date;
    }

    public void setBackDate(Date back_date) {
        this.due_date = back_date;
    }

    public Date getLendDate() {
        return borrow_date;
    }

    public void setLendDate(Date lend_date) {
        this.borrow_date = lend_date;
    }

    public long getBorrow_id() {
        return borrow_id;
    }

    public Date getDueDate() {return due_date;}

    public void setDueDate(Date due_date) {this.due_date = due_date;}

    public Date getReturnDate() {return return_date;}

    public void setReturnDate(Date return_date) {this.return_date = return_date;}
}
