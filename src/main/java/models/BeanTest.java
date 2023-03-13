package models;

import java.util.ArrayList;
import java.util.List;

public class BeanTest {
    public static void main(String[] args) {

        Album album1 = new Album("The best", "Michael Jackson", 1993, 3.5F, "wow");
        Album album2 = new Album("Bond", "the cash", 2011, (float) 3.2, "x" );

        ArrayList<Album> albums = new ArrayList<>(List.of(album1, album2));
        for(Album album:albums ){
            System.out.println(album.getName());
        }



        Authors author1 = new Authors("Alex", "Wasa");
        Authors author2 = new Authors("Alan", "Cono");
        Authors author3 = new Authors("Wali", "Bobo");

        ArrayList<Authors> authors = new ArrayList<>(List.of(author1, author2, author3));
        for(Authors author: authors){
            System.out.println(author.getFirst_name());
            System.out.println(author.getLast_name());
        }


        Quotes quote1 = new Quotes("Time solves everything", "The first author");
        Quotes quote2 = new Quotes("Better late than never.", "The second author");

       ArrayList<Quotes> quotes = new ArrayList<>(List.of(quote1, quote2));
        for(Quotes quote: quotes){
            System.out.println(quote.getAuthor());
            System.out.println(quote.getContent());
        }

    }
}
