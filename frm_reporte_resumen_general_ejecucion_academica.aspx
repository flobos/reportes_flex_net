<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_reporte_resumen_general_ejecucion_academica.aspx.vb" Inherits="frm_reporte_resumen_general_ejecucion_academica" %>

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
            <Report FileName="reportes\rpt_resumen_ejecucion_academica.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_eje_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@eje_idn" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
            
    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" Height="1327px"
            ReportSourceID="CrystalReportSource1" Width="901px" />
            <asp:TextBox ID="txt_eje_idn" runat="server"></asp:TextBox>
    </form>
</body>
</html>
