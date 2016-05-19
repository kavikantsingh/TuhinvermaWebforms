<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="CEODashboard.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_CEODashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../App_Themes/Theme1/css/Codes.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" />
     <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liHome').addClass('active');
        });
    </script>
    <style>
        .pager_style {
            text-align: left;
        }
        .bg_total{ background-color:white;}
        thead th, tbody tr th {
            text-align: center;
        }

        .alignleft{text-align:left !important; padding-left:10px !important;}
        .alignright{text-align:right !important; padding-right:10px !important;}
        .alterbgcolor{background-color:#DDEBF6;}
        .matrix tr td, th {
            text-align: center;
            border:1px solid #B4B4B4;
            color: rgb(0, 0, 0);
font-weight: bold;
        }

        .trnocolor{border-left:none !important; border-top:none !important;border-bottom:none !important;}
        
        .matrix tr{line-height: 26px;}
        .matrix tr th{background-color:white;}

        .matrix {
            text-align: center;
        }

        .index tr td {
            padding-left: 5px;
        }

        .index tr .pdgnone {
            padding: 0px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:UpdatePanel ID="pnlTask" runat="server">
        <ContentTemplate>
            <div class="clearb">
            </div>
              <div class="main">
                <br />
                <br />
                <div class="clearb">
                </div>
                  <div class="container primary-content ">
                      <div class="home-sidebar append-1 fltlft" style="width: 100%;">
                        
                        <div class="rounded-container peel-shadows">
                            <div class="content clearfix">
                                <div>
                                    <div id="divButtonList" class="tabBtnBorder" style="width: 86%; float:left;">
                                        <asp:Button ID="btnWeekly" Enabled="true" runat="server" OnClick="btnWeekly_Click" Text="Weekly"  CssClass="tab_activeBtn" />
                                        <asp:Button ID="btnMonthly"  runat="server" Text="Monthly" OnClick="btnMonthly_Click"  CssClass="tabBtn" />
                                        <asp:Button ID="btnMonthlyDetails" runat="server" OnClick="btnMonthlyDetails_Click" Text="Monthly-Details"  CssClass="tabBtn" />

                                    </div>
                                    
                                        <asp:Button ID="btnRunReport" Style=" float:right;margin-top: 22px;" runat="server" CssClass="buttonGreen medium" Text="Run Report" />
                                    <div id="divPanelList" style="border: 1px solid rgb(222, 222, 222); margin-top: 10px; float: left; width: 88%;">
                                        <asp:Panel ID="pnlWeekly" Enabled="true" Visible="true" runat="server">
                                            <div style="margin-top: 10px; margin-bottom: 10px;">
                                                <div>
                                                <span style="float: left; margin-left: 40%; padding-top: 5px; font-style: italic; padding-right: 10px;">Active Certificate Holders</span>
                                                <table style=" border: 2px solid black; text-align: right; width: 89px; background-color: rgb(232, 248, 249);">
                                                    <tr>
                                                        <td style="font-weight:bold;">51,468</td>
                                                    </tr>
                                                </table>
                                                    </div>
                                                <div style="margin-top: 40px;">
                                                    <h4 style="text-align:center;">CAMTC - Application ACTIVITY - Weekly Report <br /> as of mm/dd/yyyy</h4>
                                     <table style="border:3px solid black; margin-top:10px;width: 98%;margin-left: 1%;" class="matrix index">
                                         <tr style="height: 55px;">
                                             <th style="text-align: left; color: black; padding-left: 10px;"></th>
                                             <th colspan="3" style="color: #444">Week Ending 03/19/2016</th>
                                         </tr>
                                         <tr>
                                            <td class="alignleft"></td>
                                            <td>Applications</td>
                                            <td>Recertifications</td>
                                            <td>Total</td>
                                        </tr>
                                         <tr class="alterbgcolor">
                                            <td class="alignleft">Applications Being Entered</td>
                                            <td>123</td>
                                            <td>14</td>
                                            <td>137</td>
                                        </tr>
                                         <tr>
                                            <td class="alignleft">Applications Received</td>
                                            <td>59</td>
                                            <td>2</td>
                                            <td>61</td>
                                        </tr>
                                         <tr class="alterbgcolor">
                                            <td class="alignleft">Applications pending – Incomplete</td>
                                            <td>1,739</td>
                                            <td>111</td>
                                            <td>1,850</td>
                                        </tr>
                                         <tr>
                                            <td class="alignleft">Applications Pending Verification</td>
                                            <td>87</td>
                                            <td>32</td>
                                            <td>119</td>
                                        </tr>
                                         <tr class="alterbgcolor">
                                            <td class="alignleft">Applications Education Issues</td>
                                            <td>236</td>
                                            <td>-</td>
                                            <td>236</td>
                                        </tr>
                                         <tr>
                                            <td class="alignleft">Applications at PSD/Legal</td>
                                            <td>511</td>
                                            <td>33</td>
                                            <td>544</td>
                                        </tr>
                                         <tr class="alterbgcolor">
                                            <td class="alignleft">Applications Complete/Ready for Pre-approval</td>
                                            <td>83</td>
                                            <td>22</td>
                                            <td>105</td>
                                        </tr>
                                         <tr style="border-top:2px solid black;">
                                            <td class="alignright">Applications Pending (includes all of the above)</td>
                                            <td>2,838</td>
                                            <td>214</td>
                                            <td>3,052</td>
                                        </tr>
                                      </table>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlbtnMonthly" Enabled="true" Visible="false" runat="server">
                                            <div style="margin-top: 10px; margin-bottom: 10px;">
                                            <div>
                                                <span style="float: left; margin-left: 40%; padding-top: 5px; font-style: italic; padding-right: 10px;">Active Certificate Holders</span>
                                                <table style="border: 2px solid black; text-align: right; width: 89px; background-color: rgb(232, 248, 249);">
                                                    <tr>
                                                        <td style="font-weight: bold;">51,468</td>
                                                    </tr>
                                                </table>
                                            </div>
                                                <div style="margin-top: 40px;">
<h4 style="text-align: center; float: left; margin-left: 25%;margin-right: 5%;">CAMTC Monthly Certification Data </h4><h4> July 7, 2009 - February 29, 2016</h4>
                                     <table style="border:3px solid black; margin-top:10px;width: 98%;margin-left: 1%;" class="matrix index">
                                         <tr>
                                             <td style="text-align: left; color: black; font-weight:bold; padding-left: 10px;">CASH</td>
                                             <td style="color: black;font-weight:bold; ">Checking</td>
                                             <td style="color: black;font-weight:bold; ">Savings/CD’s</td>
                                             <td style="color: black;font-weight:bold; ">TOTAL</td>
                                         </tr>
                                         <tr>
                                            <td class="alignleft" style="font-weight:normal;">Current Cash Balance   </td>
                                            <td style="font-weight:normal;">$480,928</td>
                                            <td style="font-weight:normal;">$2,994,615</td>
                                            <td style="font-weight:normal;">$3,475,543</td>
                                        </tr>
                                         </table>
                                     <table style="border: 3px solid black; margin-top: 30px; width: 98%; margin-left: 1%;" class="matrix index">
                                         <tr>
                                              <td style="text-align: left; color: black; font-weight:bold; padding-left: 10px;">APPLICATIONS</td>
                                             <td></td>
                                         </tr>
                                         <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total New Applications Received</td>
                                             <td>79,872</td>
                                         </tr>
                                         <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Recertification Applications Received</td>
                                             <td>65,059</td>
                                         </tr>
                                         <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Applications Received</td>
                                             <td>144,931</td>
                                         </tr>
                                         <tr>
                                             <td style=" height:24px;"></td>
                                             <td></td>
                                         </tr>
                                          <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Pending Applications</td>
                                             <td>3,468</td>
                                         </tr>
                                         <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Disciplinary Actions</td>
                                             <td>0</td>
                                         </tr>
                                          <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Purged Applications</td>
                                             <td>1,288</td>
                                         </tr>
                                         <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Certificates Issued (New & Recertifications) </td>
                                             <td>2,182</td>
                                         </tr>
                                         <tr>
                                             <td style=" height:24px;"></td>
                                             <td></td>
                                         </tr>
                                         <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Active Certificate Holders </td>
                                             <td>50,160</td>
                                         </tr>
                                     </table>
                                     <table style="border: 3px solid black; margin-top: 30px; width: 98%; margin-left: 1%;" class="matrix index">
                                                        <tr>
                                                            <td style="text-align: left; color: black; font-weight: bold; padding-left: 10px;">RECERTIFICATION BILLING</td>
                                                            <td></td>
                                                        </tr>
                                         <tr >
                                             <td class="alignleft" style="font-weight:normal;">Total Recertification Billed</td>
                                             <td>85,566</td>
                                         </tr>
                                         <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Recertification Paid</td>
                                             <td>65,059</td>
                                         </tr>
                                          <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Recertification Expired</td>
                                             <td>17,566</td>
                                         </tr>
                                         <tr>
                                             <td class="alignleft" style="font-weight:normal;">Total Recertification Unpaid </td>
                                             <td>2,861</td>
                                         </tr>
                                      </table>
                                     <table style="border: 3px solid black; margin-top: 30px; width: 98%; margin-left: 1%;" class="matrix index">
                                                        <tr>
                                                            <td style="font-weight: normal;line-height: 18px;">Average # of days to approve applications with no background or education issues <br/> (From date file is complete)</td>
                                                            <td>3.5</td>
                                                        </tr>
                                                         <tr style="border-top:2px solid black;">
                                                            <td style="font-weight: normal;line-height: 18px;">Average # of days to approve applications with background or education issues <br/> (From date file is complete)</td>
                                                            <td>14.7</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                </div>
                                        </asp:Panel>
                                         <asp:Panel ID="pnlbtnMonthlyDetails" Enabled="true" Visible="false" runat="server">
                                             <div style="margin-top: 10px; margin-bottom: 10px;">
                                                 <div>
                                                     <span style="float: left; margin-left: 40%; padding-top: 5px; font-style: italic; padding-right: 10px;">Active Certificate Holders</span>
                                                     <table style="border: 2px solid black; text-align: right; width: 89px; background-color: rgb(232, 248, 249);">
                                                         <tr>
                                                             <td style="font-weight: bold;">51,468</td>
                                                         </tr>
                                                     </table>
                                                 </div>
                                                 <div style="margin-top: 40px;">
                                                      <h4 style="text-align:center;">CAMTC - Application ACTIVITY - Monthly Report <br /> as of mm/dd/yyyy</h4>
                                    <table style="border:3px solid black; margin-top:10px;width: 98%;margin-left: 1%;" class="matrix index">
                                    <tr style="height: 55px;">
                                        <th rowspan="2"></th>
                                        <th colspan="3" style="color: black;" width="300px">Month Ending 02/29/2016</th>
                                        </th>
                                            <th style="color: black;" width="100px" rowspan="2">Since Inception
                                                <br />
                                                07/27/2009</th>
                                    </tr>
                                    <tr>
                                        <th style="color: black;" width="100px">Applications </th>
                                        <th style="color: black;" width="100px">Recertifications </th>
                                        <th style="color: black;" width="100px">Total</th>
                                    </tr>
                                    <tr class="alterbgcolor">
                                        <td class="alignleft">Total Number of Applications Received</td>
                                        <td class="aligncenter">1,400</td>
                                        <td class="aligncenter">12</td>
                                        <td class="aligncenter">1,412</td>
                                        <td class="aligncenter" style="font-weight:bold;">277,192</td>
                                    </tr>
                                    <tr>
                                        <td class="alignleft">Total Number of Applications Pending</td>
                                        <td class="aligncenter">123</td>
                                        <td class="aligncenter">15</td>
                                        <td class="aligncenter">138</td>
                                        <td class="aligncenter">--</td>
                                    </tr>
                                    <tr class="alterbgcolor">
                                        <td class="alignleft">Total Number of Applications Purged</td>
                                        <td class="aligncenter">22</td>
                                        <td class="aligncenter">12</td>
                                        <td class="aligncenter">34</td>
                                        <td class="aligncenter">22,222</td>
                                    </tr>
                                    <tr>
                                        <td class="alignleft">Total Number of Applications Issued</td>
                                        <td class="aligncenter">351</td>
                                        <td class="aligncenter">31</td>
                                        <td class="aligncenter">382</td>
                                        <td class="aligncenter" style="font-weight:bold;">65,789</td>
                                    </tr>
                                    <tr class="alterbgcolor">
                                        <td class="alignleft">Average number of days to approve applications with no background or education issues</td>
                                        <td class="aligncenter">3.5</td>
                                        <td class="aligncenter">1.0</td>
                                        <td class="aligncenter">2.3</td>
                                        <td class="aligncenter">--</td>
                                    </tr>
                                    <tr>
                                        <td class="alignleft">Average number of days to approve applications with background or education issues</td>
                                        <td class="aligncenter" style="font-weight:bold;">14.7</td>
                                        <td class="aligncenter">22.0</td>
                                        <td class="aligncenter" style="font-weight:bold;">18.4</td>
                                        <td class="aligncenter">--</td>
                                    </tr>
                                        <tr style="border-top:3px solid Black;">
                                        <td class="alignright"  style="font-size: 14px;">Certificates Issues</td>
                                        <td class="aligncenter" style="font-weight:bold;">351</td>
                                        <td class="aligncenter">31</td>
                                        <td class="aligncenter" style="font-weight:bold;">382</td>
                                        <td class="aligncenter">67,397</td>
                                    </tr>
                                        <tr>
                                            <td class="alignright trnocolor">Less Expired (and Nullified or Purged)</td>
                                            <td colspan="2" style="border:none !important;" class="trnocolor"></td>
                                            <td class="trnocolor" >11</td>
                                            <td class="aligncenter trnocolor">15,145</td>
                                        </tr>
                                         <tr class="alterbgcolor trnocolor">
                                            <td class="alignright trnocolor" style="font-size:13px;">Disciplinary Actions</td>
                                            <td  colspan="2" style="border:none !important;" class="trnocolor"></td>
                                             <td class="trnocolor"></td>
                                            <td class="aligncenter trnocolor"></td>
                                        </tr>
                                        <tr>
                                            <td class="alignright trnocolor">Less Suspended</td>
                                            <td colspan="2" style="border:none !important;" class="trnocolor"></td>
                                             <td class="trnocolor">12</td>
                                            <td class="aligncenter trnocolor">77</td>
                                        </tr>
                                         <tr class="alterbgcolor trnocolor">
                                            <td class="alignright trnocolor">Less Revoked</td>
                                            <td colspan="2" style="border:none !important;" class="trnocolor"></td>
                                             <td class="trnocolor">3</td>
                                            <td class="aligncenter trnocolor">473</td>
                                        </tr>
                                         <tr>
                                            <td class="alignright trnocolor">Less Denied</td>
                                             <td colspan="2" style="border:none !important;" class="trnocolor"></td>
                                            <td class="trnocolor">32</td>
                                            <td class="aligncenter trnocolor">234</td>
                                        </tr>

                                         <tr class="alterbgcolor trnocolor">
                                            <td class="alignright trnocolor" style="color: #B1B1B1;">Other Disciplinary Actions</td>
                                            <td class="trnocolor" style="border:none !important; color: #B1B1B1;" colspan="2"></td>
                                             <td class="trnocolor" style="color: #B1B1B1;">67</td>
                                            <td class="aligncenter trnocolor" style="color: #B1B1B1;">321</td>
                                        </tr>
                                         <tr class="trnocolor">
                                            <td class="alignright trnocolor">Total Disciplinary Actions</td>
                                            <td class="trnocolor" colspan="2"></td>
                                             <td class="trnocolor" style="border-top: 1px solid black ! important;">114</td>
                                            <td class="aligncenter trnocolor" style="border-top: 1px solid black ! important;">1,105</td>
                                        </tr>
                                         <tr class="alterbgcolor" style="border-top:2px solid black;">
                                            <td class="alignright" style="font-size: 14px;">ACTIVE CERTIFICATIONS</td>
                                            <td colspan="2"></td>
                                             <td style="border-top: 1px solid black ! important;">324</td>
                                            <td class="aligncenter" style="border-top: 1px solid black ! important;">51,468</td>
                                        </tr>
                                        <tr style="border-top:4px solid black;">
                                            <td class="alignright" style="font-size: 14px;">Applications for Certification Received</td>
                                            <td colspan="3"></td>
                                            <td class="aligncenter" style="border-top: 1px solid black ! important;">167,397</td>
                                        </tr>
                                        <tr class="alterbgcolor trnocolor">
                                            <td class="alignright trnocolor">Denied</td>
                                            <td>137</td>
                                             <td class="trnocolor" colspan="2"></td>
                                            <td class="aligncenter">5,252</td>
                                        </tr>
                                         <tr class="trnocolor">
                                            <td class="alignright trnocolor">Cancelled</td>
                                            <td>4</td>
                                             <td class="trnocolor" colspan="2"></td>
                                            <td class="aligncenter">40</td>
                                        </tr>
                                         <tr class="alterbgcolor trnocolor">
                                            <td class="alignright trnocolor">Purged &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2009/11</td>
                                            
                                             <td class="trnocolor" style="border-right:none !important" colspan="2"></td>
                                             <td class="trnocolor" >599</td>
                                            <td class="aligncenter trnocolor"></td>
                                        </tr>
                                         <tr class="trnocolor">
                                            <td class="alignright trnocolor">2012</td>
                                            
                                             <td class="trnocolor" style="border-right:none !important" colspan="2"></td>
                                             <td class="trnocolor" >199</td>
                                            <td class="aligncenter trnocolor"></td>
                                        </tr>

                                         <tr class="alterbgcolor trnocolor">
                                            <td class="alignright trnocolor">2013</td>
                                            
                                             <td class="trnocolor" style="border-right:none !important" colspan="2"></td>
                                             <td class="trnocolor" >217</td>
                                            <td class="aligncenter trnocolor"></td>
                                        </tr>
                                         <tr class=" trnocolor">
                                            <td class="alignright trnocolor">2014</td>
                                            
                                             <td class="trnocolor" style="border-right:none !important" colspan="2"></td>
                                             <td class="trnocolor" >184</td>
                                            <td class="aligncenter trnocolor"></td>
                                        </tr>
                                         <tr class="alterbgcolor trnocolor">
                                            <td class="alignright trnocolor">2015</td>
                                            
                                             <td class="trnocolor" style="border-right:none !important" colspan="2"></td>
                                             <td class="trnocolor" >163</td>
                                            <td class="aligncenter trnocolor"></td>
                                        </tr>

                                         <tr class=" trnocolor">
                                            <td class="alignright trnocolor">This Month / 2016</td>
                                            
                                             <td class="trnocolor" style="border-right:none !important"></td>
                                             <td class="trnocolor" style="border-right:none !important">11</td>
                                             <td class="trnocolor" >32</td>
                                            <td class="aligncenter trnocolor" ></td>
                                        </tr>

                                         <tr class="alterbgcolor" style=" border-top:2px solid black;">
                                            <td class="alignright" style="font-size: 13px;">Total Purged</td>
                                            
                                             <td class="trnocolor" style="border-right:none !important" colspan="3"></td>
                                            
                                            <td class="aligncenter">1,394</td>
                                        </tr>
                                </table>
                                                     </div>
                                             </div>
                                        </asp:Panel>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                      </div>
                  </div>
            </ContentTemplate>
         </asp:UpdatePanel>
</asp:Content>
