using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MojaZgrada.Class
{
    public class User
    {
        private int building_num;
        public string stan;

        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Type { get; set; }
        public Int32 BuildingNumber { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public int NumberApt { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Country { get; set; }


        public User(int id, string name, string password, string email, string type)
        {
            Id = id;
            Name = name;
            Password = password;
            Email = email;
            Type = type;
        }

        public User(string name, string password, string email, string type)
        {
            Name = name;
            Password = password;
            Email = email;
            Type = type;
        }
        public User(string username, string password, string type, string email, Int32 building, string ime, string prezime,Int32 AptNum)
        {
            Name = username;
            Password = password;
            Type = type;
            Email = email;
            BuildingNumber = building;
            NumberApt = AptNum;
            Name = ime;
            Surname = prezime;
        }

        public User(string name, string password, string type, string email, int building_num, string ime, string prezime, string stan)
        {
            Name = name;
            Password = password;
            Type = type;
            Email = email;
            this.building_num = building_num;
            Name = ime;
            Surname = prezime;
            this.stan = stan;
        }
       
           public User(string username, string password, string type, string email, Int32 buildingNumber, string name, string surname, Int32 numberApt, string address, string City, string Country)
        {
            Name = name;
            Password = password;
            Type = type;
            Email = email;
            BuildingNumber = buildingNumber;
            Name = username;
            Surname = surname;
            numberApt = NumberApt;
        }
    }

}