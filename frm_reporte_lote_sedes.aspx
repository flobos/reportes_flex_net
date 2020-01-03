<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_reporte_lote_sedes.aspx.vb" Inherits="frm_reporte_lote_sedes" %>

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
            <Report FileName="reportes\rpt_pago_lote_particular.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="txt_lot_pag_idn" ConvertEmptyStringToNull="False"
                        DefaultValue="" Name="@lot_pag_idn" PropertyName="Text" ReportName="" />
                </Parameters>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            DisplayGroupTree="False" EnableDatabaseLogonPrompt="False" HasCrystalLogo="False"
            HasDrillUpButton="False" HasGotoPageButton="False" HasPageNavigationButtons="False"
            HasSearchButton="False" HasToggleGroupTreeButton="False" HasViewList="False"
            HasZoomFactorList="False" Height="1105px" PrintMode="ActiveX" ReportSourceID="CrystalReportSource1"
            ReuseParameterValuesOnRefresh="True" Width="751px" />
    
    <asp:TextBox ID="txt_lot_pag_idn" runat="server" Visible="False"></asp:TextBox>        
    </form>
    
</body>
</html>
