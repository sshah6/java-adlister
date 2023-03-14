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

        Quotes quote1 = new Quotes("Time solves everything", author1);
        Quotes quote2 = new Quotes("Better late than never.", author2);
        Quotes quote3 = new Quotes("Better call sall.", author3);

       ArrayList<Quotes> quotes = new ArrayList<>(List.of(quote1, quote2, quote3));
        for(Quotes quote: quotes){
            System.out.println(quote.getAuthor().getFirst_name() + " " + quote.getAuthor().getLast_name() + " Said: " + quote.getContent());
        }
    }
}
