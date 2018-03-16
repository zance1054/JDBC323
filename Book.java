/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc.ah;

/**
 *
 * @author Alec
 */
public class Book {
    private String groupName;
    private String bookTitle;
    private String publisherName;
    private String yearPublished;
    private int numberPages;
    
    public Book() {
        this.groupName = "";
        this.bookTitle = "";
        this.publisherName = "";
        this.yearPublished = "";
        this.numberPages = 0;
    }
    
    public Book(String groupName, String bookTitle, String publisherName,
            String yearPublished, int numberPages) {
        this.groupName = groupName;
        this.bookTitle = bookTitle;
        this.publisherName = publisherName;
        this.yearPublished = yearPublished;
        this.numberPages = numberPages;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getPublisherName() {
        return publisherName;
    }

    public void setPublisherName(String publisherName) {
        this.publisherName = publisherName;
    }

    public String getYearPublished() {
        return yearPublished;
    }

    public void setYearPublished(String yearPublished) {
        this.yearPublished = yearPublished;
    }

    public int getNumberPages() {
        return numberPages;
    }

    public void setNumberPages(int numberPages) {
        this.numberPages = numberPages;
    }
    
    
}
