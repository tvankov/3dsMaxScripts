macroScript PivotToCenterMin
     category:         "#todorScripts"
     buttonText:      "PivotToCenterMin"
   
 (
	 
	 rollout PivotToCenterMin "PivotToCenterMin" width:210 height:280
     (
			
			button SetPivot "SetPivot" pos:[9,50] width:72 height:17
			
			label lbl2 "Center X and Y: " pos:[9,10] width:96 height:34 enabled:true
			checkbox chk2 "Checkbox" pos:[100,10] width:15 height:14 checked:true
		 
		 
		  -- About
				groupBox grp1 "About" pos:[16,85] width:165 height:100
				--lable
		    label lbl5 "Object Selecter v 1.0" pos:[29,110] width:140 height:54 enabled:true
		    label lbl3 "by Todor Vankov " pos:[29,125] width:140 height:54 enabled:true
		    label lbl4 "Click and visit my site : " pos:[29,140] width:140 height:54 enabled:true
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,155] pos:[29,155]	
		 
			
			on chk2 changed state do()
		 
		 
			on SetPivot pressed  do
				(
					
					for o in selection where not isGroupHead o do (
						
						if chk2.checked == true then(
							
							o.pivot.x = o.center.x
							o.pivot.y = o.center.y
							
							)
						
						o.pivot.z = o.min.z
						
						)
				)	
		)
			
	 
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "PivotToCenterMin" 200 220
		 addRollout PivotToCenterMin palisadeFloater
		
     )
 )