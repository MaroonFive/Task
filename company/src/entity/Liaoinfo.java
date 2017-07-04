package entity;

import java.io.Serializable;

public class Liaoinfo implements Serializable {
  public  Liaoinfo(String name,String nei)
  {
	  this.name=name;
	  this.nei=nei;
	  
	  
  }
  private String name;
  private String nei;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getNei() {
	return nei;
}
public void setNei(String nei) {
	this.nei = nei;
}
	
}
