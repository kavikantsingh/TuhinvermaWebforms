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
    public class lapp_taskBAL : BaseBAL
    {
        lapp_taskDAL objDAL = new lapp_taskDAL();
        public int Save_lapp_task(lapp_task objlapp_task)
        {
            return objDAL.Save_lapp_task(objlapp_task);
        }
        public int Update_lapp_task(lapp_task objlapp_task, int task_Id)
        {
            return objDAL.Update_lapp_task(objlapp_task, task_Id);
        }
        public List<lapp_task> Get_All_lapp_task()
        {
            return objDAL.Get_All_lapp_task();
        }
        public lapp_task Get_lapp_task_Get_by_task_Id(int G_task_Id)
        {
            return objDAL.Get_lapp_task_Get_by_task_Id(G_task_Id);
        }
        public List<lapp_task> Get_lapp_task_Get_by_Individual_Id(int G_Individual_Id)
        {
            return objDAL.Get_lapp_task_Get_by_Individual_Id(G_Individual_Id);
        }
    }
}
