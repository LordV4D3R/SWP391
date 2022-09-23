/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package price;

/**
 *
 * @author dell
 */
public class PriceDTO {
    private int priceid;
    private double price;
    private int status;
    private int productId;
    private String dateChange;

    public PriceDTO() {
    }

    public PriceDTO(int priceid, double price, int status, int productId, String dateChange) {
        this.priceid = priceid;
        this.price = price;
        this.status = status;
        this.productId = productId;
        this.dateChange = dateChange;
    }

    public int getPriceid() {
        return priceid;
    }

    public void setPriceid(int priceid) {
        this.priceid = priceid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getDateChange() {
        return dateChange;
    }

    public void setDateChange(String dateChange) {
        this.dateChange = dateChange;
    }
    
    
}
