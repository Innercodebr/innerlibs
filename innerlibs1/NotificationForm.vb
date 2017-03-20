Imports System.Drawing
Imports System.Runtime.InteropServices
Imports System.Windows.Forms
Imports InnerLibs.FormAnimator

Public NotInheritable Class NotificationForm

#Region " Variables "

    ''' <summary>
    ''' The list of currently open NotificationForms.
    ''' </summary>
    Private Shared VisibleNotifications As New List(Of NotificationForm)

    ''' <summary>
    ''' Indicates whether the form can receive focus or not.
    ''' </summary>
    Private allowFocus As Boolean = False
    ''' <summary>
    ''' The object that creates the sliding animation.
    ''' </summary>
    Private animator As FormAnimator
    ''' <summary>
    ''' The handle of the window that currently has focus.
    ''' </summary>
    Private currentForegroundWindow As IntPtr

    Private CorrectPos As Point = Nothing

#End Region 'Variables

#Region " APIs "

    ''' <summary>
    ''' Gets the handle of the window that currently has focus.
    ''' </summary>
    ''' <returns>
    ''' The handle of the window that currently has focus.
    ''' </returns>
    <DllImport("user32")>
    Private Shared Function GetForegroundWindow() As IntPtr
    End Function

    ''' <summary>
    ''' Activates the specified window.
    ''' </summary>
    ''' <param name="hWnd">
    ''' The handle of the window to be focused.
    ''' </param>
    ''' <returns>
    ''' True if the window was focused; False otherwise.
    ''' </returns>
    <DllImport("user32")>
    Private Shared Function SetForegroundWindow(ByVal hWnd As IntPtr) As Boolean
    End Function

    ''' <summary>
    ''' Destroi todas as notifica��es criadas na aplica��o.
    ''' </summary>
    Public Shared Sub DestroyNotifications()
        Dim Notifications = New List(Of NotificationForm)
        For index = 0 To Application.OpenForms.Count - 1
            If GetType(NotificationForm) = Application.OpenForms.Item(index).GetType Then
                Notifications.Add(Application.OpenForms.Item(index))
            End If
        Next
        For index = 0 To Notifications.Count - 1
            Notifications(index).Dispose()
        Next
    End Sub


#End Region 'APIs

#Region " Constructors "

    ''' <summary>
    ''' Cria uma Nova Notifica��o
    ''' </summary>
    ''' <param name="Action">A��o disparada no clique do bot�o OK</param>

    Public Sub New(Optional ByRef Action As EventHandler = Nothing)
        InitializeComponent()
        If IsNothing(Action) Then
            Me.OKButton.AddClick(AddressOf Me.Close)
            Me.CloseButton.Visible = False
        Else
            Me.OKButton.AddClick(Action)
            Me.CloseButton.Visible = True
        End If
        Me.animator = New FormAnimator(Me, FormAnimator.AnimationMethod.Slide, OpenDirection, 500)
    End Sub

#End Region 'Constructors

#Region "Properties"

    ''' <summary>
    ''' Alinhamento do texto da notifica��o
    ''' </summary>
    ''' <returns></returns>
    Public Property TextAlign As ContentAlignment
        Get
            Return MessageLabel.TextAlign
        End Get
        Set(value As ContentAlignment)
            Me.MessageLabel.TextAlign = value
        End Set
    End Property


    ''' <summary>
    ''' Texto do Bot�o OK
    ''' </summary>
    ''' <returns></returns>
    Public Property OKButtonText As String
        Get
            Return OKButton.Text
        End Get
        Set(value As String)
            Me.OKButton.Text = value
        End Set
    End Property

    ''' <summary>
    ''' Tempo restante antes que a notifica��o seja fchada automaticamente
    ''' </summary>
    ''' <returns></returns>
    Public Property RemainTime As Integer = 0


    ''' <summary>
    ''' Valor que representa se o contador de segundos deve ser exibido na notifica��o
    ''' </summary>
    ''' <returns></returns>
    Public Property ShowRemainTime As Boolean = True


    ''' <summary>
    ''' Tamanho da notifica��o
    ''' </summary>
    ''' <returns></returns>
    Public Overloads Property Size As Size
        Get
            Return MyBase.Size
        End Get
        Set(value As Size)
            If value.Width > 0 And value.Height > 0 Then MyBase.Size = value
        End Set
    End Property

    ''' <summary>
    ''' Dire��o que a notifica��o desliza ao aparecer
    ''' </summary>
    ''' <returns></returns>
    Public Property OpenDirection As AnimationDirection = AnimationDirection.Up
    ''' <summary>
    ''' Dire��o que a notifica��o desliza ao ser fechada
    ''' </summary>
    ''' <returns></returns>
    Public Property CloseDirection As AnimationDirection = AnimationDirection.Down
#End Region

#Region " Methods "

    ''' <summary>
    ''' Exibe a notifica��o
    ''' </summary>
    Public Shadows Sub Show(Optional Seconds As Integer = 0, Optional ShowRemainTime As Boolean = False)
        Label1.Text = ""
        Me.ShowRemainTime = ShowRemainTime
        Me.animator.Direction = OpenDirection
        'Determine the current foreground window so it can be reactivated each time this form tries to get the focus.
        Me.currentForegroundWindow = GetForegroundWindow()
        Seconds = Seconds.SetMinValue(-1)
        RemainTime = RemainTime + Seconds

        'Start counting down the form's liftime.
        If RemainTime > 0 Then
            Me.lifeTimer.Start()
            Me.Label1.Visible = ShowRemainTime
        End If

        'Display the form.
        If Not Me.Visible Then
            For Each openForm As NotificationForm In NotificationForm.VisibleNotifications  'Move each open form upwards to make room for this one.
                openForm.Top -= Me.Height + 5
            Next
            MyBase.Show()
            NotificationForm.VisibleNotifications.Add(Me)
        End If

        Me.animator.Direction = CloseDirection
    End Sub

#End Region 'Methods

#Region " Event Handlers "



    Private Sub NotificationForm_Activated(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Activated
        'Prevent the form taking focus when it is initially shown.
        If Not Me.allowFocus Then
            'Activate the window that previously had the focus.
            SetForegroundWindow(Me.currentForegroundWindow)
        End If
    End Sub

    Private Sub NotificationForm_Shown(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Shown
        'Once the animation has completed the form can receive focus.
        Me.allowFocus = True
    End Sub

    Private Sub NotificationForm_FormClosed(ByVal sender As Object, ByVal e As FormClosingEventArgs) Handles MyBase.FormClosing
        Me.animator.Direction = CloseDirection
        'Move down any open forms above this one.
        For Each openForm As NotificationForm In NotificationForm.VisibleNotifications
            If openForm Is Me Then
                e.Cancel = True
                Me.Hide()
                NotificationForm.VisibleNotifications.Remove(Me)
                Exit For
            End If
            openForm.Top += Me.Height + 5
        Next
    End Sub

    Private Sub lifeTimer_Tick(ByVal sender As Object, ByVal e As EventArgs) Handles lifeTimer.Tick
        Label1.Visible = RemainTime > 0 And ShowRemainTime
        Select Case RemainTime
            Case 0
                Me.lifeTimer.Stop()
                Me.animator.Direction = CloseDirection
                Me.Close()
            Case Is < 0
                Me.lifeTimer.Stop()
            Case Else
                RemainTime.Decrement
                Label1.Text = RemainTime + 1
        End Select
    End Sub


    Private Sub NotificationForm_TextChanged(sender As Object, e As EventArgs) Handles Me.TextChanged, lifeTimer.Tick
        MessageLabel.Text = Me.Text.Replace("##RemainTime##", Me.Label1.Text)
    End Sub

    Private Sub CancelButton_Click(sender As Object, e As EventArgs) Handles CloseButton.Click
        Me.animator.Direction = CloseDirection
        If Me.RemainTime = 0 Then
            Me.Close()
        Else
            Me.RemainTime = 0
        End If

    End Sub

    Private Sub NotificationForm_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Display the form just above the system tray.
        CorrectPos = New Point(Screen.PrimaryScreen.WorkingArea.Width - Me.Width - 5, Screen.PrimaryScreen.WorkingArea.Height - Me.Height - 5)
        Me.Location = CorrectPos
    End Sub


#End Region 'Event Handlers

End Class