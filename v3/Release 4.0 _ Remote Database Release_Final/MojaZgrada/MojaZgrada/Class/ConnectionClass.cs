using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace MojaZgrada.Class
{
    public class ConnectionClass
    {
        private static SqlConnection conn;
        private static SqlCommand command;

        static ConnectionClass()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["MojaZgradaConnection"].ToString();
            conn = new SqlConnection(connectionString);
            command = new SqlCommand("", conn);
        }

        // OVDE E ZA KORISNICI
        public static User LoginUser(string name, string password)
        {
            //Check if user exists string.Format("SELECT * FROM coffee WHERE type LIKE '{0}'", coffeeType);
            string query = string.Format("SELECT COUNT(*) FROM users WHERE username = '{0}'", name);
            command.CommandText = query;

            try
            {
                conn.Open();
                int amountOfUsers = (int)command.ExecuteScalar();

                if (amountOfUsers == 1)
                {
                    //User exists, check if the passwords match
                    query = string.Format("SELECT password FROM users WHERE username = '{0}'", name);
                    command.CommandText = query;
                    string dbPassword = command.ExecuteScalar().ToString();

                    if (dbPassword == password)
                    {
                        //Passwords match. Login and password data are known to us.
                        //Retrieve further user data from the database
                        query = string.Format("SELECT type, email, buildingNumber, name, surname ,numberApt FROM users WHERE username = '{0}'", name);
                        command.CommandText = query;

                        SqlDataReader reader = command.ExecuteReader();
                        User user = null;

                        while (reader.Read())
                        {
                        
                            string type = reader.GetString(0);
                            string email = reader.GetString(1);
                            Int32 building_num = 0;
                            if (!reader.IsDBNull(2))
                            {
                                building_num = reader.GetInt32(2);

                            }
                            Int32 AptNum = 0;
                            if (!reader.IsDBNull(5))
                            {
                                AptNum = reader.GetInt32(5);

                            }

                            string ime = reader.GetString(3);
                            string prezime = reader.GetString(4);
                            string stan = null;

                            user = new User(name, password, type, email, building_num, ime, prezime, AptNum);
                        }
                        return user;
                    }
                    else
                    {
                        //Passwords do not match
                        return null;
                    }
                }
                else
                {
                    //User does not exist
                    return null;
                }
            }
            finally
            {

                conn.Close();
            }
        }

      

        public static string vnesiKorinik(string username, string password, string email, string type, Int32 buildingNumber, string name, string surname, Int32 numberApt,string address,string City,string country)
        {
            //Check if user exists                              MojaZgrada.dbo.users
            string query = string.Format("SELECT COUNT(*) FROM users WHERE username = '{0}'", username);
            command.CommandText = query;

            try
            {
                conn.Open();
                int amountOfUsers = (int)command.ExecuteScalar();

                if (amountOfUsers < 1)
                {
                    //User does not exist, create a new user                                                                                            string username, string password, string email, string type, Int32 buildingNumber, string name, string surname, Int32 numberApt,string address,string City,string Country)
                    query = string.Format("INSERT INTO users VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}','{7}','{8}','{9}','{10}' )", username,  password, email, type, buildingNumber, name, surname, numberApt,address,City,country); 
                    command.CommandText = query;
                    command.ExecuteNonQuery();
                    //Send e-mail
                    MailService mailService = new MailService(email);
                    mailService.setSubject("Моја Зграда" + "Успешно креирана корисничка сметка:" + buildingNumber);
                    string bodyText = "Успешно креирана корисничка сметка! \n Број на зграда: "+ buildingNumber + "Адреса: " +address +"\n Информации за вашата сметка се следни: \n Име и презиме: "+ name + " " +surname + "\n Корисничко име: " + username + "\n Вашата лозинка: " + password + "\n За повеќе информации обратете се до вашиот Менаџер на стамбен објект. "  ;

                    mailService.setBodyText(bodyText);
                    mailService.sendMail();

                    return "Успешно внесен корисник";
                }
                else
                {
                    //User exists
                  
                    return "Корисник со ова корисничко име веќе постои";
                }
            }
            catch(Exception e)
            {
                return "Неуспешен внес." ;
            }
            finally
            {
                conn.Close();
            }
        }

        // Make Income Payment
        public static string VnesiUplata(int numberApt, int buildingNo, int Income, DateTime dateIncomeFor,DateTime dateNow,string ticketNo,string comment)
        {


            string query = null;
            
            string query1 = string.Format("SELECT * FROM transactions WHERE building = '{0}'",buildingNo);
            string query2 = string.Format("SELECT * FROM users WHERE buildingNumber = '{0}' AND numberApt = '{1}' ", buildingNo, numberApt);
            var saldo = getSaldo(buildingNo);
            try
            {
                conn.Open();
                command.CommandText = query2;                                                                                
                command.ExecuteNonQuery();
            }
            finally{
                conn.Close();
            }


                try
            {

             
                conn.Open();


                int vtor = 0;
               float Isplata = 0;
                string Kasa = "kasa";

                
               
                query = string.Format("INSERT INTO transactions VALUES ('{0}', '{1}', '{2}', '{3}', '{4}',  '{5}' ,'{6}',  '{7}' ,  '{8}' ,  '{9}' ,  '{10}' ,  '{11}',  '{12}' ,  '{13}' ,  '{14}')", numberApt, buildingNo, Income, vtor, ticketNo, dateIncomeFor, dateNow, saldo.Budget + Income, comment, vtor, Isplata, Isplata, vtor, saldo.Budget +saldo.BudgetBank + Income, saldo.BudgetBank);
                command.CommandText = query;                                                                                 //   int Stan, int Uplata , DateTimeOffset date ,int Building, string Komentar)
                command.ExecuteNonQuery();
/*
                MailService mailService = new MailService(email);
                mailService.setSubject("Моја Зграда" + "Успешно креирана корисничка сметка:" + buildingNumber);
                string bodyText = "Успешно креирана корисничка сметка! \n Број на зграда: " + buildingNumber + "Адреса: " + address + "\n Информации:\n Име и презиме: " + name + " " + surname + "\n Корисничко име: " + username + "\n Вашата лозинка: " + password + "\n За повеќе информации обратете се до вашиот Менаџер на стамбен објект. ";

                mailService.setBodyText(bodyText);
                mailService.sendMail();
                */

                return "Внесена уплата";

            }
            finally
            {
                conn.Close();
            }
        }

     
        //get last numbers in db table.
        public static transactions getSaldo(int buildingNo)
        {
            double Budget = 0.0;
            double BankBudget = 0.0;
            double AllBudget = 0.0;
            transactions trans = new transactions();
            string query1 = string.Format("SELECT * FROM transactions WHERE building =  '{0}'", buildingNo);
            try
            {
                conn.Open();
                command.CommandText = query1;
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {

                   
                         Budget = reader.GetDouble(8);
                    BankBudget = reader.GetDouble(15);
                    AllBudget = reader.GetDouble(14);

                }
            }
            finally
            {
                trans.Budget = Budget;
                trans.BudgetBank = BankBudget;
                conn.Close();
            }
            return trans;
        }
        public static string UplatiBanka(int sumaUplata, int buildingNo,string ticketNo,string comment){
            //   DataTable
            int numberApt = 0; int Income = 0; DateTime dateIncomeFor = DateTime.Now; DateTime dateNow = DateTime.Now;
            string query = null;
          transactions saldo =  getSaldo(buildingNo);
           
            try
            {
              

                conn.Open();


                int vtor = 0;
                float Isplata = 0;
                string Kasa = "kasa";



                query = string.Format("INSERT INTO transactions VALUES ('{0}', '{1}', '{2}', '{3}', '{4}',  '{5}' ,'{6}',  '{7}' ,  '{8}' ,  '{9}' ,  '{10}' ,  '{11}',  '{12}' ,  '{13}' ,  '{14}')",  numberApt , buildingNo, Income, vtor, ticketNo, dateIncomeFor, dateNow, saldo.Budget-sumaUplata, comment, vtor, sumaUplata, Isplata, vtor,  saldo.BudgetBank + saldo.Budget, saldo.BudgetBank + sumaUplata);
                command.CommandText = query;                                                                                 //   int Stan, int Uplata , DateTimeOffset date ,int Building, string Komentar)
                command.ExecuteNonQuery();
                return "Внесена уплата";

            }
            finally
            {
                conn.Close();
                
            }

           
        }

        // ISPLATI BANKA
        public static string IsplatiBanka(int sumaUplata, int buildingNo, string ticketNo, string comment)
        {
            //   DataTable
            int numberApt = 0; int Income = 0; DateTime dateIncomeFor = DateTime.Now; DateTime dateNow = DateTime.Now;
            string query = null;
            transactions saldo = getSaldo(buildingNo);

            try
            {


                conn.Open();


                int vtor = 0;
                float Isplata = 0;
                string Kasa = "kasa";



                query = string.Format("INSERT INTO transactions VALUES ('{0}', '{1}', '{2}', '{3}', '{4}',  '{5}' ,'{6}',  '{7}' ,  '{8}' ,  '{9}' ,  '{10}' ,  '{11}',  '{12}' ,  '{13}' ,  '{14}')", numberApt, buildingNo, Income, vtor, ticketNo, dateIncomeFor, dateNow, saldo.Budget , comment, vtor, vtor, Isplata, vtor, saldo.BudgetBank + saldo.Budget - sumaUplata, saldo.BudgetBank - sumaUplata);
                command.CommandText = query;                                                                                 //   int Stan, int Uplata , DateTimeOffset date ,int Building, string Komentar)
                command.ExecuteNonQuery();
                return "Успешна исплата од банка";

            }
            finally
            {
                conn.Close();

            }


        }

        //Na martin
        public static string VnesiSoopstenie(int objekt, string od, string naslov, string opis, DateTimeOffset data, string prikacuvanja, int brojZgrada)
        {

            int id = getID("NEWS", "idNews");
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["MojaZgradaConnection"].ConnectionString;
            string sqlString = "INSERT INTO NEWS( idNews, fromUser, title, description, dateNews, attachments, comentsNews, buildingNumber ) VALUES ( @id, @odKorisnik, @naslov, @opis, @data, @prikacuvanja, @komentari, @brojZgrada )";
            SqlCommand cmd = new SqlCommand(sqlString, conn);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@odKorisnik", od);
            cmd.Parameters.AddWithValue("@naslov", naslov);
            cmd.Parameters.AddWithValue("@opis", opis);
            cmd.Parameters.AddWithValue("@data", data);
            cmd.Parameters.AddWithValue("@prikacuvanja", prikacuvanja);
            cmd.Parameters.AddWithValue("@komentari", "");
            cmd.Parameters.AddWithValue("@brojZgrada", brojZgrada);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return "Неуспешно внесено соопштение";
            }
            finally
            {
                conn.Close();
            }
            return "Успешно внесено соопштение";
        }
        //Na martin
        private static int getID(string Tabela, string imeID)
        {
            string tmpId = "";
            int id = 0;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["MojaZgradaConnection"].ConnectionString;
            string sqlString = "SELECT MAX(" + imeID + ") ma FROM " + Tabela;
            SqlCommand cmd = new SqlCommand(sqlString, conn);


            try
            {
                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                tmpId = rdr["ma"].ToString();
                rdr.Close();
                if (!tmpId.Equals("NULL"))
                {
                    id = Convert.ToInt32(tmpId) + 1;
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }
            return id;
        }


    }
}


