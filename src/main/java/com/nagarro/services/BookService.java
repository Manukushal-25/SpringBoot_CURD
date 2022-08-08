package com.nagarro.services;

import com.nagarro.model.BookModel;
import com.nagarro.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {
    @Autowired
    private BookRepository bookRepository;

    public List<BookModel> getBookDetails() {
        List<BookModel> bookList = (List<BookModel>) bookRepository.findAll();
        return bookList;
    }

    public void insertBookDetail(BookModel book) {
        bookRepository.save(book);
    }

    public Optional<BookModel> getBookById(int id) {
        return bookRepository.findById(id);
    }

    public void deleteBookById(int id) {
        bookRepository.deleteById(id);
    }

    public void updateBook(BookModel book) {
        Optional<BookModel> obj = bookRepository.findById(book.getBookCode());
        if (obj.isPresent()) {
            BookModel result = obj.get();
            result.setBookName(book.getBookName());
            result.setBookAuthor(book.getBookAuthor());
            result.setDateTime(book.getDateTime());
            bookRepository.save(result);
        }

    }


}
