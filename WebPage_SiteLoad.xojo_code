#tag WebPage
Begin WebPage WebPage_SiteLoad
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   900
   HelpTag         =   ""
   HorizontalCenter=   0
   ImplicitInstance=   False
   Index           =   -2147483648
   IsImplicitInstance=   False
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   MinHeight       =   900
   MinWidth        =   1600
   Style           =   "None"
   TabOrder        =   0
   Title           =   "Browse Drug Test Program"
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   1600
   ZIndex          =   1
   _DeclareLineRendered=   False
   _HorizontalPercent=   0.0
   _ImplicitInstance=   False
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _OpenEventFired =   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin WebLabel Label_NotAllowed
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   169
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   531
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   0
      Text            =   "You do not have permissions to login to this program.\r\nPlease contact IT."
      TextAlign       =   2
      Top             =   81
      VerticalCenter  =   0
      Visible         =   False
      Width           =   538
      ZIndex          =   1
      _DeclareLineRendered=   False
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  
		  //Call this immediately whenever this webpage is loaded.
		  DisplayOperatorSubmitPages()
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub DisplayOperatorSubmitPages()
		  //Show the web page based on a list of supported browsers 
		  Select Case Session.Browser
		  Case WebSession.BrowserType.Android
		    NextPage_Mobile = New WebPage_Mobile
		    NextPage_Mobile.Show
		  Case WebSession.BrowserType.Blackberry
		    NextPage_Mobile = New WebPage_Mobile
		    NextPage_Mobile.Show
		  Case WebSession.BrowserType.Chrome
		    
		    //Use this debug feature to turn on or off mobile pages quickly.
		    if App.debugMode Then 
		      
		      if App.debugMobile Then
		        //Test Mobile
		        NextPage_Mobile = New WebPage_Mobile
		        NextPage_Mobile.Show
		      Else
		        //Test Desktop
		        NextPage_Desktop = New WebPage_Desktop
		        NextPage_Desktop.Show
		      End if
		    Else
		      
		      //Due to nature of Chrome browser unable to detect Phone or desktops, we must check the plateform
		      //If you test this on a desktop with mobile debug, it will detect it as a desktop application.
		      if Session.Platform = WebSession.PlatformType.iPhone or _
		        Session.Platform = WebSession.PlatformType.Blackberry or _
		        Session.Platform = WebSession.PlatformType.AndroidPhone Then
		        
		        NextPage_Mobile = New WebPage_Mobile
		        NextPage_Mobile.Show
		      Else
		        NextPage_Desktop = New WebPage_Desktop
		        NextPage_Desktop.Show
		      End if
		    End if
		  Case WebSession.BrowserType.ChromeOS
		    NextPage_Desktop = New WebPage_Desktop
		    NextPage_Desktop.Show
		  Case WebSession.BrowserType.Firefox
		    NextPage_Desktop = New WebPage_Desktop
		    NextPage_Desktop.Show
		  Case WebSession.BrowserType.InternetExplorer
		    NextPage_Desktop = New WebPage_Desktop
		    NextPage_Desktop.Show
		  Case WebSession.BrowserType.Opera
		    NextPage_Desktop = New WebPage_Desktop
		    NextPage_Desktop.Show
		  Case WebSession.BrowserType.OperaMini
		    NextPage_Mobile = New WebPage_Mobile
		    NextPage_Mobile.Show
		  Case WebSession.BrowserType.Safari
		    NextPage_Desktop = New WebPage_Desktop
		    NextPage_Desktop.Show
		  Case WebSession.BrowserType.SafariMobile
		    NextPage_Mobile = New WebPage_Mobile
		    NextPage_Mobile.Show
		  Case WebSession.BrowserType.Epiphany
		    NextPage_Desktop = New WebPage_Desktop
		    NextPage_Desktop.Show
		  Case WebSession.BrowserType.Unknown
		    MsgBox("You are using an unknown browser. It might not work probably. Please let IT know.")
		    NextPage_Desktop = New WebPage_Desktop
		    NextPage_Desktop.Show
		  Case Else
		    MsgBox("You are using an unsupported browser. It might not work probably. Please let IT know.")
		    NextPage_Desktop = New WebPage_Desktop
		    NextPage_Desktop.Show
		  End Select
		  Self.Close
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AllowedAccess As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		NextPage_Desktop As WebPage_Desktop
	#tag EndProperty

	#tag Property, Flags = &h0
		NextPage_Mobile As WebPage_Mobile
	#tag EndProperty

	#tag Property, Flags = &h0
		SessionToken As String
	#tag EndProperty


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="Cursor"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Standard Pointer"
			"2 - Finger Pointer"
			"3 - IBeam"
			"4 - Wait"
			"5 - Help"
			"6 - Arrow All Directions"
			"7 - Arrow North"
			"8 - Arrow South"
			"9 - Arrow East"
			"10 - Arrow West"
			"11 - Arrow Northeast"
			"12 - Arrow Northwest"
			"13 - Arrow Southeast"
			"14 - Arrow Southwest"
			"15 - Splitter East West"
			"16 - Splitter North South"
			"17 - Progress"
			"18 - No Drop"
			"19 - Not Allowed"
			"20 - Vertical IBeam"
			"21 - Crosshair"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HorizontalCenter"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Group="ID"
		InitialValue="-2147483648 "
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsImplicitInstance"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabOrder"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VerticalCenter"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ZIndex"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_DeclareLineRendered"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_HorizontalPercent"
		Group="Behavior"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_IsEmbedded"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_Locked"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_NeedsRendering"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OfficialControl"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OpenEventFired"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ShownEventFired"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_VerticalPercent"
		Group="Behavior"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="sessionToken"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowedAccess"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
