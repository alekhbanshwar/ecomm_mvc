﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ecomm.Models
{
    public class customers
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
    }

}