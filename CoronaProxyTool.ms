macroScript CoronaProxyTool
     category:         "#todorScripts"
     buttonText:      "CoronaProxyTool"
   
 (
	 
	 rollout CoronaProxyTool "CoronaProxyTool" width:210 height:280
     (
			
			button SolidBoundingBox "Solid Bounding Box" pos:[9,10] width:100 height:17
		 button WireBoundingBox "Wire Bounding Box" pos:[9,40] width:100 height:17
		 button Point_Cloud "Point Cloud" pos:[120,10] width:100 height:17
		 button FullMesh "FullMesh" pos:[120,40] width:100 height:17
			
		 
		  -- About
				groupBox grp1 "About" pos:[16,85] width:165 height:100
				--lable
		    label lbl5 "CoronaProxyTool v 1.0" pos:[29,110] width:140 height:54 enabled:true
		    label lbl3 "by Todor Vankov " pos:[29,125] width:140 height:54 enabled:true
		    label lbl4 "Click and visit my site : " pos:[29,140] width:140 height:54 enabled:true
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,155] pos:[29,155]	
		 
			
			on chk2 changed state do()
		 
		 
			on SolidBoundingBox pressed  do
				(
					
					for o in selection where not isGroupHead o do (
						
						if classof o  == CProxy  then o.previzType = 0
						)
				)


				on WireBoundingBox pressed  do
				(
					
					for o in selection where not isGroupHead o do (
						
						if classof o  == CProxy  then o.previzType = 1
						)
				)
				
				
				on Point_Cloud pressed  do
				(
					
					for o in selection where not isGroupHead o do (
						
						if classof o  == CProxy  then o.previzType = 2
						)
				)
				
				
				
				on FullMesh pressed  do
				(
					
					for o in selection where not isGroupHead o do (
						
						if classof o  == CProxy  then o.previzType = 3
						)
				)
				
		)
			
	 
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "CoronaProxyTool" 250 230
		 addRollout CoronaProxyTool palisadeFloater
		
     )
 )