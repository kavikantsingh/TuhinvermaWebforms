<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Individual/MasterPage/Payment.Master" AutoEventWireup="true"
    CodeFile="ConfirmationPage.aspx.cs" Inherits="ConfirmationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    <script>

        function printDiv() {
            // alert('hi');
            var id = 'divprint';
            var html = ''; // $(id).html();
            html += '<body onload="window.focus(); window.print()">' + $("#" + id).html() +
        '<style> @media print { ' +
        '.whiteBg { background: #fff; border: 1px solid #ddd; border-radius: 8px; overflow: hidden; min-height: 300px; margin: 21px auto 91px auto; } .width760 { width: 760px !important; } h2 { font-family:  cursive; font-size: 25px; font-weight: normal; } .pdng12 { padding: 10px; } .fltlft { float: left; } .fltrt { float: right; } .gridUpperDiv { background: #eee; padding: 4px; border-radius: 8px 8px 0px 0px; border: 1px solid #ddd; overflow: hidden; } fieldset { margin: 0; padding: 0; border: 0; outline: 0; } table.grid { text-align: center; background: #fff; width: 100%; border: 0px; } table.grid th, table.grid td { font-size: 14px !important; } table.grid th { background: #0D83DD; line-height: 15px; border: 1px solid #0D83DD; text-align: center; font-size: 11px !important; font-weight: normal; color: white; height: 35px; } .grid tr td:first-child { border-left: 1px solid #eee; } table.grid td { line-height: 25px; border: none; padding: 2px 3px; vertical-align: middle; font-size: 11px; font-weight: normal; } .gridBottomDiv { background: #eee; padding: 8px; border-radius: 0px 0px 8px 8px; border: 1px solid #ddd; overflow: hidden; } input[type="button"].primary:hover, input[type="submit"].primary:hover, .quickNav1:hover, input[type="button"].secondary:hover, input[type="submit"].secondary:hover, .btnGrid:hover, a.primary:hover, a.secondary:hover { background-image: none; -moz-box-shadow: inset 0px 1px 4px rgba(0, 0, 0, 0.3), 0px 1px 0px rgba(255,255,255,.5); -webkit-box-shadow: inset 0px 1px 4px rgba(0, 0, 0, 0.3), 0px 1px 0px rgba(255,255,255,.5); box-shadow: inset 0px 1px 4px rgba(0, 0, 0, 0.3), 0px 1px 0px rgba(255,255,255,.5); } input[type="submit"].secondary, input[type="button"].secondary, .inputButton.secondary { color: #565E67; border: 1px solid #A3A6A8; background-color: #D4D8DB; background-image: -webkit-gradient(linear, left top, left bottom, from(#E7EBEE), to(#D4D8DB)); background-image: -webkit-linear-gradient(top, #E7EBEE, #D4D8DB); background-image: -moz-linear-gradient(top, #E7EBEE, #D4D8DB); background-image: -ms-linear-gradient(top, #E7EBEE, #D4D8DB); background-image: -o-linear-gradient(top, #E7EBEE, #D4D8DB); background-image: linear-gradient(top, #E7EBEE, #D4D8DB); text-shadow: 0px 1px 0px white; } .decreaseHeight2 { padding: 0 30px !important; height: 36px !important; line-height: 36px !important; } .greenButton { background: rgb(143,200,0) !important; background: -moz-linear-gradient(top, rgba(143,200,0,1) 0%, rgba(101,182,0,1) 100%) !important; background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(143,200,0,1)), color-stop(100%,rgba(101,182,0,1))) !important; background: -webkit-linear-gradient(top, rgba(143,200,0,1) 0%,rgba(101,182,0,1) 100%) !important; background: -o-linear-gradient(top, rgba(143,200,0,1) 0%,rgba(101,182,0,1) 100%) !important; background: -ms-linear-gradient(top, rgba(143,200,0,1) 0%,rgba(101,182,0,1) 100%) !important; background: linear-gradient(to bottom, rgba(143,200,0,1) 0%,rgba(101,182,0,1) 100%) !important; text-shadow: none !important; border-color: #358535 !important; padding: 0 40px; height: 40px; line-height: 40px; text-align: center; font-size: 16px; cursor: pointer; color: #fff !important; } .btn, .secondary, input[type="button"].primary, input[type="submit"].primary, .inputButton.secondary { display: inline-block; padding: 8px 15px; margin: 0; font: normal normal bold 14px/14px Arial, sans-serif; -moz-border-radius: 6px; -webkit-border-radius: 6px; border-radius: 6px; -moz-background-clip: padding; -webkit-background-clip: padding-box; background-clip: padding-box; text-decoration: none; -webkit-user-select: none; -khtml-user-select: none; -o-user-select: none; user-select: none; -webkit-box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7); box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7); box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7); cursor: pointer; } .primary.btn, input[type="button"].primary, input[type="submit"].primary { color: white; border: 1px solid #1F3D5C; background-color: #304A64; background-image: -webkit-gradient(linear, left top, left bottom, from(#3F6483), to(#2E6499)); background-image: -webkit-linear-gradient(top, #3F6483, #304A64); background-image: -moz-linear-gradient(top, #3F6483, #304A64); background-image: -ms-linear-gradient(top, #3F6483, #304A64); background-image: -o-linear-gradient(top, #3F6483, #304A64); background-image: linear-gradient(top, #3F6483, #304A64); text-shadow: 0px -1px 0px black; } .decreaseHeight2 { padding: 0 30px !important; height: 36px !important; line-height: 36px !important; } input[type="button"], input[type="submit"], input[type="reset"], input[type="file"]::-webkit-file-upload-button, button { padding: 1px 6px; } .clear { clear: both; }'

            + '}' +
            +'.primary,.secondary{'
           + 'display:none !important;'
          + ' }' +
            '</style>' +
         '</body>';
            var w = window.open("", "print");
            if (w) { w.document.write(html); w.document.close() }



        }
    </script>--%>
    <div class="mrgnAuto width760">
        <br />
        <div class="clear" style="overflow: hidden">
            <span class="fltrt">
                <asp:HyperLink ID="hplPrintAppllication" Style="height: 34px !important; line-height: 34px !important; position: relative; top: 2px;"
                    Target="_blank" runat="server" CssClass="secondary greenButton decreaseHeight2">Print Application</asp:HyperLink>
                &nbsp;
                <asp:HyperLink ID="hplPrintReceipt" Style="height: 34px !important; line-height: 34px !important; position: relative; top: 2px;"
                    Target="_blank" runat="server" CssClass="secondary greenButton decreaseHeight2">Print Receipt</asp:HyperLink>
                &nbsp;<asp:Button ID="btnBackToHome" runat="server" CssClass="primary decreaseHeight2"
                    Text="Back To Home" OnClick="btnBackToHome_Click" /></span>
        </div>
        <br />
    </div>
    <div class="whiteBg width760" id="divprint">
        <style>
            .whiteBg {
                background: #fff;
                border-radius: 8px;
                overflow: hidden;
                min-height: 300px;
                margin: 21px auto 91px auto;
            }

            .width760 {
                width: 780px !important;
            }

            h2 {
                font-family: 'Microsoft Tai Le', cursive;
                font-size: 25px;
                font-weight: normal;
            }

            .pdng12 {
                padding: 10px;
            }

            .fltlft {
                float: left;
            }

            .fltrt {
                float: right;
            }

            .gridUpperDiv {
                background: #eee;
                padding: 4px;
                border-radius: 8px 8px 0px 0px;
                border: 1px solid #ddd;
                overflow: hidden;
            }

            fieldset {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
            }

            table.grid {
                text-align: center;
                background: #fff;
                width: 100%;
                border: 0px;
            }

                table.grid th, table.grid td {
                    font-size: 14px !important;
                }

                table.grid th {
                    background: #0D83DD;
                    line-height: 15px;
                    border: 1px solid #0D83DD;
                    text-align: center;
                    font-size: 11px !important;
                    font-weight: normal;
                    color: white;
                    height: 35px;
                }

            .grid tr td:first-child {
                border-left: 1px solid #eee;
            }

            table.grid td {
                line-height: 25px;
                border: none;
                padding: 2px 3px;
                vertical-align: middle;
                font-size: 11px;
                font-weight: normal;
            }

            .gridBottomDiv {
                background: #eee;
                padding: 8px;
                border-radius: 0px 0px 8px 8px;
                border: 1px solid #ddd;
                overflow: hidden;
            }

            input[type="button"].primary:hover, input[type="submit"].primary:hover, .quickNav1:hover, input[type="button"].secondary:hover, input[type="submit"].secondary:hover, .btnGrid:hover, a.primary:hover, a.secondary:hover {
                background-image: none;
                -moz-box-shadow: inset 0px 1px 4px rgba(0, 0, 0, 0.3), 0px 1px 0px rgba(255,255,255,.5);
                -webkit-box-shadow: inset 0px 1px 4px rgba(0, 0, 0, 0.3), 0px 1px 0px rgba(255,255,255,.5);
                box-shadow: inset 0px 1px 4px rgba(0, 0, 0, 0.3), 0px 1px 0px rgba(255,255,255,.5);
            }

            input[type="submit"].secondary, input[type="button"].secondary, .inputButton.secondary {
                color: #565E67;
                border: 1px solid #A3A6A8;
                background-color: #D4D8DB;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#E7EBEE), to(#D4D8DB));
                background-image: -webkit-linear-gradient(top, #E7EBEE, #D4D8DB);
                background-image: -moz-linear-gradient(top, #E7EBEE, #D4D8DB);
                background-image: -ms-linear-gradient(top, #E7EBEE, #D4D8DB);
                background-image: -o-linear-gradient(top, #E7EBEE, #D4D8DB);
                background-image: linear-gradient(top, #E7EBEE, #D4D8DB);
                text-shadow: 0px 1px 0px white;
            }

            .decreaseHeight2 {
                padding: 0 30px !important;
                height: 36px !important;
                line-height: 36px !important;
            }

            .greenButton {
                background: rgb(143,200,0) !important;
                background: -moz-linear-gradient(top, rgba(143,200,0,1) 0%, rgba(101,182,0,1) 100%) !important;
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(143,200,0,1)), color-stop(100%,rgba(101,182,0,1))) !important;
                background: -webkit-linear-gradient(top, rgba(143,200,0,1) 0%,rgba(101,182,0,1) 100%) !important;
                background: -o-linear-gradient(top, rgba(143,200,0,1) 0%,rgba(101,182,0,1) 100%) !important;
                background: -ms-linear-gradient(top, rgba(143,200,0,1) 0%,rgba(101,182,0,1) 100%) !important;
                background: linear-gradient(to bottom, rgba(143,200,0,1) 0%,rgba(101,182,0,1) 100%) !important;
                text-shadow: none !important;
                border-color: #358535 !important;
                padding: 0 40px;
                height: 40px;
                line-height: 40px;
                text-align: center;
                font-size: 16px;
                cursor: pointer;
                color: #fff !important;
            }

            .btn, .secondary, input[type="button"].primary, input[type="submit"].primary, .inputButton.secondary {
                display: inline-block;
                padding: 8px 15px;
                margin: 0;
                font: normal normal bold 14px/14px Arial, sans-serif;
                -moz-border-radius: 6px;
                -webkit-border-radius: 6px;
                border-radius: 6px;
                -moz-background-clip: padding;
                -webkit-background-clip: padding-box;
                background-clip: padding-box;
                text-decoration: none;
                -webkit-user-select: none;
                -khtml-user-select: none;
                -o-user-select: none;
                user-select: none;
                -webkit-box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7);
                box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7);
                box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7);
                cursor: pointer;
            }

            .primary.btn, input[type="button"].primary, input[type="submit"].primary {
                color: white;
                border: 1px solid #1F3D5C;
                background-color: #304A64;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#3F6483), to(#2E6499));
                background-image: -webkit-linear-gradient(top, #3F6483, #304A64);
                background-image: -moz-linear-gradient(top, #3F6483, #304A64);
                background-image: -ms-linear-gradient(top, #3F6483, #304A64);
                background-image: -o-linear-gradient(top, #3F6483, #304A64);
                background-image: linear-gradient(top, #3F6483, #304A64);
                text-shadow: 0px -1px 0px black;
            }

            .decreaseHeight2 {
                padding: 0 30px !important;
                height: 36px !important;
                line-height: 36px !important;
            }

            input[type="button"], input[type="submit"], input[type="reset"], input[type="file"]::-webkit-file-upload-button, button {
                padding: 1px 6px;
            }

            .clear {
                clear: both;
            }

            .totalamountdiv {
                padding: 25px 10px 10px 10px;
                width: 680px;
                margin: 0 auto;
            }
        </style>
        <div class=" mrgnAuto width670">
            <h2 style="font-size: 16px; padding: 20px; line-height: 24px;">
                <asp:Literal ID="ltrTransuction" Text="Transaction Successfull (Test Mode)" runat="server">
                </asp:Literal></h2>
            <hr />
            <div class="clear" style="margin-top: 14px;">
                <table class="pdng12 " style="margin: 0 auto; width: 560px; display: none;">
                    <tr>
                        <td style="text-align: right; width: 155px;">
                            <label class="input-label">
                                Application Name :
                            </label>
                        </td>
                        <td>
                            <b>
                                <asp:Literal ID="ltrApllicationName" Text="Invalid Transaction" runat="server"></asp:Literal></b>
                        </td>
                        <td style="text-align: right;">
                            <label class="input-label">
                                Application No :
                            </label>
                        </td>
                        <td style="width: 155px;">
                            <b>
                                <asp:Literal ID="ltrApllicationNumber" Text="Invalid Transaction" runat="server"></asp:Literal></b>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 155px;">
                            <label class="input-label">
                                Order No :
                            </label>
                        </td>
                        <td>
                            <b>
                                <asp:Literal ID="ltrOrderNo" Text="Invalid Transaction" runat="server"></asp:Literal></b>
                        </td>
                        <td style="text-align: right;">
                            <label class="input-label">
                                Reference # :
                            </label>
                        </td>
                        <td style="width: 155px;">
                            <b>
                                <asp:Literal ID="ltrReferenceNumber" Text="Invalid Transaction" runat="server"></asp:Literal></b>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">
                            <label class="input-label">
                                Transaction Date :
                            </label>
                        </td>
                        <td>
                            <b>
                                <asp:Literal ID="ltrTransactionDate" Text="Invalid Transaction" runat="server"></asp:Literal></b>
                        </td>
                        <td style="text-align: right;">
                            <label class="input-label">
                                Transaction Time :
                            </label>
                        </td>
                        <td>
                            <b>
                                <asp:Literal ID="ltrTransactionTime" Text="Invalid Transaction" runat="server"></asp:Literal></b>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">
                            <label class="input-label">
                                Application Fees :
                            </label>
                        </td>
                        <td>
                            <b>
                                <asp:Literal ID="ltrAmount" Text="Invalid Transaction" runat="server"></asp:Literal></b>
                        </td>
                        <td style="text-align: right;">
                            <label class="input-label">
                                Convenience Fee :
                            </label>
                        </td>
                        <td style="text-align: left;">
                            <b>
                                <asp:Literal ID="ltrTransactionfee" Text="Invalid Transaction" runat="server"></asp:Literal></b>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="clear ">
            </div>
            <div class="totalamountdiv">
                <p style="font-size: 17px;">
                    Total amount charged : <b><span>
                        <asp:Literal ID="ltrChargedFromCard" Text="$5.00" runat="server"></asp:Literal></span></b>
                </p>
                <br />
                <p>
                    The CALIFORNIA MASSAGE THERAPY COUNCIL fees are NOT REFUNDABLE. The Application
                    Fee expires in 12 months and the Background Check Fee expires in 6 months.
                </p>
                <br />
                <p>
                    <b><span>Thank you for using our website for application submission.</span></b>
                </p>
                <br />
                <p>
                    <b><span>CALIFORNIA MASSAGE THERAPY COUNCIL</span></b><br />
                    <a href="javascript:void(0)" target="_blank">http://camtc.org.in/</a>
                </p>
            </div>
            <div class="clear">
                <br />
                <br />
            </div>
            <div style="text-align: center; display: none;">
                <asp:Button ID="btnlogin" runat="server" Text="Back to Application" CssClass="secondary greenButton decreaseHeight2" />
            </div>
        </div>
        <div class="">
        </div>
        &nbsp;
    </div>
</asp:Content>
