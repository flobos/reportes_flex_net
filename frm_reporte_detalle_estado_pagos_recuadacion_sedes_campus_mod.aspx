<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_reporte_detalle_estado_pagos_recuadacion_sedes_campus_mod.aspx.vb" Inherits="frm_reporte_detalle_estado_pagos_recuadacion_sedes_campus_mod" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=11.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            DisplayGroupTree="False" Height="799px" ReportSourceID="CrystalReportSource1"
            Width="2645px" />
        <asp:TextBox ID="txt_fecha1" runat="server"></asp:TextBox>
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="reportes\rpt_detalle_pagos_recaudacion_sedes_campus_modalidad.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_fecha1" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@fecha1" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="txt_fecha2" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@fecha2" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
        <asp:TextBox ID="txt_fecha2" runat="server"></asp:TextBox>
    </form>
</body>
</html>
