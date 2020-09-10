package com.wang.service;

import com.wang.dao.BookMapping;
import com.wang.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService{

    //service层 调 dao层: 组合dao
    private BookMapping bookMapping;

    //添加setter, Spring可以直接注入到mapper
    public void setBookMapping(BookMapping bookMapping) {
        this.bookMapping = bookMapping;
    }

    @Override
    public int addBook(Books books) {
        return bookMapping.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapping.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapping.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapping.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapping.queryAllBook();
    }

    @Override
    public Books queryBookByName(String bookName) {
        return bookMapping.queryBookByName(bookName);
    }
}
