﻿using System;
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
    public partial class Usuarios : System.Web.UI.Page
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        private SqlCommand my_sql_command;
        private SqlDataAdapter my_sql_adapter;
        DataSet dtuser;

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
                my_sql_command.CommandText = "users_CRUD";

                my_sql_command.Parameters.AddWithValue("@Action", "SELECT");
                my_sql_adapter = new SqlDataAdapter(my_sql_command);
                //DataTable dt = new DataTable();
               dtuser = new DataSet();
                my_sql_adapter.Fill(dtuser);
               // gvdusers.DataSource = dtuser;
                gvdusers.DataBind();



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
            txtcode.Text = "";
            txtbandname.Text = "";
            txttel.Text = "";
            txtemail.Text = "";

        }


        protected void btninsert_Click(object sender, EventArgs e)
        {

            try
            {
                CreateConnection();
                OpenConnection();
                my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.CommandText = "users_CRUD";
                //my_sql_command.CommandType = CommandType.StoredProcedure;
                my_sql_command.Parameters.AddWithValue("@Action", "INSERT");
                my_sql_command.Parameters.AddWithValue("@bandname", Convert.ToString(txtbandname.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@tel", Convert.ToString(txttel.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@email", Convert.ToString(txtemail.Text.Trim()));

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
                my_sql_command.CommandText = "users_CRUD";

                my_sql_command.Parameters.AddWithValue("@Action", "DELETE");
                my_sql_command.Parameters.AddWithValue("@id", Convert.ToString(txtcode.Text.Trim()));

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
                my_sql_command.CommandText = "users_CRUD";

                my_sql_command.Parameters.AddWithValue("@Action", "UPDATE");
                my_sql_command.Parameters.AddWithValue("@id", Convert.ToString(txtcode.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@bandname", Convert.ToString(txtbandname.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@tel", Convert.ToString(txttel.Text.Trim()));
                my_sql_command.Parameters.AddWithValue("@email", Convert.ToString(txtemail.Text.Trim()));

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


