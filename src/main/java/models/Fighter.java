package models;

import java.io.Serializable;
import java.util.ArrayList;

public class Fighter implements Serializable {
    private int id;
    private String name;
    private int maxDamage;
    private int hitPoints;
    private ArrayList<Weapon> weapons;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getMaxDamage() {
        return maxDamage;
    }

    public int getHitPoints() {
        return hitPoints;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setMaxDamage(int maxDamage) {
        this.maxDamage = maxDamage;
    }

    public void setHitPoints(int hitPoints) {
        this.hitPoints = hitPoints;
    }

    public ArrayList getWeapon() {
        return weapons;
    }

    public void setWeapon(ArrayList weapon) {
        this.weapons = weapon;
    }

    public Fighter(){

    }

    public Fighter(String name, int maxDamage, int hitPoints) {
        this.name = name;
        this.maxDamage = maxDamage;
        this.hitPoints = hitPoints;
    }

    public Fighter(String name, int maxDamage, int hitPoints, ArrayList weapon) {
        this.name = name;
        this.maxDamage = maxDamage;
        this.hitPoints = hitPoints;
        this.weapons = weapon;
    }
}
