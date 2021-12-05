package com.cart.dto;

public class CartDTO {

	
		private int cartno;
		private String fk_userId;
		private String fk_productId;
		private int quantity;
		private int total;
		
		
		
		public CartDTO() {
			super();
		}



		public CartDTO(int cartno, String fk_userId, String fk_productId, int quantity, int total) {
			super();
			this.cartno = cartno;
			this.fk_userId = fk_userId;
			this.fk_productId = fk_productId;
			this.quantity = quantity;
			this.total = total;
		}



		public int getCartno() {
			return cartno;
		}



		public void setCartno(int cartno) {
			this.cartno = cartno;
		}



		public String getFk_userId() {
			return fk_userId;
		}



		public void setFk_userId(String fk_userId) {
			this.fk_userId = fk_userId;
		}



		public String getFk_productId() {
			return fk_productId;
		}



		public void setFk_productId(String fk_productId) {
			this.fk_productId = fk_productId;
		}



		public int getQuantity() {
			return quantity;
		}



		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}



		public int getTotal() {
			return total;
		}



		public void setTotal(int total) {
			this.total = total;
		}
		
		
		
		
}
