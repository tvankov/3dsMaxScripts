macroScript Grouper
     category:         "#todorScripts"
     buttonText:      "Grouper"
   
 (
	 
	 rollout Grupper "Group Operator" width:210 height:280
     (
			
			button Open "Open Groups" pos:[9,12] width:80 height:20
			button btn4 "Close Groups" pos:[9,36] width:80 height:20
		 
			button deleteGroups "Delete Groups" pos:[100,36] width:80 height:20
			button createGroup "Create Group" pos:[100,12] width:80 height:20
		 
			button selectAll "Select All" pos:[9,80] width:80 height:20
			button ClearSelections "Clear Selection" pos:[9,104] width:80 height:20
			
		

		 on createGroup pressed  do
				(
					
					sel = getcurrentselection() 
					
					group sel
					
				)
				
				
				
		 
		 	on deleteGroups pressed  do
				(
					
					
					--------------- close Groups -----
					
					sel = getcurrentselection() 


					for i = 1 to sel.count do (
						
						
						dada = classof sel[i]
						bo = sel[i].baseObject

						
							if dada == Dummy then (

							
								if isGroupHead sel[i] then (
									setGroupOpen sel[i] false
								)					
							)		
						) 
						
					----------------------------------
					
					--try (
					
					sel = getcurrentselection() 
					

					for i = 1 to sel.count do (
						
						
						dada = classof sel[i]
						bo = sel[i].baseObject
						
							if dada == Dummy then (

							
								if isGroupHead sel[i] then (
									
									--actionMan.executeAction 0 "40141"  -- Groups: Ungroup

										
									unGroup sel[i]
									
								)					
							)		
						) 
				
						--) catch()
			
				)
				
		 
		 
		 
			on selectAll pressed  do
				(
					actionMan.executeAction 0 "40021"  -- Selection: Select Al
					)
					
					
					
			on ClearSelections pressed  do
			(
				clearSelection()
				)
		 
		 
		 
		  -- About
				groupBox grp1 "About" pos:[16,135] width:165 height:100
				--lable
		    label lbl5 "Grouper v 1.1" pos:[29,160] width:140 height:30 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,175] width:140 height:30 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,190] width:140 height:30 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,155] pos:[29,205]	
		 
		 
	
		 
			on Open pressed  do
				(
					
					--try (
					
					sel = getcurrentselection() 
					

					for i = 1 to sel.count do (
						
						
						dada = classof sel[i]
						bo = sel[i].baseObject

						--print dada
						
							if dada == Dummy then (

							
								if isGroupHead sel[i] then (
									
									--print (isGroupHead sel[i])
									
									
									--if alles == 0 then (
									--actionMan.executeAction 0 "40141"  -- Groups: Ungroup
										
									--) else (
									setGroupOpen sel[i] true
									--	)
										
									
									
								)					
							)		
						) 
				
						--) catch()
			
				)

				
				
			on btn4 pressed  do
				(
					sel = getcurrentselection() 


					for i = 1 to sel.count do (
						
						
						dada = classof sel[i]
						bo = sel[i].baseObject

						
							if dada == Dummy then (

							
								if isGroupHead sel[i] then (
									setGroupOpen sel[i] false
								)					
							)		
						) 
				
				)
			
			
		)
	
			
	 
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "Grupper" 200 270
		 addRollout Grupper palisadeFloater
		
     )
 )