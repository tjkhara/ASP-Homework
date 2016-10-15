using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace login
{
    class Program
    {
        static void Main(string[] args)
        {
            LoginFunction();
        }


        static void LoginFunction() 
        {
            Console.WriteLine("Please enter your userID, password.");
            string userID = string.Empty, password = string.Empty, passwordRetype = string.Empty;
            userID = Console.ReadLine();
            password = Console.ReadLine();
            Console.WriteLine("Please retype your password");
            passwordRetype = Console.ReadLine();
            CheckUserIDLength(userID);
            CheckPassword(password, passwordRetype);
        }

        static void CheckUserIDLength(string userID)
        {
            if(userID.Length < 6 || userID.Length > 15)
            {
                Console.WriteLine("The user ID needs to be between 6 and 15 characters.");
            }
        }

        static void CheckPassword(string password, string passwordRetype)
        {
            if(password.Length < 8 || password.Length > 12)
            {
                Console.WriteLine("The password needs to be between 8 and 12 characters.");

            } else if (!((password.ToLower().Contains('@') || password.ToLower().Contains('-') || password.ToLower().Contains('_'))))
            {
                Console.WriteLine("The password needs to contain the @,-, or, _ character.");
                
            } else if (password != passwordRetype)
            {
                Console.WriteLine("Your passwords do not match.");
            } else
            {
                Console.WriteLine("Welcome, Entered data are valid");
            }
        }
    }
}
