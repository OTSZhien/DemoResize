#tag Class
Protected Class App
Inherits WebApplication
	#tag Note, Name = Readme
		
		This is a demo program to demonstrate Mobile and Desktop Resizing.
		
		WebPage_SiteLoad is the first webpage to be loaded. It is used as a preloader page to detect the browser type.
		
		Therefore, The App object's DefaultWebPage property must be set to WebPage_SiteLoad
		
		
	#tag EndNote


	#tag Property, Flags = &h0
		debugMobile As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		debugMode As Boolean = True
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="debugMode"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
