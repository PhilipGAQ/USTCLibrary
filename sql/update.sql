update book set book.number=0 where book_id=9;
update borrow set borrow_date='2024-5-9' where borrow_id=8;
update borrow set due_date='2024-6-1' where borrow_id=8;
delete from reader where reader_id=7;
update reader set reader.profile_picture='img/images.jpg' where reader_id=1;