using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;

public class NotificationDBHelper
{
    public static LAPP_page_alert_message NewSchoolApplicationPayment()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(9);
    }

    public static LAPP_page_alert_message ApplicationRequest()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(10);
    }

    public static LAPP_page_alert_message ApplicationRequestCompleted()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(11);
    }

    public static LAPP_page_alert_message PasswordReset()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(12);
    }

    public static LAPP_page_alert_message Deficiency()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(13);
    }

    public static LAPP_page_alert_message PaymentReceipt()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(14);
    }

    public static LAPP_page_alert_message ContinueNewSchoolApplication()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(15);
    }

    public static LAPP_page_alert_message NewApplicationApproved()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(16);
    }

    public static LAPP_page_alert_message DeficiencyResolved()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(17);
    }

    public static LAPP_page_alert_message TransferApplicationPayment()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(18);
    }

    public static LAPP_page_alert_message TransferApplicationApproved()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(19);
    }

    public static LAPP_page_alert_message TemporaryApplicationPayment()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(21);
    }

    public static LAPP_page_alert_message TemporaryApplicationApproved()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(22);
    }

    public static LAPP_page_alert_message ApplicationAssignedToStaff()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(20);
    }
    public static LAPP_page_alert_message MemberLoginDetail_Template()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(23);
    }
    public static LAPP_page_alert_message Notification_Template()
    {
        LAPP_page_alert_messageBAL objBAL = new LAPP_page_alert_messageBAL();
        return objBAL.Get_LAPP_page_alert_message_BY_ID(24);
    }
}

