<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_reporte_boletas_sedes_nuevo.aspx.vb" Inherits="frm_reporte_boletas_sedes_nuevo" %>

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
            <Report FileName="reportes\rpt_cancelacion_boleteo_orden_de_pago_imprime_boleta_nuevo.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_bol_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@bol_idn" PropertyName="Text" ReportName="" />
                </Parameters>
                <DataSources>
                    <CR:DataSourceRef DataSourceID="SqlDataSource1" />
                </DataSources>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            DisplayGroupTree="False" Height="1105px" ReportSourceID="CrystalReportSource1"
            ReuseParameterValuesOnRefresh="True" Width="751px" PrintMode="ActiveX" EnableDatabaseLogonPrompt="False" HasDrillUpButton="False" HasGotoPageButton="False" HasPageNavigationButtons="False" HasSearchButton="False" HasToggleGroupTreeButton="False" HasViewList="False" HasZoomFactorList="False" HasCrystalLogo="False" />
        <asp:TextBox ID="txt_bol_idn" runat="server" Visible="False"></asp:TextBox>
       
    </form>
</body>
</html>
