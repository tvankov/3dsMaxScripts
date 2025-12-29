macroScript NullObjectsCleaner
     category:         "#todorScripts"
     buttonText:      "NullObjectsCleaner"
   
 (
	 
	 rollout Grupper "NullObjectsCleaner" width:210 height:280
     (
			
			button deleteAll "Delete NULL Objects" pos:[16,150] width:100 height:17
			button findNullObjects "Find Null Objects" pos:[16,10] width:100 height:17
		 
		 global nullObjArray = #()
		 
		 --editText 'edt1' pos:[100,12] width:45 height:13 align:#left
		 
		 ------ List with Objects ---- 	
			listBox 'lbx1' "" pos:[16,30] width:150 height:8 align:#left
			
		 
		 
		  -- About
				groupBox grp1 "About" pos:[16,205] width:165 height:100
				--lable
		    label lbl5 "NullObjectsCleaner v 1.0" pos:[29,225] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,240] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,255] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,155] pos:[29,270]	
		 
		 
		 


			on deleteAll pressed  do
				(
					undo on
						
					--dell all Objects
					for i in nullObjArray do
						(
							delete i
							
							)
							
							
							t = nullObjArray.count as String 
							
							-- Dell Array
					
							nullObjArray = #()
								-- Cleat list
							lbx1.items = #()
							
							
							
							
							--if t == 0 then 
							--(
						--		messageBox ( "Your scene dont have Null Objects! " )
							
								--)else( 
								messageBox ( "You have deleted "+t+" Null objects from your scene!" )
							--)
				)
							
				
				

				
				on findNullObjects pressed  do
				(

					undo on
						
					
					-- Cleat list
					nullObjArray = #()
					
					--sel = getcurrentselection() 
					sel = objects
					
					
						for i = 1 to sel.count do (
						
						--print sel.count
							
						CObj = classof sel[i]
							
							
							if ( CObj  == Editable_Poly ) then (
								
								numFaces = getPolygonCount sel[i]
								
								currentNumberFaces = numFaces[1]
								
								print currentNumberFaces
							
								if currentNumberFaces == 0 then (
									
									append nullObjArray sel[i]
									p =  nullObjArray.count
									
								)				
								
							)


							if ( CObj  == SplineShape ) or ( CObj  == line ) then (
								
								numVertixes = numknots sel[i]
								
								--currentNumberFaces = numFaces[1]
								
								--print currentNumberFaces
							
								if numVertixes == 0 then (
									
									append nullObjArray sel[i]
									p =  nullObjArray.count
									
								)				
								
							)							
						) 
						
						
						select nullObjArray
						
						-- reset Selection
						lbx1.items = #()
						-- Full the list with itims
						for i in nullObjArray do (
							lbx1.items = append lbx1.items( i.name )
						)
						
						
						if nullObjArray.count == 0 then (
								messageBox ( "Your scene dont have Null Objects! " )
							)
							
				)
						

			
				-- Select Object from List
			on lbx1 doubleClicked sel do
		(
			print lbx1.items[sel]	
				
			select (getNodeByName lbx1.items[sel] )
			
			)
			
		)
			
	 
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "NullObjectsCleaner" 200 340
		 addRollout Grupper palisadeFloater
		
     )
 )