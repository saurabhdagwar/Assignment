public class contact {

private String fname;
private String lname;
private String add;
private String city;
private String state;
private long phonenumber;
private long zip;

public contact(String fname,String lname, String add, String city String state, long phonenumber,long zip)
{
	this.fname=fname;
	this.lname=lname;
 	this.add=add;
	this.city=city;
	this.state=state;
	this.phonenumber=phonenumber;
	this.zip=zip;
}
public String getfname()
{
	return fname;
}
public String getlname()
{
	return lname;
}
public String getAdd()
{
	return add;
}
public String getCity()
{
	return city;
}
public String getState()
{
	return state;
}
public long getNumber()
{
	return phonenumber;
}
public long getzip()
{
	return zip;
}

public void printcontact() 
{
	 System.out.println("Name: "+fname+ " " +lname+ ", Address: " +add+ ", City: " +city+ ",State: "+state+ ",Phone: "+phonenumber+ ",Pin Code: "+zip " | " );
}

}

}
