<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_reporte_cuadratura_caja.aspx.vb" Inherits="frm_reporte_cuadratura_caja" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=11.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="reportes\rpt_cuadratura_caja_diaria.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_sede" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@env_caj_idn" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" ReportSourceID="CrystalReportSource1" />
            
        <asp:TextBox ID="txt_sede"  Visible="false" runat="server"></asp:TextBox>
         <asp:TextBox ID="txt_fecha" Visible="false" runat="server"></asp:TextBox>
          <asp:TextBox ID="txt_plazo" Visible="false" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
