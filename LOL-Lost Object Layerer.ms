macroScript LOL
	category: "#todorScripts"
	tooltip:"Lost Object Layerer"
	buttontext:"LOL"
(
	
rollout unnamedRollout "Lost Object Layerer" width:254 height:325
(
	
	button btn1 "GO" pos:[13,50] width:85 height:19
	button btn2 "Delete" pos:[13, 110] width:85 height:19
	
	global result = 50
	
	label lbl4 "Select the Objects and press GO to put it to a new layer." pos:[16,10] width:170 height:30 enabled:true
	label lbl3 "Delete the empty Layers:" pos:[16,85] width:170 height:20 enabled:true
	
	-- About
	groupBox grp1 "About" pos:[16,152] width:165 height:110
	--lable
	label lbl5 "Lost Object Layerer v 1.0" pos:[29,170] width:140 height:54 enabled:true
	label lbl1 "by Todor Vankov " pos:[29,190] width:140 height:54 enabled:true		
	label lbl2 "Click and visit my site : " pos:[29,210] width:140 height:30 enabled:true	
	hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,255] pos:[29,230]	
		    
		
	on btn2 pressed  do (
	
			emptyLayers = #()
	
			for i = 0 to layerManager.count-1 do
				(
					ilayer = layerManager.getLayer i
				
				if  ilayer != undefined then (
					
					print  (i as String + " in")
					
					layerName = ilayer.name as string 
						
					if LayerManager.doesLayerHierarchyContainNodes layerName then (

						LayerManager.deleteLayerByName layerName ;
					
					) else (
						
						append emptyLayers ( ilayer.name as string )
						
					)
				)  
			)	

			
			for i = 1 to emptyLayers.count do (
					
					
				layerName = emptyLayers[i]
					
				LayerManager.deleteLayerByName layerName ;
					
			)
	)
	
	
	on btn1 pressed  do (
		
		if selection.count != 0  then   (
			
			layer = LayerManager.newLayer()
			
			for n in (selection as array) do layer.addnode n
			
			msg = "Your Objects are moved to a new layer. \n\n" + " Layername : " + (layer.name as string) + " !"
			
			messageBox msg title:"Layer Information"
	) 
	
	else messageBox "You have to select some Objects!!" title:"Layer Information"
			
	)
)

tv = NewRolloutFloater "LOL" 230 295
	addRollout unnamedRollout tv

)