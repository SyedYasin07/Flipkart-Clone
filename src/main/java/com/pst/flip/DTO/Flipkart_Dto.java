package com.pst.flip.DTO;
public class Flipkart_Dto {
    @Override
	public String toString() {
		return "Flipkart_Dto [id=" + id + ", name=" + name + ", price=" + price + ", image=" + image + ", category="
				+ category + "]";
	}
	private int id;
    private String name;
    private double price;
    private String image;
    private String category;

    // Getters & Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public String getImage() { return image; }
    public void setImage(String image) { this.image = image; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
}
