-- 使用library数据库
USE library;

-- 开始事务
START TRANSACTION;

-- 添加外键约束

-- `book`表的`class_id`引用`class`表的`class_id`
ALTER TABLE `book`
    ADD CONSTRAINT `fk_book_class`
        FOREIGN KEY (`class_id`) REFERENCES `class`(`class_id`)
            ON UPDATE CASCADE
            ON DELETE SET NULL;

-- `borrow`表的`book_id`引用`book`表的`book_id`
-- `borrow`表的`reader_id`引用`reader`表的`reader_id`
ALTER TABLE `borrow`
    ADD CONSTRAINT `fk_borrow_book`
        FOREIGN KEY (`book_id`) REFERENCES `book`(`book_id`)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

ALTER TABLE `borrow`
    ADD CONSTRAINT `fk_borrow_reader`
        FOREIGN KEY (`reader_id`) REFERENCES `reader`(`reader_id`)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- `reservation`表的`book_id`引用`book`表的`book_id`
-- `reservation`表的`student_id`引用`reader`表的`reader_id`
ALTER TABLE `reservation`
    ADD CONSTRAINT `fk_reservation_book`
        FOREIGN KEY (`book_id`) REFERENCES `book`(`book_id`)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

ALTER TABLE `reservation`
    ADD CONSTRAINT `fk_reservation_student`
        FOREIGN KEY (`student_id`) REFERENCES `reader`(`reader_id`)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- `overdue`表的`student_id`引用`reader`表的`reader_id`
-- `overdue`表的`borrow_id`引用`borrow`表的`borrow_id`
ALTER TABLE `overdue`
    ADD CONSTRAINT `fk_overdue_student`
        FOREIGN KEY (`student_id`) REFERENCES `reader`(`reader_id`)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

ALTER TABLE `overdue`
    ADD CONSTRAINT `fk_overdue_borrow`
        FOREIGN KEY (`borrow_id`) REFERENCES `borrow`(`borrow_id`)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- 提交事务
COMMIT;
