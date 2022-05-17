using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entity;
using DataAccess;

namespace Business
{
    public static class AdminBusiness
    {
        public static DataTable SelectViewTeacher()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "View_Teacher" };
            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);

        }
    }
}
