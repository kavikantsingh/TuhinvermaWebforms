using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using LAPP.ENTITY;
using LAPP.DAL;
namespace LAPP.BAL
{
    public class LAPP_serialsBAL : BaseBAL
    {
        LAPP_serialsDAL objDal = new LAPP_serialsDAL();
        public string Get_Receipt_No()
        {
            return objDal.Get_Receipt_No();
        }
        public int Get_By_Firm_Info_Business_Id()
        {
            return objDal.Get_By_Firm_Info_Business_Id();
        }
        public int Get_By_Member_Info_Id()
        {
            return objDal.Get_By_Member_Info_Id();
        }
        public int Get_By_Company_Id()
        {
            return objDal.Get_By_Company_Id();
        }
        public string Get_Investigative_Number()
        {
            return objDal.Get_Investigative_Number();
        }

        public string Get_License_Number()
        {
            return string.Format("{0:d6}", Convert.ToInt32(objDal.Get_License_Number()));
        }
        public string LAPP_serial_get_LSI_Number()
        {
            return objDal.LAPP_serial_get_LSI_Number();
        }
        public string LAPP_serial_get_EI_Number()
        {
            return objDal.LAPP_serial_get_EI_Number();
        }

        public string LAPP_Serials_Get_Application_Number_Online()
        {
            try
            {
                string serials = "";
                string query = "UPDATE serials s SET s.SerialCounter = s.SerialCounter + 1 WHERE s.SerialName = 'Application_Number';";
                query += "SELECT s.SerialCounter AS 'counter' FROM serials s WHERE s.SerialName = 'Application_Number';";
                int counter = objDal.Get_LAPP_serials_Counter_By_Query(query);

                if (counter > 99)
                {
                    query = "UPDATE serials s SET s.SerialCounter = 0 WHERE s.SerialName = 'Application_Number';";
                    query += "UPDATE serials s SET s.SerialCounter = s.SerialCounter + 1 WHERE s.SerialName = 'Application_Number';";
                    query += "SELECT s.SerialCounter AS 'counter' FROM serials s WHERE s.SerialName = 'Application_Number';";

                    counter = objDal.Get_LAPP_serials_Counter_By_Query(query);
                    serials = "OL" + DateTime.Now.ToString("yyMMddhhmm") + string.Format("{0:D2}", counter);
                    return serials;
                }
                else
                {
                    serials = "OL" + DateTime.Now.ToString("yyMMddhhmm") + string.Format("{0:D2}", counter);
                    return serials;
                }
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        public string LAPP_Serials_Get_Application_Number_Backoffice()
        {
            try
            {
                string serials = "";
                string query = "UPDATE serials s SET s.SerialCounter = s.SerialCounter + 1 WHERE s.SerialName = 'Application_Number';";
                query += "SELECT s.SerialCounter AS 'counter' FROM serials s WHERE s.SerialName = 'Application_Number';";
                int counter = objDal.Get_LAPP_serials_Counter_By_Query(query);

                if (counter > 99)
                {
                    query = "UPDATE serials s SET s.SerialCounter = 0 WHERE s.SerialName = 'Application_Number';";
                    query += "UPDATE serials s SET s.SerialCounter = s.SerialCounter + 1 WHERE s.SerialName = 'Application_Number';";
                    query += "SELECT s.SerialCounter AS 'counter' FROM serials s WHERE s.SerialName = 'Application_Number';";

                    counter = objDal.Get_LAPP_serials_Counter_By_Query(query);
                    serials = "MI" + DateTime.Now.ToString("yyMMddhhmm") + string.Format("{0:D2}", counter);
                    return serials;
                }
                else
                {
                    serials = "MI" + DateTime.Now.ToString("yyMMddhhmm") + string.Format("{0:D2}", counter);
                    return serials;
                }
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        public string LAPP_Serials_Get_License_Number()
        {
            try
            {
                string serials = "";
                string query = "UPDATE serials s SET s.SerialCounter = s.SerialCounter + 1 WHERE s.SerialName = 'License_Number';";
                query += "SELECT s.SerialCounter AS 'counter' FROM serials s WHERE s.SerialName = 'License_Number';";
                int counter = objDal.Get_LAPP_serials_Counter_By_Query(query);

                if (counter > 9999)
                {
                    query = "UPDATE serials s SET s.SerialCounter = 0 WHERE s.SerialName = 'License_Number';";
                    query += "UPDATE serials s SET s.SerialCounter = s.SerialCounter + 1 WHERE s.SerialName = 'License_Number';";
                    query += "SELECT s.SerialCounter AS 'counter' FROM serials s WHERE s.SerialName = 'License_Number';";

                    counter = objDal.Get_LAPP_serials_Counter_By_Query(query);
                    serials = "NVMT." + string.Format("{0:D4}", counter);
                    return serials;
                }
                else
                {
                    serials = "NVMT." +  string.Format("{0:D4}", counter);
                    return serials;
                }
            }
            catch (Exception ex)
            {
                return "";
            }
        }

    }
}
