package model;

//In jsp-and-jstl-exercise branch, add the following...
//
//- Create a package in java folder called `model`
//- Create a Product class in the `model` package
//- Add properties for the name of the product and costInCents (int)
//- Add constructor and getters and setters
//
//Create a products.jsp file that defines at least three products.
//
//Display each product in it's own div that looks like this:
//
//<div>
//	<h3>NAME_OF_PRODUCT_HERE</h3>
//	<h3>$COST_IN_CENTS HERE</h3>
//</div>
public class Model {
    private String name;
    private int costInCents;

    public Model(String name, int costInCents) {
        this.name = name;
        this.costInCents = costInCents;
    }

    public String getName() {
        return name;
    }

    public int getCostInCents() {
        return costInCents;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCostInCents(int costInCents) {
        this.costInCents = costInCents;
    }
}
