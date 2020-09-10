import com.wang.pojo.Books;
import com.wang.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    @Test
    public void Test() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookService = context.getBean("BookServiceImpl", BookService.class);
        Books books = new Books();
        books.setBookCounts(200);
        books.setBookName("newBook");
        books.setDetail("这是一本新书!");
        bookService.addBook(books);
    }
}
