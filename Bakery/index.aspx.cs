using Bakery.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                    String[] Account = (String[])Session["Account"];

                    if (Account != null)
                    {
                        String username = Account[0];
                        int Amount = Convert.ToInt32((TextBox4.Text));
                        // Session.Add("AMOUNT", Amount);
                        //string ProID  
                        String ProID = "Pro-01";
                        //Session.Add("PROID", ProID);
                        CartObj cart = (CartObj)Session["CART"];
                        if (cart == null)
                        {
                            cart = new CartObj();
                        }
                        cart.AddItemToCartWithValue(ProID, Amount);

                        Session.Add("CART", cart);
                    }
                    else if (Account == null)
                    {
                        Response.Redirect("login.aspx");
                    }
            }
            catch (Exception)
            {

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                String[] Account = (String[])Session["Account"];

                if (Account != null)
                {
                    String username = Account[0];
                    int Amount = Convert.ToInt32((TextBox5.Text));
                    // Session.Add("AMOUNT", Amount);
                    //string ProID  
                    String ProID = "Pro-03";
                    //Session.Add("PROID", ProID);
                    CartObj cart = (CartObj)Session["CART"];
                    if (cart == null)
                    {
                        cart = new CartObj();
                    }
                    cart.AddItemToCartWithValue(ProID, Amount);

                    Session.Add("CART", cart);
                }
                else if (Account == null)
                {
                    Response.Redirect("login.aspx");
                }
            }
            catch (Exception)
            {

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                String[] Account = (String[])Session["Account"];

                if (Account != null)
                {
                    String username = Account[0];
                    int Amount = Convert.ToInt32((TextBox6.Text));
                    // Session.Add("AMOUNT", Amount);
                    //string ProID  
                    String ProID = "Pro-05";
                    //Session.Add("PROID", ProID);
                    CartObj cart = (CartObj)Session["CART"];
                    if (cart == null)
                    {
                        cart = new CartObj();
                    }
                    cart.AddItemToCartWithValue(ProID, Amount);

                    Session.Add("CART", cart);
                }
                else if (Account == null)
                {
                    Response.Redirect("login.aspx");
                }
            }
            catch (Exception)
            {

            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                String[] Account = (String[])Session["Account"];

                if (Account != null)
                {
                    String username = Account[0];
                    int Amount = Convert.ToInt32((TextBox7.Text));
                    // Session.Add("AMOUNT", Amount);
                    //string ProID  
                    String ProID = "Pro-07";
                    //Session.Add("PROID", ProID);
                    CartObj cart = (CartObj)Session["CART"];
                    if (cart == null)
                    {
                        cart = new CartObj();
                    }
                    cart.AddItemToCartWithValue(ProID, Amount);

                    Session.Add("CART", cart);
                }
                else if (Account == null)
                {
                    Response.Redirect("login.aspx");
                }
            }
            catch (Exception)
            {

            }
        }
    }
}