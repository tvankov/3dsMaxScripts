macroScript LockTool
     category:         "#todorScripts"
     buttonText:      "LockTool"
   
 (
	 
	 rollout Grupper "LockTool" width:210 height:280
     (
			
			button UnhideAll "Unhide All" pos:[16,10] width:72 height:17
			button SelectAll "Select All" pos:[16,32] width:72 height:17
			button unlock "Unlock" pos:[16,54] width:72 height:17
			button lock "Lock" pos:[16,76] width:72 height:17
			
		 
		 
		  -- About
				groupBox grp1 "About" pos:[16,105] width:165 height:100
				--lable
		    label lbl5 "LockTool v 1.0" pos:[29,125] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,140] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,155] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,155] pos:[29,170]	
		 
		 
		 
			
			on UnhideAll pressed  do
				(
					
				unhide objects

			
				)


			on SelectAll pressed  do
				(
					

					actionMan.executeAction 0 "40021"  -- Selection: Select Al
			
				)
				
				
			on unlock pressed  do
				(
					
					setTransformLockFlags selection #none
				
				)
				
				
				on lock pressed  do
				(
					
					setTransformLockFlags selection #all
				)
			
			
		)
	
			
	 
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "LockTool" 200 240
		 addRollout Grupper palisadeFloater
		
     )
 )