using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//using System.Web.Configuration;
using System.Configuration;

namespace Universo_Alterno
{
    public partial class Ventas : System.Web.UI.Page
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        private SqlCommand my_sql_command;
        private SqlDataAdapter my_sql_adapter;
        DataSet dtsales;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();

            }

        }

        private static void ShowAlertMessage(string error)
        {
            System.Web.UI.Page page = System.Web.HttpContext.Current.Handler as System.Web.UI.Page;
            if (page != null)
            {
                error = error.Replace("'", "\'");
                System.Web.UI.ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + error + "');", true);
            }
        }

        public void CreateConnection()
        {
            SqlConnection my_sql_connection = new SqlConnection(strConnectionString);
            my_sql_command = new SqlCommand();
            my_sql_command.Connection = my_sql_connection;
        }
        public void OpenConnection()
        {
            my_sql_command.Connection.Open();
        }
        public void CloseConnection()
        {
            my_sql_command.Connection.Close();
        }
        public void DisposeConnection()
        {
            my_sql_command.Connection.Dispose();
        }
        public void BindGrid()
        {
            try
            {
                CreateConnection();
                OpenConnection();
                my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.CommandText = "insert_ventas";

                my_sql_command.Parameters.AddWithValue("@Action", "SELECT");
                my_sql_adapter = new SqlDataAdapter(my_sql_command);
                //DataTable dt = new DataTable();
                dtsales = new DataSet();
                my_sql_adapter.Fill(dtsales);
               // gdvsales.DataSource = dtsales;
                gdvsales.DataBind();



            }
            catch (SqlException exp)
            {
                throw new InvalidOperationException("Data could not be read", exp);
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }


        public void ClearControls()
        {
            txttime.Text = "";
            
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

           /* int aux = 0; 
            aux = (int.Parse(txttime.Text) * 20000)+ int.Parse(dwnadicional.SelectedValue); */


            try
            {
                CreateConnection();
                OpenConnection();
                my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.CommandText = "insert_ventas";
                //my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.Parameters.AddWithValue("@Action", "INSERT");
                my_sql_command.Parameters.AddWithValue("@sala", dwninventory.SelectedItem.Text);
                my_sql_command.Parameters.AddWithValue("@usuario", dwnuser.SelectedItem.Text);
                my_sql_command.Parameters.AddWithValue("@proveedor", dwnprov.SelectedItem.Text);
                my_sql_command.Parameters.AddWithValue("@instrumento_adicional", dwnadicional.SelectedItem.Text);
                my_sql_command.Parameters.AddWithValue("@tiempo", Convert.ToString(txttime.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@total", Convert.ToString((int.Parse(txttime.Text) * 20000) + int.Parse(dwnadicional.SelectedValue)));
             
                int result = Convert.ToInt32(my_sql_command.ExecuteNonQuery());
                if (result > 0)
                {

                    ShowAlertMessage("Record Is Inserted Successfully");
                    BindGrid();
                    ClearControls();
                    //aux = 0;
                }
                else
                {

                    ShowAlertMessage("Failed");
                }
            }
            catch (SqlException exp)
            {
                throw new InvalidOperationException("Data could not be read", exp);
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }

        }
    }
  }
