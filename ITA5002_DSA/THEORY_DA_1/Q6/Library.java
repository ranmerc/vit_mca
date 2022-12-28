import java.util.HashMap;

class Library {
    private HashMap<String, String> booksMap;

    public Library() {
        booksMap = new HashMap<>();
    }

    public void insertBook(Book book) {
        booksMap.put(book.isbn, book);
    }

    public void getBook(String isbn) {
        booksMap.get(isbn);
    }
}
