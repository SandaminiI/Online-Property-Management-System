package application;

public class ApplicationDetails {
	
	private String name;
	private String nic;
	private String dob;
	private String email;
	private String address;
	private String mobile;
	private String paddress;
	private String dates;
	private String pmobile;
	private String company;
	private String job;
	private String sal;
	private String rname;
	private String rmobile;
	private String additional;
	
	
	public ApplicationDetails(String name, String nic,String dob, String email, String address, String mobile,
			String paddress, String dates, String pmobile, String company, String job, String sal, String rname,
			String rmobile, String additional) {
		
		this.name = name;
		this.nic = nic;
		this.dob = dob;
		this.email = email;
		this.address = address;
		this.mobile = mobile;
		this.paddress = paddress;
		this.dates = dates;
		this.pmobile = pmobile;
		this.company = company;
		this.job = job;
		this.sal = sal;
		this.rname = rname;
		this.rmobile = rmobile;
		this.additional = additional;
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
	public String getAddress() {
		return address;
	}
	public String getMobile() {
		return mobile;
	}
	public String getPaddress() {
		return paddress;
	}
	public String getDates() {
		return dates;
	}
	public String getPmobile() {
		return pmobile;
	}
	public String getCompany() {
		return company;
	}
	public String getJob() {
		return job;
	}
	public String getSal() {
		return sal;
	}
	public String getRname() {
		return rname;
	}
	public String getRmobile() {
		return rmobile;
	}
	public String getAdditional() {
		return additional;
	}
	
	
	
	

}
