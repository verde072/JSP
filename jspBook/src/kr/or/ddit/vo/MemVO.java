package kr.or.ddit.vo;

import java.util.Arrays;

//자바빈 클래스
public class MemVO {
	//멤버변수
	private String id;
	private String passwd;
	private String name;
	private String phone;
	private String gender;
	private String[] hobby;
	private String comment;
	
	//기본생성자
	public MemVO() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
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

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}


	@Override
	public String toString() {
		return "MemVO [id=" + id + ", passwd=" + passwd + ", name=" + name + ", phone=" + phone + ", gender=" + gender
				+ ", hobby=" + Arrays.toString(hobby) + ", comment=" + comment + "]";
	}

	
	
	
	
	
	
}
