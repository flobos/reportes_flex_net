<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_emision_credencial_alumno.aspx.vb" Inherits="frm_emision_credencial_alumno" %>

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
            <Report FileName="reportes\rpt_credencial_tipo_sin borde_final.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_env_numero" ConvertEmptyStringToNull="False"
                        DefaultValue="" Name="@env_numero" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="txt_pro_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@pro_idn" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
        &nbsp;</div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            ReportSourceID="CrystalReportSource1" />
        <asp:TextBox ID="txt_pro_idn" runat="server"></asp:TextBox>
        <asp:TextBox ID="txt_env_numero" runat="server"></asp:TextBox>
    </form>
</body>
</html>
