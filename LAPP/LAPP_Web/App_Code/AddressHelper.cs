using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AddressHelper
/// </summary>
public class AddressHelper
{
	public AddressHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static List<string> getList()
    {
        System.Collections.Generic.List<string> lstStr = new List<string>();
        lstStr.Add("PO Box");
        lstStr.Add("Post Office Box");
        lstStr.Add("POBox");
        lstStr.Add("PostOffice Box");
        lstStr.Add("PostOfficeBox");
        lstStr.Add("P.O. Box");
        lstStr.Add("P.O Box");
        lstStr.Add("PO. Box");
        lstStr.Add("P O Box");
        return lstStr;
    }

    public static string GetFormatedPOBOx(string AddressStreet)
    {

        string replaced = "PO Box";
        string str = AddressStreet;
        System.Collections.Generic.List<string> lstStr = getList();

        //System.Text.RegularExpressions.Regex rgx = new System.Text.RegularExpressions.Regex("");
        //System.Text.RegularExpressions.Regex rgx = new System.Text.RegularExpressions.Regex(@"^(?i)\b(?:p\.?\s*o\.?|post\s+office)\s+box\b$", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        //if (rgx.IsMatch(AddressStreet))
        //{


        //}
        //str = rgx.Replace(AddressStreet, replaced);
        foreach (string street in lstStr)
        {
            //str = str.Replace(street.ToUpper(), replaced);
            str = System.Text.RegularExpressions.Regex.Replace(str, street, replaced, System.Text.RegularExpressions.RegexOptions.IgnoreCase);

        }
        return str;
    }
}