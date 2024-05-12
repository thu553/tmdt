package model;

import java.io.File;

public class User {
	int id;
	String userName;
	String password;
	String name;
	String phone;
	String gender;
	String message;
	int role;
	int shoppingCartId;
	String email;
	int status;
	public User(int id, String userName, String password, String name, String phone, String gender, String message,
			int role, int shoppingCartId, String email, int status) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.gender = gender;
		this.message = message;
		this.role = role;
		this.shoppingCartId = shoppingCartId;
		this.email = email;
		this.status = status;
	}
	
	public User(int id, String userName, String password, String name, String phone, String gender, String message,
			int role, String email, int status) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.gender = gender;
		this.message = message;
		this.role = role;
		this.email = email;
		this.status = status;
	}
	

	public User(String userName, String password, String name, String phone, String gender, String message,
			String email) {
		super();
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.gender = gender;
		this.message = message;
		this.email = email;
	}
	

	public User(String userName, String password, String name, String phone, String gender, String email) {
		super();
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
	}

	public User(int id, String userName, String password, String name, String phone, String gender, String message,
			int shoppingCartId, String email) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.gender = gender;
		this.message = message;
		this.shoppingCartId = shoppingCartId;
		this.email = email;
	}

	public User() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public int getShoppingCartId() {
		return shoppingCartId;
	}

	public void setShoppingCartId(int shoppingCartId) {
		this.shoppingCartId = shoppingCartId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", password=" + password + ", name=" + name + ", phone="
				+ phone + ", gender=" + gender + ", message=" + message + ", role=" + role + ", shoppingCartId="
				+ shoppingCartId + ", email=" + email + ", status=" + status + "]";
	}
	

	


}