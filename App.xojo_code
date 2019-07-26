#tag Class
Protected Class App
Inherits WebApplication
	#tag Note, Name = Readme First
		
		This is a demo program to demonstrate Mobile and Desktop Resizing.
		
		WebPage_SiteLoad is the first webpage to be loaded. It is used as a preloader page to detect the browser type.
		
		Therefore, The App object's DefaultWebPage property must be set to WebPage_SiteLoad
		
		How to test
		1. Run this program in Chrome Browser
		2. Notice the webpage will be loaded and says "Desktop Site Loaded"
		3. Go to Chrome Developer mode (Ctrl_Alt_I)
		4. Change the browser mode to a mobile mode.
		5. Select the display to be an iPhone display.
		6. Refresh the page
		7. Notice now the webpage will be loaded and says "Mobile Site Loaded"
		
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
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="debugMobile"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
