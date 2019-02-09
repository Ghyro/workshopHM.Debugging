using System;
using System.Collections.Generic;

namespace DebuggingLibrary
{
    public class Register
    {
        List<int> data = new List<int>()
        {
            123123,
            321312,
            223322
        };

        public void Enter(string username, int activationKey)
        {
            if (username is null)
            {
                throw new ArgumentNullException(nameof(username));
            }

            if (activationKey <= 0)
            {
                throw new ArgumentOutOfRangeException(nameof(activationKey));
            }

            if (!CheckUser(username, activationKey))
            {
                Console.WriteLine("Invalid activation key!");
                return;
            }

            DoSmth(username);
        }

        public bool CheckUser(string username, int activationKey)
        {
            if (data.Contains(activationKey))
            {
                return true;
            }

            return false;
        }

        public void DoSmth(string username)
        {
            Console.WriteLine($"Hello, {username}! Our key has been activated. Let's start to work!");
        }
    }
}
