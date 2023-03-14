package models;

import java.io.Serializable;

public class Quotes implements Serializable {
    private int id;
    private String content;
    private Authors author;

    public Quotes(String content, Authors author) {
        this.content = content;
        this.author = author;
    }

    public Quotes() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Authors getAuthor() {
        return author;
    }

    public void setAuthor(Authors author) {
        this.author = author;
    }
}



