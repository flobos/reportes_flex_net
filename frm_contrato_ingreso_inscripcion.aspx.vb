Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared

Partial Class frm_contrato_ingreso_inscripcion
    Inherits System.Web.UI.Page

    Private Sub configura_reporte()

        Dim obj_1 As New cls_librerias
        Dim v_conexion_datos As ConnectionInfo = New ConnectionInfo()
        v_conexion_datos.DatabaseName = obj_1.v_base_datos
        v_conexion_datos.UserID = obj_1.v_usuario_servidor_datos
        v_conexion_datos.Password = obj_1.v_clave_servidor_datos
        v_conexion_datos.ServerName = obj_1.v_servidor_datos

        aplicar_info_login(v_conexion_datos)
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.insc_idn.Text = Me.Request.QueryString("insc_idn").ToString
        Me.pag_idn.Text = Me.Request.QueryString("pag_idn").ToString
        Me.alu_idn.Text = Me.Request.QueryString("alu_idn").ToString
        Me.pro_mal_idn.Text = Me.Request.QueryString("pro_mal_idn").ToString
        Me.func_mod_fun_idn.Text = Me.Request.QueryString("func_mod_fun_idn").ToString
        Me.ara_tot.Text = Me.Request.QueryString("ara_tot").ToString
        Me.bec_tot.Text = Me.Request.QueryString("bec_tot").ToString
        Me.mat_tot.Text = Me.Request.QueryString("mat_tot").ToString
        configura_reporte()

    End Sub


    Private Sub aplicar_info_login(ByVal p_conexion_datos As ConnectionInfo)
        Dim info_login As TableLogOnInfos = CrystalReportViewer1.LogOnInfo
        For Each mi_info_login As TableLogOnInfo In info_login
            mi_info_login.ConnectionInfo = p_conexion_datos

        Next
    End Sub
End Class
