<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_contrato_ingreso_pagare_ad_normal_distancia.aspx.vb" Inherits="frm_contrato_ingreso_pagare_ad_normal_distancia" %>

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
            <Report FileName="reportes\rpt_Pagare_ADM_NORMAL_Distancia.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="insc_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@insc_idn" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="pag_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@pag_idn" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="alu_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@alu_idn" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="pro_mal_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@pro_mal_idn" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="func_mod_fun_idn" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@func_mod_fun_idn" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="ara_tot" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@ara_tot" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="bec_tot" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@bec_tot" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="mat_tot" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@mat_tot" PropertyName="Text" ReportName="" /> 
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
        <asp:TextBox ID="insc_idn" runat="server" Visible="False"></asp:TextBox>
       <asp:TextBox ID="pag_idn" runat="server" Visible="False"></asp:TextBox>
       <asp:TextBox ID="alu_idn" runat="server" Visible="False"></asp:TextBox>
       <asp:TextBox ID="pro_mal_idn" runat="server" Visible="False"></asp:TextBox>
       <asp:TextBox ID="func_mod_fun_idn" runat="server" Visible="False"></asp:TextBox>
       <asp:TextBox ID="ara_tot" runat="server" Visible="False"></asp:TextBox>
       <asp:TextBox ID="bec_tot" runat="server" Visible="False"></asp:TextBox>
       <asp:TextBox ID="mat_tot" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>