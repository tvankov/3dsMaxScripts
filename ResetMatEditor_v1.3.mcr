macroScript ResetMatEditor
     category:        "#todorScripts"
	toolTip:"ResetMatEditor"
   
 (
	 
	 rollout Grupper "Reset Material Editor" width:210 height:350
     (
			
			button VRayMats "VRayMats" pos:[9,92] width:76 height:17
			button StandMats "StandMats" pos:[9,116] width:76 height:17
			button CoronaMats "CoronaMats" pos:[100,92] width:76 height:17
			button MentalRayMats "MentalRayMats" pos:[100,116] width:76 height:17
		    button FStormMats "FStormMats" pos:[9,140] width:76 height:17
			button ArnoldMats "ArnoldMats" pos:[100,140] width:76 height:17
		 
		    global alles = 0
		 
			global currentRenderers = ""
			label CR "Your current renderer is :" pos:[9,20] width:140 height:54 enabled:true
			label YCR currentRenderers pos:[9,40] width:170 height:17 enabled:true style_sunkenedge:true
			
			--lable
		   groupBox grp3 "About" pos:[16,188] width:155 height:90
				
				--lable
		    label lbl2 "Reset Material Editor v1.3" pos:[29,205] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,220] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,240] width:140 height:14 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,255] pos:[29,255]		
			
	
	
			--------------------6-----------------
			on ArnoldMats pressed  do (
				
				try (
					
				local matNr = 1
				
					while matNr <= 24 do  (
						
					meditMaterials[matNr] =  ai_standard_surface();
					meditMaterials[matNr].name = meditMaterials[matNr].name + "_" + (matNr as string)
						
					matNr = matNr + 1
					
					)
					
					) catch (
					
					messageBox "Arnold is not installed. "
					
				)
				)
				
		 
		 --------------------5-----------------
			on FStormMats pressed  do (
				
				try (
					
				local matNr = 1
				
					while matNr <= 24 do  (
						
					meditMaterials[matNr] = FStorm () ;
					meditMaterials[matNr].name = meditMaterials[matNr].name + "_" + (matNr as string)
						
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
								meditMaterials[matNr].name = meditMaterials[matNr].name + "_" + (matNr as string)
								--print meditMaterials[matNr].name 
								
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
					meditMaterials[matNr].name = meditMaterials[matNr].name + "_" + (matNr as string)
					
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
					meditMaterials[matNr].name = meditMaterials[matNr].name + "_" + (matNr as string)
					
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
					meditMaterials[matNr].name = meditMaterials[matNr].name + "_" + (matNr as string)
					
					matNr = matNr + 1
					
					)
					
					) catch (
					
					messageBox "Mental Ray is not installed. "
					
				)
				)
				
		)
		
		
		fn getCurrentRenderers	= (
			print currentRenderers
			
		 
			currentRenderers = renderers.current as string 
		 
			print currentRenderers
			
			)
			
	 
    on Execute do
     (
		 
		-- Fubction: Get a sring with the name of the current renderer.
		getCurrentRenderers()
		 
		 
         palisadeFloater = NewRolloutFloater "Reset Material Editor" 200 300
		 addRollout Grupper palisadeFloater
		
     )
 )