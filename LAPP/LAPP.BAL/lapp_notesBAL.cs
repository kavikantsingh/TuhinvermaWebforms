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
    public class lapp_notesBAL : BaseBAL
    {
        lapp_notesDAL objDAL = new lapp_notesDAL();
        public int Save_lapp_notes(lapp_notes objlapp_notes)
        {
            return objDAL.Save_lapp_notes(objlapp_notes);
        }
        public int Update_lapp_notes(lapp_notes objlapp_notes, int Note_Id)
        {
            return objDAL.Update_lapp_notes(objlapp_notes, Note_Id);
        }
        public List<lapp_notes> Get_All_lapp_notes()
        {
            return objDAL.Get_All_lapp_notes();
        }
        public lapp_notes Get_lapp_notes_Get_by_Address_Id(int G_Note_Id)
        {
            return objDAL.Get_lapp_notes_Get_by_Note_Id(G_Note_Id);
        }
        public List<lapp_notes> Get_lapp_notes_Get_by_Individual_Id(int G_Individual_Id)
        {
            return objDAL.Get_lapp_notes_Get_by_Individual_Id(G_Individual_Id);
        }
    }
}
