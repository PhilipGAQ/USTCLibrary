package com.library.bean;

import java.util.Date;
import java.io.Serializable;

public class OverDue implements Serializable {
    private long overdue_id;
    private long student_id;
    private long borrow_id;
    private Date due_date;
    private Date return_date;
    private int overdue_days;
    private int fine_amount;
    private String name;

    public String getName(){return name;}
    public void setName(String name){this.name = name;}

    public long getOverdue_id() {return overdue_id;}

    public long getStudent_id() {return student_id;}

    public long getBorrow_id() {return borrow_id;}

    public Date getDue_date() {return due_date;}

    public Date getReturn_date() {return return_date;}

    public int getOverdue_days() {return overdue_days;}

    public int getFine_amount() {return fine_amount;}

    public void setOverdue_id(long overdue_id) {this.overdue_id = overdue_id;}
    public void setStudent_id(long student_id) {this.student_id = student_id;}
    public void setBorrow_id(long borrow_id) {this.borrow_id = borrow_id;}
    public void setDue_date(Date due_date) {this.due_date = due_date;}
    public void setReturn_date(Date return_date) {this.return_date = return_date;}
    public void setOverdue_days(int overdue_days) {this.overdue_days = overdue_days;}
    public void setFine_amount(int fine_amount) {this.fine_amount = fine_amount;}


}
