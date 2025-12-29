macroScript ResetMatEditor
     category:        "#todorScripts"
	toolTip:"ResetMatEditor"
   
 (
	 
	 rollout Grupper "Reset Material Editor" width:210 height:280
     (
			
			button VRayMats "VRayMats" pos:[9,12] width:76 height:17
			button StandMats "StandMats" pos:[9,36] width:76 height:17
			button CoronaMats "CoronaMats" pos:[100,12] width:76 height:17
			button MentalRayMats "MentalRayMats" pos:[100,36] width:76 height:17
		    button FStormMats "FStormMats" pos:[9,60] width:76 height:17
		 
		    global alles = 0
		 
			
			--lable
		   groupBox grp3 "About" pos:[16,88] width:155 height:90
				
				--lable
		    label lbl2 "Reset Material Editor v1.1" pos:[29,105] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,120] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,140] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,255] pos:[29,155]		
			
	
		 
		 --------------------5-----------------
			on FStormMats pressed  do (
				
				try (
					
				local matNr = 1
				
					while matNr <= 24 do  (
						
					meditMaterials[matNr] = FStorm () ;
					
					matNr = matNr + 1
					
					)
					
					) catch (
					
					messageBox "FStorm is not installed. "
					
				)
				)
				
		 
			----------------------1-----------------
			on VRayMats pressed  do
				(
					try (
						
						local matNr = 1
		 
							while matNr <= 24 do 
							(
								meditMaterials[matNr] = VRayMtl ();
								
								matNr = matNr + 1
								
								)
								
							) catch (
				
				messageBox "VRay is not installed. "
				
			)

			
			)	
				
			--------------------2-----------------
			on StandMats pressed  do (
				
				try (
					
				local matNr = 1
				
					while matNr <= 24 do  (
						
					meditMaterials[matNr] = Standardmaterial () ;
					
					matNr = matNr + 1
					
					)
					
						) catch (
					
					messageBox "Error"
					
				)
				)
				
				--------------------3-----------------
			on CoronaMats pressed  do (
				
				try (
					
				local matNr = 1
				
					while matNr <= 24 do  (
						
					meditMaterials[matNr] = CoronaMtl () ;
					
					matNr = matNr + 1
					
					)
					
					) catch (
					
					messageBox "Corona is not installed. "
					
				)
				)
		
	
		
		
				--------------------4-----------------mental_ray ()
			on MentalRayMats pressed  do (
				
				
				
				try (
					
				local matNr = 1
				
					while matNr <= 24 do  (
						
					meditMaterials[matNr] = mental_ray () ;
					
					matNr = matNr + 1
					
					)
					
					) catch (
					
					messageBox "Mental Ray is not installed. "
					
				)
				)
				
		)
		
			
	 
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "Reset Material Editor" 200 230
		 addRollout Grupper palisadeFloater
		
     )
 )