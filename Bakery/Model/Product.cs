using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class Product
    {
        // String ProId;
        int quantity;
        public int Quantity
        {
            get
            {
                return quantity;
            }
            set
            {
                quantity = value;
            }
        }


    }

}