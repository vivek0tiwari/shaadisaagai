using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    DALuser DAL = new DALuser();
    
	public User()
	{
		//
		// TODO: Add constructor logic here
		//
	}
  public   string _user_Id;

public string User_Id
{
  get { return _user_Id; }
  set { _user_Id = value; }
}
string _user_Name;
 public string User_Name
{
    get { return _user_Name; }
    set { _user_Name = value; }
}

 string _gender;

 public string Gender
 {
     get { return _gender; }
     set { _gender = value; }
 }
 string _city_Id;

 public string City_Id
 {
     get { return _city_Id; }
     set { _city_Id = value; }
 }
 string _meritial_Status;

 public string Submitted_By
 {
     get { return _meritial_Status; }
     set { _meritial_Status = value; }
 }
 Int64 _mobile;

 public Int64 Mobile
 {
     get { return _mobile; }
     set { _mobile = value; }
 }
 string _email;

 public string Email
 {
     get { return _email; }
     set { _email = value; }
 }

Int64 _anual_Incom;


string _blode_Group;

public string Blode_Group
{
    get { return _blode_Group; }
    set { _blode_Group = value; }
}
int _height;

public int Height
{
    get { return _height; }
    set { _height = value; }
}
string _body_Type_Code;

public string Body_Type_Code
{
    get { return _body_Type_Code; }
    set { _body_Type_Code = value; }
}
string _complexion_Id;

public string Complexion_Id
{
    get { return _complexion_Id; }
    set { _complexion_Id = value; }
}
string _about_Me;

public string About_Me
{
    get { return _about_Me; }
    set { _about_Me = value; }
}
string _about_My_Patner;

public string About_My_Patner
{
    get { return _about_My_Patner; }
    set { _about_My_Patner = value; }
}
string _member_name;

public string Member_name
{
    get { return _member_name; }
    set { _member_name = value; }
}

DateTime _dob;

public DateTime Dob
{
    get { return _dob; }
    set { _dob = value; }
}
string _password;

public string Password
{
    get { return _password; }
    set { _password = value; }
}

char _isVerified;

public char IsVerified
{
    get { return _isVerified; }
    set { _isVerified = value; }
}

public  int  RegisterUser_Step1()
{
    try
    {
        if (DAL.checkMobile(this))
        {
            return 3;
        }
        else if (DAL.checkMobile(this))
        {
            return 4;
        }
        else
        {
            return DAL.InsertUser_Step1(this, out _user_Id);
        }
    }
    catch 
    {
        throw;
    }
}
public bool Authentication()
{
    try
    {
        return DAL.CheckUser(this);
    }
    catch
    {
        throw;
    }
}

}