package propertyowner;

public class PropertyOwner {
	private int id;
	private String name;
	private String nic;
	private String dob;
	private String email;
	private String phone;
	private String gender;
	private String address;
	private String username;
	private String password;
	
	public PropertyOwner(int id, String name, String nic, String dob, String email, String phone, String gender,
			String address, String username, String password) {
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.dob = dob;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.address = address;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}

	public String getDob() {
		return dob;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getGender() {
		return gender;
	}

	public String getAddress() {
		return address;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}	

}
