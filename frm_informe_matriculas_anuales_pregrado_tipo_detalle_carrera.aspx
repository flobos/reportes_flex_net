<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frm_informe_matriculas_anuales_pregrado_tipo_detalle_carrera.aspx.vb" Inherits="frm_informe_matriculas_anuales_pregrado_tipo_detalle_carrera" %>
 
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
            <Report FileName="reportes\rpt_matriculas_anuales_pregrado_tipo_detalle_carrera.rpt">
                <Parameters>
                    <CR:ControlParameter ControlID="fecha" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@fecha" PropertyName="Text" ReportName="" />
                    <CR:ControlParameter ControlID="eje_ano" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@eje_ano" PropertyName="Text" ReportName="" /> 
                    <CR:ControlParameter ControlID="cam_nombre" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@cam_nombre" PropertyName="Text" ReportName="" />    
                    <CR:ControlParameter ControlID="car_nombre" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@car_nombre" PropertyName="Text" ReportName="" /> 
                    <CR:ControlParameter ControlID="eje_ano_def" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@eje_ano_def" PropertyName="Text" ReportName="" />   
                    <CR:ControlParameter ControlID="tip_cla_mat_nombre" ConvertEmptyStringToNull="False" DefaultValue=""
                        Name="@tip_cla_mat_nombre" PropertyName="Text" ReportName="" />       
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
        <asp:TextBox ID="fecha" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="eje_ano" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="cam_nombre" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="car_nombre" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="eje_ano_def" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="tip_cla_mat_nombre" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>