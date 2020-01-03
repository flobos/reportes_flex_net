<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_reporte_resumen_cuadratura_cajas_sedes.aspx.vb" Inherits="frm_reporte_resumen_cuadratura_cajas_sedes" %>

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
            <Report FileName="reportes\rpt_resumen_cuadratura_caja_diaria_sedes.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_fecha" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@lot_fecha" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="txt_plazo" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@tip_pla_idn" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            DisplayGroupTree="False" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False"
            ReportSourceID="CrystalReportSource1" />
        &nbsp;
        <asp:TextBox ID="txt_plazo" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txt_fecha" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
