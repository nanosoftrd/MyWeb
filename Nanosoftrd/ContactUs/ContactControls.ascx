<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactControls.ascx.cs" Inherits="Nanosoftrd.ContactUs.ContactControls" %>

<style type="text/css">
    .auto-style5 {
        height: 26px;
    }
    .auto-style7 {
        width: 193px;
    }
    .auto-style10 {
        width: 330px;
        height: 26px;
    }
    .auto-style13 {
        width: 568px;
    }
    .auto-style14 {
        width: 563px;
    }
    .auto-style15 {
        width: 330px;
    }
    .auto-style16 {
        width: 191px;
    }
    .auto-style18 {
        width: 707px;
        height: 26px;
    }
    .auto-style20 {
        width: 707px;
    }
</style>

<asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit" >
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID ="lbl2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large">Fill the Following to Send Mail</asp:Label>
     <br />
     <br />
    <table style="width: 1128px; clip: rect(auto, auto, auto, auto);">
       
        <tr>
             <td class="auto-style20"></td>
        </tr>
       
        <tr>
            <td class="auto-style20"></td>
        </tr>
       
        <tr>
            <td class="auto-style18" style="text-align:right">
               <label>Your Name</label>&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" 
                    ControlToValidate="YourName"
                    ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style10">
                
                <asp:TextBox ID="YourName" runat="server" BackColor="White" BorderColor="#3399FF" BorderStyle="Ridge" Width="250px" />
                
            </td>
            
            <td class="auto-style5">
                </td>
        </tr>
        <tr>
            <td class="auto-style18" style="text-align:right">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align:right">
                <label>Your Email Address</label>&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" 
                    ControlToValidate="YourEmail"
                     ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style15">
                <asp:TextBox ID="YourEmail" runat="server" BackColor="White" BorderColor="#3399FF" BorderStyle="Ridge" Width="250px" />
            </td>
           <td class="auto-style14">
              
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="YourEmail" Display="Dynamic" SetFocusOnError="true" 
            Text="Example: username@gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="save" ></asp:RegularExpressionValidator>
              
           </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align:right">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align:right">
                <label>Mobile No.</label>&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" 
                    ControlToValidate="YourMobile"
                    ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style15">
                <asp:TextBox ID="YourMobile" runat="server" BackColor="White" BorderColor="#3399FF" BorderStyle="Ridge" Width="250px" />
            </td>
            <td class="auto-style13">
                 &nbsp;</td>
       </tr>
        <tr>
            <td class="auto-style20" style="text-align:right">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align:right">
                <label>Subject</label>&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                     ErrorMessage="*"
                     ControlToValidate="YourSubject"
                     ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style15">
                <asp:TextBox ID="YourSubject" runat="server" BackColor="White" BorderColor="#3399FF" BorderStyle="Ridge" Width="250px" />
            </td>
            <td class="auto-style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align:right">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align:right">
                <label>Comments</label>&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*" 
                    ControlToValidate="Comments"
                     ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style15">
                <asp:TextBox ID="Comments" runat="server" BackColor="White" BorderColor="#3399FF" BorderStyle="Ridge" Height="79px" Rows="10" TextMode="MultiLine" Width="260px" />
            </td>
            
            <td class="auto-style13">
                 &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align:right">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
        </tr>
        <tr style="text-align:center">
            <td colspan="3" style="text-align:center">
                &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="save" Width="122px" Height="26px"  Font-Size="20px" Font-Bold ="True" Font-Italic="False" ForeColor="White" BackColor="#3399FF" OnClick="btnSubmit_Click" BorderStyle="None" />
            </td>
        </tr>
        <tr style="text-align:center">
            <td class="auto-style16" colspan="3" style="text-align:center">&nbsp;</td>
        </tr>
        <tr style="text-align:center">
            <td colspan="3" style="text-align:center">
                
                <asp:Label ID="lblMsgSend" runat="server" Visible="False" ForeColor="#009900" />
            </td>
        </tr>
    </table>

</asp:Panel>