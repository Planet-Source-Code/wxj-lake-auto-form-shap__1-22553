VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   5085
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form1.frx":000C
   ScaleHeight     =   339
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   314
   StartUpPosition =   2  'CenterScreen
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_DblClick()
Unload Me
End Sub

Private Sub Form_Load()
'Me.Show
Dim t As Single
Dim rtn As Long
'  rtn = GetWindowLong(hwnd, GWL_EXSTYLE)
'  rtn = rtn Or WS_EX_LAYERED
'  SetWindowLong hwnd, GWL_EXSTYLE, rtn
'  SetLayeredWindowAttributes hwnd, 0, 192, LWA_ALPHA
'SetLayeredWindowAttributes hwnd, &H0, 0, LWA_COLORKEY

t = Timer

If Me.Picture <> 0 Then
  Call SetAutoRgn(Me)
End If

MsgBox "lapsed time: " & Timer - t & "sec", vbInformation

End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = vbLeftButton Then
  ReleaseCapture
  SendMessage Me.hwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
End If
End Sub

