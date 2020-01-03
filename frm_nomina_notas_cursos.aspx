<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_nomina_notas_cursos.aspx.vb" Inherits="frm_nomina_notas_cursos" %>

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
            <Report FileName="reportes\rpt_nomina_notas_cursos.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="eje_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@eje_idn" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            DisplayGroupTree="False" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False"
            ReportSourceID="CrystalReportSource1" />
        &nbsp;
        <asp:TextBox ID="eje_idn" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
