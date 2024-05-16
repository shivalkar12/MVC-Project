package aepl.dto;

import java.io.IOException;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class UserDTO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private long mobile;
	private LocalDate dob;
	private String location;
	@Lob
	private byte[] idenficationDoc;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public LocalDate getDob() {
		return dob;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setIdenficationDoc(MultipartFile file) {
		System.out.println(file);
		try {
			byte[] pic = new byte[file.getInputStream().available()];
			file.getInputStream().read(pic);
			this.idenficationDoc = pic;
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public void setDob(String dob) {
		this.dob = LocalDate.parse(dob);
	}
}
