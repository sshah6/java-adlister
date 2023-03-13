package models;

import java.util.ArrayList;
import java.util.List;

public class FighterTest {
    public static void main(String[] args) {
        Fighter fighter1 = new Fighter();
        fighter1.setName("Ryu");
        fighter1.setHitPoints(17);
        fighter1.setHitPoints(15);
        fighter1.setMaxDamage(10);
        fighter1.setWeapon(new ArrayList<>(List.of("Sword", "Knife", "Nunchucks")));

        Fighter fighter2 = new Fighter("One Punch man", 15, 15);

        Fighter fighter3 = new Fighter("Sailor moon", 11, 9);

        ArrayList<Fighter> fighters = new ArrayList<>(List.of(fighter1, fighter2, fighter3));

        for(Fighter fighter: fighters){
            System.out.println(fighter.getName() + " has " + fighter.getHitPoints()+ " hit points and can do " + fighter.getMaxDamage() + " points of damage.");
            if(fighter.getWeapon() != null){
                System.out.println(fighter.getName() + "uses the following weapon: ");
                for(Object weapon: fighter.getWeapon()){
                    System.out.println(weapon);
                }
            }
        }
    }
}
