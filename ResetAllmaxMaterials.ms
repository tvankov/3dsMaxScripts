macroScript ResetAllmaxMaterials
     category:         "#todorScripts"
     buttonText:      "ResetAllmaxMaterials"
   
 (
	 
	 rollout Grupper "ResetAllmaxMaterials" width:210 height:280
     (
			
			button ResetAllmaxMaterials "ResetAllmaxMaterials" pos:[16,20] width:150 height:17
			
		 
		 
		    -- About
			groupBox grp1 "About" pos:[16,60] width:155 height:105
			--lable
		    label lbl5 "ResetAllmaxMaterials v 1.0" pos:[29,95] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,110] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,125] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,155] pos:[29,140]	
		 
		 
		 
			
			on ResetAllmaxMaterials pressed  do
				(
					
					sel = getcurrentselection()

					for i = 1 to sel.count do (
						sel[i].material = undefined
					--objects.material = undefined
					)
				)
		)
	
			
	 
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "ResetAllmaxMaterials" 200 210
		 addRollout Grupper palisadeFloater
		
     )
 )