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
    public class Lapp_paymentBAL:BaseBAL
    {
        Lapp_paymentDAL objDAL = new Lapp_paymentDAL();

        public int Save_Lapp_payment(Lapp_payment objLapp_payment)
        {
            return objDAL.Save_Lapp_payment(objLapp_payment);
        }

        public int Update_Lapp_payment(Lapp_payment objLapp_payment, int Payment_ID)
        {
            return objDAL.Update_Lapp_payment(objLapp_payment, Payment_ID);
        }

        public List<Lapp_payment> Get_All_Lapp_payment()
        {
            return objDAL.Get_All_Lapp_payment();
        }

        public Lapp_payment Get_Lapp_payment_Get_by_Payment_ID(int G_Payment_ID)
        {
            return objDAL.Get_Lapp_payment_Get_by_Payment_ID(G_Payment_ID);
        }
        public List<Lapp_payment> Get_Lapp_payment_Get_by_Invoice_Number(string G_Invoice_Number)
        {
            return objDAL.Get_Lapp_payment_Get_by_Invoice_Number(G_Invoice_Number);
        }
        public Lapp_payment Get_Lapp_payment_Get_by_ApplicationNumber(string ApplicationNumber)
        {
            return objDAL.Get_Lapp_payment_Get_by_ApplicationNumber(ApplicationNumber);
        }
        public List<Lapp_payment> Get_lapp_payment_get_by_ApplicantId(int G_Applicant_Id)
        {
            return objDAL.Get_lapp_payment_get_by_ApplicantId(G_Applicant_Id);
        }

        public Lapp_payment Get_Lapp_payment_Get_by_Invoice_Number_Object(string G_Invoice_Number)
        {
            return objDAL.Get_Lapp_payment_Get_by_Invoice_Number_Object(G_Invoice_Number);
        }
    }
}
