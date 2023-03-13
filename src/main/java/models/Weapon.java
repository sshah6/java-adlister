package models;

import java.io.Serializable;

public class Weapon implements Serializable {
    private String name;
    private String range;
    private int maxDamage;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRange() {
        return range;
    }

    public void setRange(String range) {
        this.range = range;
    }

    public int getMaxDamage() {
        return maxDamage;
    }

    public void setMaxDamage(int maxDamage) {
        this.maxDamage = maxDamage;
    }

    public Weapon(String name, String range, int maxDamage) {
        this.name = name;
        this.range = range;
        this.maxDamage = maxDamage;
    }
}
