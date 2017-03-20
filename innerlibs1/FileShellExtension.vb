﻿Imports System.IO
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports Microsoft.Win32

Public Module FileContextMenu
    ''' <summary>
    ''' Adciona opções customizadas ao menu de contexto do windows
    ''' </summary>
    ''' <param name="FileType">Extensão do arquivo</param>
    ''' <param name="ShellKeyName">Nome da chave de Registro</param>
    ''' <param name="MenuText">Texto do Menu</param>
    ''' <param name="MenuCommand">Comando do Menu</param>
    ''' <returns>TRUE se conseguir reistrar</returns>
    Public Function Register(FileType As String, ShellKeyName As String, MenuText As String, MenuCommand As String) As Boolean
        Try
            Dim regPath As String = String.Format("{0}\shell\{1}", FileType, ShellKeyName)
            Using key As RegistryKey = Registry.ClassesRoot.CreateSubKey(regPath)
                key.SetValue(Nothing, MenuText)
            End Using
            Using key As RegistryKey = Registry.ClassesRoot.CreateSubKey(String.Format("{0}\command", regPath))
                key.SetValue(Nothing, MenuCommand)
            End Using
            Return True
        Catch ex As Exception
            Return False
        End Try

    End Function

    ''' <summary>
    ''' Remove uma opção customizada do menu de contexto do windows
    ''' </summary>
    ''' <param name="FileType">Extensão do arquivo</param>
    ''' <param name="ShellKeyName">Nome da chave de Registro</param>
    ''' <returns>TRUE se conseguir remover</returns>
    Public Function Unregister(FileType As String, ShellKeyName As String) As Boolean
        Try
            Debug.Assert(Not String.IsNullOrEmpty(FileType) AndAlso Not String.IsNullOrEmpty(ShellKeyName))
            Dim regPath As String = String.Format("{0}\shell\{1}", FileType, ShellKeyName)
            Registry.ClassesRoot.DeleteSubKeyTree(regPath)
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function
End Module


Public Module Startup

    Private runKey As String = "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
    Private startupKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.LocalMachine.OpenSubKey(runKey)

    <Extension()>
    Public Sub AddToWindowsStartup(MyApplication As Application, AppName As String)
        If startupKey.GetValue(AppName) = Nothing Then
            startupKey.Close()
            startupKey = Microsoft.Win32.Registry.LocalMachine.OpenSubKey(runKey, True)
            startupKey.SetValue(Path.GetFileNameWithoutExtension(Application.ExecutablePath.ToString()), Application.ExecutablePath.ToString())
            startupKey.Close()
        End If
    End Sub
    <Extension>
    Public Sub RemoveFromWindowsStartup(MyApplication As Application, AppName As String)
        startupKey = Microsoft.Win32.Registry.LocalMachine.OpenSubKey(runKey, True)
        startupKey.DeleteValue(Path.GetFileNameWithoutExtension(Application.ExecutablePath.ToString()), False)
        startupKey.Close()
    End Sub



End Module
