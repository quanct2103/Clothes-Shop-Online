/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class NhanXet {
	  private int accountID;
	  private int productID;
	  private String contentReview;
	  private Date dateReview;
          private int maReview;

    public NhanXet(int accountID, int productID, String contentReview, Date dateReview, int maReview) {
        this.accountID = accountID;
        this.productID = productID;
        this.contentReview = contentReview;
        this.dateReview = dateReview;
        this.maReview = maReview;
    }
	
	public NhanXet() {
		
	}
	@Override
	public String toString() {
		return "Review [accountID=" + accountID + ", productID=" + productID + ", contentReview=" + contentReview
				+ ", dateReview=" + dateReview + ", maReview=" + maReview + "]";
	}
	public int getAccountID() {
		return accountID;
	}
	public void setAccountID(int accountID) {
		this.accountID = accountID;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getContentReview() {
		return contentReview;
	}
	public void setContentReview(String contentReview) {
		this.contentReview = contentReview;
	}
	public Date getDateReview() {
		return dateReview;
	}
	public void setDateReview(Date dateReview) {
		this.dateReview = dateReview;
	}

    public int getMaReview() {
        return maReview;
    }

    public void setMaReview(int maReview) {
        this.maReview = maReview;
    }
	
	
}
