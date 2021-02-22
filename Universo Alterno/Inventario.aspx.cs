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
    public partial class Inventario : System.Web.UI.Page
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        private SqlCommand my_sql_command;
        private SqlDataAdapter my_sql_adapter;
        DataSet inventory;

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
                my_sql_command.CommandText = "inventory_CRUD";

                my_sql_command.Parameters.AddWithValue("@Action", "SELECT");
                my_sql_adapter = new SqlDataAdapter(my_sql_command);
                //DataTable dt = new DataTable();
                inventory = new DataSet();
                my_sql_adapter.Fill(inventory);
                // gvdusers.DataSource = dtuser;
                gvdinventory.DataBind();



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
            txtcodeinven.Text = "";
            txtroomname.Text = "";
            txtguitar1.Text = "";
            txtguitar2.Text = "";
            txtbass.Text = "";
            txtdrums.Text = "";
            txtconsole.Text = "";
            txtmic.Text = "";
            txtroomsize.Text = "";

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {


            try
            {
                CreateConnection();
                OpenConnection();
                my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.CommandText = "inventory_CRUD";
                //my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.Parameters.AddWithValue("@Action", "INSERT");
                my_sql_command.Parameters.AddWithValue("@roomname", Convert.ToString(txtroomname.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@amp_guitar1", Convert.ToString(txtguitar1.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@amp_guitar2", Convert.ToString(txtguitar2.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@amp_bass", Convert.ToString(txtbass.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@drums", Convert.ToString(txtdrums.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@console", Convert.ToString(txtconsole.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@mic", Convert.ToString(txtmic.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@roomsize", Convert.ToString(txtroomsize.Text.Trim()));


                int result = Convert.ToInt32(my_sql_command.ExecuteNonQuery());
                if (result > 0)
                {

                    ShowAlertMessage("Record Is Inserted Successfully");
                    BindGrid();
                    ClearControls();
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

        protected void btndelete_Click(object sender, EventArgs e)
        {
            try
            {
                CreateConnection();
                OpenConnection();
                my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.CommandText = "inventory_CRUD";

                my_sql_command.Parameters.AddWithValue("@Action", "DELETE");
                my_sql_command.Parameters.AddWithValue("@id", Convert.ToString(txtcodeinven.Text.Trim()));

                //my_sql_command.ExecuteNonQuery();
                //BindGrid();


                int result = Convert.ToInt32(my_sql_command.ExecuteNonQuery());
                if (result > 0)
                {

                    ShowAlertMessage("Record Is deleted Successfully");
                    BindGrid();
                    ClearControls();
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

        protected void btnupdate_Click(object sender, EventArgs e)
        {

            try
            {
                CreateConnection();
                OpenConnection();
                my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.CommandText = "inventory_CRUD";

                my_sql_command.Parameters.AddWithValue("@Action", "UPDATE");
                my_sql_command.Parameters.AddWithValue("@id", Convert.ToString(txtcodeinven.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@roomname", Convert.ToString(txtroomname.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@amp_guitar1", Convert.ToString(txtguitar1.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@amp_guitar2", Convert.ToString(txtguitar2.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@amp_bass", Convert.ToString(txtbass.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@drums", Convert.ToString(txtdrums.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@console", Convert.ToString(txtconsole.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@mic", Convert.ToString(txtmic.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@roomsize", Convert.ToString(txtroomsize.Text.Trim()));


                //my_sql_command.ExecuteNonQuery();
                //BindGrid();


                int result = Convert.ToInt32(my_sql_command.ExecuteNonQuery());
                if (result > 0)
                {

                    ShowAlertMessage("Record Is UPDATED Successfully");
                    BindGrid();
                    ClearControls();
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