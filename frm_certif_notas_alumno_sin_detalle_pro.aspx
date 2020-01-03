<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_certif_notas_alumno_sin_detalle_pro.aspx.vb" Inherits="frm_certif_notas_alumno_sin_detalle_pro" %>

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
            <Report FileName="reportes\rpt_certif_notas_alumno_sin_detalle_pro.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="mat_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@mat_idn" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="func_mod_fun_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@func_mod_fun_idn" PropertyName="Text" ReportName="" />
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
        <asp:TextBox ID="mat_idn" runat="server" Visible="False"></asp:TextBox>
       <asp:TextBox ID="func_mod_fun_idn" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>