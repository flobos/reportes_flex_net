<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_reporte_alumnos_deuda_campus_modalidad.aspx.vb" Inherits="frm_reporte_alumnos_deuda_campus_modalidad" %>

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
            <Report FileName="reportes\rpt_deuda_vencida_alumno.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_funcion_modalidad" ConvertEmptyStringToNull="False"
                        DefaultValue="" Name="@func_mod_fun_idn" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            DisplayGroupTree="False" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False"
            Height="816px" ReportSourceID="CrystalReportSource1" Width="1318px" />
        <asp:TextBox ID="txt_funcion_modalidad" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
