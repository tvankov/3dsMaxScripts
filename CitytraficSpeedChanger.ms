macroScript CitytraficSpeedChanger
	category:"#todorScripts"
	tooltip:"CitytraficSpeedChanger"
	buttontext:"CitytraficSpeedChanger"
(
	
rollout unnamedRollout "Speed Changer" width:254 height:86
(
	button btn1 "GO" pos:[13,30] width:85 height:19
	editText edt1 "" pos:[119,32] width:52 height:17 
	label lbl1 "kmh" pos:[182,34] width:40 height:15
	
	
	global result = 50
	
	
	
	
			  -- About
				groupBox grp1 "About" pos:[16,85] width:165 height:100
				--lable
		    label lbl5 "Object Selecter v 1.0" pos:[29,110] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,125] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,140] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,255]  pos:[29,155]	
	
	
	

	
	
	on btn1 pressed  do
(
	
	result = result as integer
	
		for i = 1 to selection.count  do(
		
		 

		if selection[i].modifiers[1] != undefined do (

		
		--print selection[i].modifiers[1].name
		
		if selection[i].modifiers[1].name == "CityTraffic Cross" do (
			selection[i].modifiers[#CityTraffic_Cross].Max_Speed = result
			print "drin"
		)
		

			

		if selection[i].modifiers[1].name == "CityTraffic Road" do (
		selection[i].modifiers[#CityTraffic_Road].Max_Speed = result
		print "drin"
		)
		

		)
		
		)
	
	
	)
	
	
	
	on edt1 entered text do
(
	result = text
	)
	
	
)



tv = NewRolloutFloater "Citytrafic_Scripts" 230 220
	addRollout unnamedRollout tv



)