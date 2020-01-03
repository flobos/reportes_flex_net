<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_reporte_cuponera_individual.aspx.vb" Inherits="frm_reporte_cuponera_individual" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=11.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="reportes\rpt_cuponeras_individuales.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_dat_pag_idn" ConvertEmptyStringToNull="False"
                        DefaultValue="" Name="@dat_pag_idn" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
        &nbsp;
    
    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" DisplayGroupTree="False" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" Height="1355px" ReportSourceID="CrystalReportSource1" Width="761px" />
        <asp:TextBox ID="txt_dat_pag_idn" runat="server"></asp:TextBox>
    </form>
</body>
</html>
