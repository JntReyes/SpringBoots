package boots.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity (name="cinemas")
public class Cinema implements Serializable{

	@Id @GeneratedValue (strategy=GenerationType.IDENTITY)
	private int id;
	@Column (length=50)
	private String name;
	@Column (length=50)
	private String city;
	@Column (length=50)
	private String address;
	@Column (length=50)
	private String room;
	@Column (length=50)
	private String manager;
	private boolean vip;
	
	
	
	
	
	public Cinema(String name, String city, String address, String room, String manager, boolean vip) {
		super();
		this.name = name;
		this.city = city;
		this.address = address;
		this.room = room;
		this.manager = manager;
		this.vip = vip;
	}
	
	public Cinema (){}
	
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public boolean isVip() {
		return vip;
	}
	public void setVip(boolean vip) {
		this.vip = vip;
	}

	@Override
	public String toString() {
		return "Cinema [id=" + id + ", name=" + name + ", city=" + city + ", address=" + address + ", room=" + room
				+ ", manager=" + manager + ", vip=" + vip + "]";
	}
	
	
	
	
	

	
}