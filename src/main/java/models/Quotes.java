package models;

import java.io.Serializable;

public class Quotes implements Serializable {
    private int id;
    private String content;
    private String author;

    public Quotes(String content, String author) {
        this.content = content;
        this.author = author;
    }
    public Quotes(){

    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
