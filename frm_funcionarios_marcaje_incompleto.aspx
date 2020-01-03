<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_funcionarios_marcaje_incompleto.aspx.vb" Inherits="frm_funcionarios_marcaje_incompleto" %>

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
            <Report FileName="reportes\rpt_funcionarios_marcaje_incompleto.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_fecha_inicio" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@fecha_inicio" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="txt_fecha_final" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@fecha_final" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            DisplayGroupTree="False" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False"
            ReportSourceID="CrystalReportSource1" />
        &nbsp;
        <asp:TextBox ID="txt_fecha_inicio" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txt_fecha_final" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
