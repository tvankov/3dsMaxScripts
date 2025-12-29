macroScript ClearSmoothingGroups
     category:         "#todorScripts"
	toolTip:"ClearSmoothingGroups"
   
 (
	 
	 rollout Grupper "ClearSmoothingGroups" width:210 height:280
     (
			
			button ClearSG "ClearSG" pos:[15,12] width:72 height:17
			--button StandMats "StandMats" pos:[9,36] width:72 height:17
		--	label lbl2 "Select All" pos:[130,10] width:96 height:34 enabled:true
		    global alles = 0
		 
			
			--lable
		   groupBox grp3 "About" pos:[16,82] width:185 height:85
				
				--lable
		    label lbl2 "Clear Smoothing Groups v 1.0" pos:[29,100] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,115] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,135] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,255] pos:[29,150]		
			
	
		 
		 
			----------------------1-----------------
			on ClearSG pressed  do
				(
					
					sel = getcurrentselection()
	
					for i = 1 to sel.count do (
						
						selectedObject = classof sel[i]
						bso = sel[i].baseObject
						
						--print sel[i].baseObject
						--print sel[i+1].baseObject
					select  sel[i]
						
					modPanel.addModToSelection (Edit_Poly ()) ui:on

					subobjectLevel = 5
					actionMan.executeAction 0 "40021"

					numFaces = polyop.getNumfaces $
					$.modifiers[#Edit_Poly].SetSelection #Face #{1..numFaces}
						
				   $.modifiers[#Edit_Poly].SetOperation #SetSmooth
				   $.modifiers[#Edit_Poly].smoothingGroupsToSet = 0
				   $.modifiers[#Edit_Poly].smoothingGroupsToClear = -1

					subobjectLevel = 0
						
					)	
				)	
		)
	
			
	 
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "ClearSmoothingGroups" 250 220
		 addRollout Grupper palisadeFloater
		
     )
 )