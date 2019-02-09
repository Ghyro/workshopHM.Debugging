using DebuggingLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DebuggingTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Register register = new Register();

            register.Enter(Console.ReadLine(), 22222);

            Console.ReadLine();
        }
    }
}
