macroScript ObjSelecter
     category:  "#todorScripts"
	toolTip:"ObjSelecter"
   
 (
	 
	 rollout Grupper "ObjSelecter" width:310 height:280
     (
			--Buttons
		    button Calc "Calc" pos:[80,170] width:76 height:17
		    button SelectObj "Select" pos:[135,220] width:76 height:17
			
		 
		 --Lables
			label SelectobjLable "Select all objects " pos:[9,12] width:80 height:54 enabled:true
			label thanLable "than " pos:[140,12] width:80 height:54 enabled:true
			label bigerOutput "....." pos:[12,220] width:30 height:54 enabled:true
			label ObjectsFound "Objects are found" pos:[40,220] width:90 height:54 enabled:true
		 
		 --Edit Boxes
			editText 'edt1' pos:[165,12] width:45 height:13 align:#left
		 
			dropDownList 'ddl1' "" pos:[95,10] width:40 height:40 items:#( ">" ,"=" , "<" ) align:#left
		 
		 	on ddl1 selected sel do
			(
				
				)
				
			
		 -----------------------------------------------------------
		 -- About
			groupBox grp1 "About" pos:[12,242] width:200 height:95
		    global alles = 999
		 --lable
		 --   label lbl1 "ResetMatEditor v1.0" pos:[29,275] width:140 height:54 enabled:true
		-- 	label lbl3 "Todor Vankov" pos:[29,295] width:140 height:54 enabled:true
				label lbl2 "Object Selecter v 1.0" pos:[29,260] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,275] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,300] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,255] pos:[29,315]		
		 -----------------------------------------------------------
		 
		 
			groupBox grp2 "Vray Proxy" pos:[12,50] width:200 height:80
				
			button showMesh "ShowMesh" pos:[20,70] width:76 height:17
			button boundingBox "BoundingBox" pos:[120,70] width:76 height:17
			button pointProxy "Point" pos:[20,100] width:76 height:17
			button fromFile "From file" pos:[120,100] width:76 height:17
				
			button ExportText "Export" pos:[300,320] width:76 height:17
				
				on ExportText pressed  do
				(
					print "pressed"
					newTXT = createFile "C:\\Temp\\tt.txt"

						-- format "value X: "  to:newTXT
					
					format "value X: % \n" $.pos.x to:newTXT
					format "Name: % \n" $.name to:newTXT
					format "value Z: % \n" $.pos.z to:newTXT
					

						close newTXT
						ShellLaunch "C:\\Temp\\tt.txt" ""
				)
				
				
				
				
				
				on showMesh pressed  do
				(
					for obj in geometry do 
					(
						if classof obj == VRayProxy then obj.display = 4
					)
				)
				
				on boundingBox pressed  do
				(
					for obj in geometry do 
					(
						if classof obj == VRayProxy then obj.display = 0
					)
				)
				
				on pointProxy pressed  do
				(
					for obj in geometry do 
					(
						if classof obj == VRayProxy then obj.display = 2
					)
				)
				
				on fromFile pressed  do
				(
					for obj in geometry do 
					(
						if classof obj == VRayProxy then obj.display = 1
					)
				)
				
				
			------ List with Objects ---- 	
			listBox 'lbx1' "" pos:[230,10] width:150 height:22 align:#left
				on unnamedRollout open  do
			(
				
				)
				on unnamedRollout close  do
			(
				
				)
				on unnamedRollout okToClose  do
			(
				
				)
				on lbx1 selected sel do
			(
				
				)
				
				-- Select Object from List
				on lbx1 doubleClicked sel do
			(
				select (getNodeByName lbx1.items[sel] )
				)
		 -------------------------------------------
		 -----------------------------------------------------------
				
		 
		 	on edt1 entered text do
				(
					
				
				)
			
			----------------------1-----------------
			on Calc pressed  do
				(
						
					countpoligons = edt1.text as Integer
					a = #()
					
					try (
						
						
						if  ddl1.selected == ">" do (
							for obj in geometry where obj.mesh.numFaces > countpoligons do 
								append a obj
						)
						
						if  ddl1.selected == "=" do (
							for obj in geometry where obj.mesh.numFaces == countpoligons do 
								append a obj
						)
						
						if  ddl1.selected == "<" do (
							for obj in geometry where obj.mesh.numFaces < countpoligons do 
								append a obj
						)
						
						
						bigerOutput.text = a.count as String
						
						
						-- reset Selection
						lbx1.items = #()
						-- Full the list with itims
						for i in a  do (
							lbx1.items = append lbx1.items( i.name )
						)
						
						) catch (
						messageBox " "
				)
			)	
			
			----------------------1-----------------
			on SelectObj pressed  do
				(
						countpoligons = edt1.text as Integer
						a = #()
						
						try (
							
							
							if  ddl1.selected == ">" do (
								for obj in geometry where obj.mesh.numFaces > countpoligons do 
									append a obj
							)
							
							if  ddl1.selected == "=" do (
								for obj in geometry where obj.mesh.numFaces == countpoligons do 
									append a obj
							)
							
							if  ddl1.selected == "<" do (
								for obj in geometry where obj.mesh.numFaces < countpoligons do 
									append a obj
							)
								
								
								print a.count as String
								
								bigerOutput.text = a.count as String
							
								select a
							
							
							) catch (
							messageBox " "
					)
					
				)
				
	)
	
			
    on Execute do
     (
        palisadeFloater = NewRolloutFloater "ObjSelecter" 400 400
		 addRollout Grupper palisadeFloater
     )
 )