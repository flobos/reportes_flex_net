Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared

Partial Class frm_reporte_detalle_estado_pagos_recuadacion_sedes_campus_mod
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.txt_fecha1.Text = Me.Request.QueryString("fecha1").ToString
        Me.txt_fecha2.Text = Me.Request.QueryString("fecha2").ToString

        'Me.txt_fecha1.Text = "01/08/2008"
        'Me.txt_fecha2.Text = "24/08/2008"


        configura_reporte()
    End Sub
    Private Sub configura_reporte()

        Dim obj_1 As New cls_librerias
        Dim v_conexion_datos As ConnectionInfo = New ConnectionInfo()
        v_conexion_datos.DatabaseName = obj_1.v_base_datos
        v_conexion_datos.UserID = obj_1.v_usuario_servidor_datos
        v_conexion_datos.Password = obj_1.v_clave_servidor_datos
        v_conexion_datos.ServerName = obj_1.v_servidor_datos

        aplicar_info_login(v_conexion_datos)
    End Sub



    Private Sub aplicar_info_login(ByVal p_conexion_datos As ConnectionInfo)
        Dim info_login As TableLogOnInfos = CrystalReportViewer1.LogOnInfo
        For Each mi_info_login As TableLogOnInfo In info_login
            mi_info_login.ConnectionInfo = p_conexion_datos

        Next
    End Sub

End Class
