package models;

import java.util.ArrayList;
import java.util.List;

public class fighterFactory {
    public ArrayList<Fighter> generateFighters(){
        Fighter fighter1 = new Fighter("Ryu", 17, 10);
//        fighter1.setName("Ryu");
//        fighter1.setHitPoints(17);
//        fighter1.setHitPoints(15);
//        fighter1.setMaxDamage(10);

        Fighter fighter2 = new Fighter("One Punch man", 15, 15, new ArrayList<>(List.of("Sword", "Knife", "Nunchucks")));

        Fighter fighter3 = new Fighter("Sailor moon", 11, 9);

        ArrayList<Fighter> fighters = new ArrayList<>(List.of(fighter1, fighter2, fighter3));

        return fighters;
    }
}
