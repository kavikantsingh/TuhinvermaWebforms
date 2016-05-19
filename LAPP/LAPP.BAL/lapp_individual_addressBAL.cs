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
    public class lapp_individual_addressBAL : BaseBAL
    {
        lapp_individual_addressDAL objDAL = new lapp_individual_addressDAL();

        public int Save_lapp_individual_address(lapp_individual_address objlapp_individual_address)
        {
            return objDAL.Save_lapp_individual_address(objlapp_individual_address);
        }
        public int Update_lapp_individual_address(lapp_individual_address objlapp_individual_address, int Address_Id)
        {
            return objDAL.Update_lapp_individual_address(objlapp_individual_address, Address_Id);
        }
        public List<lapp_individual_address> Get_All_lapp_individual_address()
        {
            return objDAL.Get_All_lapp_individual_address();
        }
        public lapp_individual_address Get_lapp_individual_address_Get_by_Address_Id(int G_Address_Id)
        {
            return objDAL.Get_lapp_individual_address_Get_by_Address_Id(G_Address_Id);
        }
        public List<lapp_individual_address> Get_lapp_individual_address_Get_by_Individual_Id(int G_Individual_Id)
        {
            return objDAL.Get_lapp_individual_address_Get_by_Individual_Id(G_Individual_Id);
        }
        public lapp_individual_address Get_by_lapp_individual_address_by_individual_Id(int G_Individual_Id)
        {
            return objDAL.Get_by_lapp_individual_address_by_individual_Id(G_Individual_Id);
        }
    }
}
