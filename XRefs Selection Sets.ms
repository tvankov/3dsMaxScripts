macroScript XrefSelectionSets
     category:         "#todorScripts"
     buttonText:      "XrefSelectionSets"
   
 (
	 
	 rollout XrefSelectionSets "Xref Selection Sets" width:210 height:280
     (
		 
		 
		 -- List with Header
		 local ListItems = #( "XRef Files")
		 
     	
		 -- dotNet Xref List
		 dotNetControl lv "System.Windows.Forms.ListView" height:150

		 
		 -- Global vars-------------------------------------------
		 
		 -- 2 demensional -> Array[name][BooleanArray[]]
		 global XrefSelectionSet = #()
		 -- Var, -> the sel set number
		 global selectedSelectionSet = 0
		 
		  -- Global vars -- END -------------------------------
		 
		 
			------- UI Elements --------------------------------------	 

			groupBox grp0 "Set Control" pos:[15,210] width:260 height:310		
					
			listBox 'XRefSelectionSetsLB' "XRef Selection Sets" pos:[25,230] width:110 height:17 align:#left
			
			-- Groupe to set the NAME OF SELECTION SETs
			groupBox grpSetname "Set name : " pos:[142,230] width:122 height:75
			editText 'SelectionSetName' "" pos:[146,246] width:110 height:21 align:#left
			button 'CreateXrefsSel' "<-Create Xrefs Sets" pos:[150,270] width:106 height:23 align:#left
			
			-- Start the main algoritham and set  ENABLE XREFS
			button 'Activate' "Enable XRefs" pos:[160,320] width:80 height:60 align:#left 
					toolTip:"Activate the XRef Sets"
			
			-- Set new data in the set
			button 'UpdateSet' "Update set" pos:[150,400] width:106 height:23 align:#left 
					toolTip:"Activate the XRef Sets"
			
			-- INPUT OUTPUT from data
			groupBox grp2 "IO Selection Sets" pos:[310,210] width:150 height:95
			button 'ExportList' "Save List" pos:[330,265] width:106 height:23 align:#left
			button 'OpenList' "Open List" pos:[330,235] width:106 height:23 align:#left
			
			-- Buttons to select ALL NONE and RELOAD
			label 'lbl1' "Select : " pos:[17,170] width:37 height:18 align:#left
			button 'selectall' "All" pos:[58,170] width:46 height:18 align:#left
			button 'selectNone' "None" pos:[108,170] width:46 height:18 align:#left
			button 'reload' "Reload" pos:[420,170] width:50 height:18 align:#left 
					toolTip:"Reload the Xrefs and reset the XRef Sets"
			
			-- Delete SELECTION SETs
			button 'DeleteSelectionSet' "Delete" pos:[25,485] width:106 height:23 align:#left 
			
			-- Groupe to set the RENAME OF SELECTION SETs
			groupBox grpRename "New Set name : " pos:[142,438] width:122 height:76
			editText 'RenameSet' "" pos:[146,455] width:110 height:21 align:#left
			button 'RenameSelectionSet' "Rename" pos:[150,485] width:106 height:23 align:#left 
			
			------- UI Elements ---- END -------------------------------	
			
			-- About -------------------------------------------------------
			
			groupBox grp1 "About" pos:[310,400] width:150 height:120
			-- Script Name -----
			label lbl5 "Xref Selection Sets v 1.0" pos:[330,420] width:125 height:54 enabled:true
			label lbl3 "by Todor Vankov " pos:[330,435] width:100 height:54 enabled:true
			-- Website -----
			label lbl4 "Click and visit my site : " pos:[330,460] width:110 height:20 enabled:true
			hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,155] pos:[330,475]	
			-- Script tutorial
			label lbl7 "or visit my " pos:[330,490] width:110 height:20 enabled:true
			hyperLink Scripttutorial "Script tutorial" address:"https://todorvankov.com/3ds-max-scripts#XrefsSelectionSets" color:[206,255,155] pos:[385,490]	
			
			-- About END ----------------------------------------------------------
		 
		 
		 
		 
------------------------------------------------------------------------------------------------------------------
------------------------- DOT NET METHODS ---------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
		 
		 /** 
			Create the List view 
		 */
		 fn initListView =
     		(
     			lv.backColor = (dotNetClass "System.Drawing.Color").FromArgb 225 225 225
     			--The following controls the display of details. We use defaults:
     			lv.GridLines = true
				lv.CheckBoxes = true
				
				lv.Sorting = (dotNetClass "System.Windows.Forms.SortOrder").Ascending 
				--lv.Sorting = (dotNetClass "System.Windows.Forms.SortOrder").None
				lv.HeaderStyle = (dotNetClass "System.Windows.Forms.ColumnHeaderStyle").NonClickable
				lv.View = (dotNetClass "System.Windows.Forms.View").Details
				lv.FullRowSelect = true
				lv.HideSelection = false
			    lv.AutoArrange = false
				
				
				-- Feel the header with wight of 460
				for i in ListItems do   lv.Columns.add i 460
				
     		)
     		
			
			
			/** 
				Fill the Table
			*/
     		fn fillInListView =
     		(
     		
				-- The count of the XREFS from Max
				local XCount = xrefs.getXRefFileCount()
				
				-- For every single XREF will fell the Info in the table
					for i = 1 to XCount do 
					(
					CurrXRef = xrefs.getXRefFile i
					--append XREFNames CurrXRef.filename
						
						print CurrXRef.filename
						
						XRname = CurrXRef.filename as String
						
						lv.Items.Add XRname
						
						
					)
     		)
     		
			
			/**
				The mane method 
			*/
			on XrefSelectionSets open do
     		(
     			initListView()
     			fillInListView()
     			--lb.items = listItems
				
				-- Reset by new start
				XrefSelectionSet = #()
				selectedSelectionSet = 0
     		)
     			
------------------------------------------------------------------------------------------------------------------
------------------------- DOT NET METHODS -------- END ------------------------------------------------
------------------------------------------------------------------------------------------------------------------
			
			
			
			
			/** 
				Button Open -> Open a list from txt file. 
				In the txt file is a Array Object with the List Info
			*/
			on OpenList pressed  do
			(
				--The Value of the Array will be reseted to empty and zero
				XrefSelectionSet = #()
				selectedSelectionSet = 0
				XRefSelectionSetsLB.Items = #()
				-------------------------------------
				
				--- Open File Window -------------
				filename = getOpenFileName \
				caption:"Selection Sets Presets Open" \
				filename:(getDir #import + @"\") \
				types:"Object Preset(*.txt)|*.txt" \
				
			
				-- This try is needed if is cansel clicked
				try (
					
					-- Save the pfad and name of the choosed file
					file = openFile filename
					
				
					local line_cnt = 0
					Global Paths=#() --the array that will hold the paths
					arraySubstring =  ""
					newSubstringArray = #()
					

					while not eof file do 
					(
						--read the first line and store as a string it in r
						r =  readLine file 
						
						arraySubstring = substring r 19 r.count 
						print arraySubstring
						
						--newSubstringArray = arraySubstring as Array 
						newSubstringArray = execute arraySubstring
						
						append paths r --append the first line to paths array
						line_cnt += 1 --add 1 to the counter
						
					)
					
					-- reset position to beginning
					seek file 0 
					
					-- closes the file					
					close file 
					
					-- The new Array from the txt file will overritte the old one. 
					XrefSelectionSet = newSubstringArray
					
					
					
					-- The Xref selection set list will be aktuallisated
					for i = 1 to (XrefSelectionSet.Count) do 
					(
						
					--print XrefSelectionSet[i][1]
					XRefSelectionSetsLB.items = append XRefSelectionSetsLB.items XrefSelectionSet[i][1]
					
					)
				
						
					--The Checkboxes will be aktzalisated
					XRefSelectionSetsLB.doubleClicked 1
					
					-- catch an exaption
					) catch ()
				
				)
			
				
				
				
			/* 
				Button Export or save a list in a txt file. 
			 */
			on ExportList pressed  do
			(
				
				-- This try is needed if is CANSLE clicked
				try 
					(
					
						--Open the SAVE Window
						filename = getSaveFileName  \
						caption:"Selection Sets Presets Save" \
						filename:(getDir #import + @"\") \
						types:"Object Preset(*.txt)|*.txt" \
					
					
						--newTXT = createFile "C:\\Temp\\4.txt"
						newTXT = createFile filename
						
						
						--XrefSelectionSet
						format "XrefSelectionSet: % \n" XrefSelectionSet to:newTXT
						
						
						close newTXT
						
						-- Open the text file with the saved data
						ShellLaunch filename ""
					
					-- catch an exaption
					) catch ()
				
				)
				
				
				
				
			/* 
				Activations of the Sets
			*/
			on Activate pressed  do
			(
		
			-- Checkt if there is selecton set
			if XrefSelectionSet.count != 0 then ( 
				
				
				-- Checkt if there is a selected selecton set
				if selectedSelectionSet != 0 then (
					
					-- Take the selected selection set
					booleanArray = XrefSelectionSet[selectedSelectionSet] 
					
					-- Take the boolean Array from the selection set
					booleanArray = booleanArray[2]
					
					----------------------------- SEGA ----------------------------------- 
					for i = 0 to ( lv.Items.Count - 1 ) do (
						
						xrefCount = xrefs.getXRefFileCount()
						t = 0
						for j = 1 to xrefCount do (
						
							--
							xrefPruf = xrefs.getXRefFile j
							xrefPruf2 = xrefPruf.filename
							
							--
							listePruf = lv.Items.Item[i].text
							
							--
							if xrefPruf2 == listePruf then (
								t = j
								)
								
							)
						
						
							-- The boolean from the selection Set
							tempBoolean = (booleanArray[i+1]) 
							tempBoolean = tempBoolean as booleanclass
							
							-- The boolean from the maxs Xrefs
							aXref = xrefs.getXRefFile (t)
							
						
						
						if aXref.disabled == tempBoolean then (
								
								
							
							
							-- The boolean from selection Set overritte the Max Enabled boolean
								aXref.disabled = not tempBoolean 
								
							)						
						
							
						)
						
					
						--Refresh Xref Scene Windows
						actionMan.executeAction 0 "40368"
						
						
						) else (
						
						messageBox  "Make a doube click at the selection set!"
						
						)
					
					
					 ) else (
					
					messageBox  "Create a selection set first! "
					
					)
		)
			
			
		
		
			/* 
				Creation of the Sets
				After Double Click the XREFSelecter is actualisated
			*/
			on XRefSelectionSetsLB doubleClicked sel do
			(
				
				-- boolean
				selectedSelectionSet = sel
				
				-- boolean Array
				booleanArray = XrefSelectionSet[sel] 
				-- the boolean itself
				booleanArray = booleanArray[2]
				
				-- 
				for i = 0 to ( lv.Items.Count - 1 ) do 
					(
						
						-- 
						tempBoolean = (booleanArray[i+1]) 
						tempBoolean = tempBoolean as booleanclass
						
						--
						lv.Items.Item[i].Checked = tempBoolean
						
					)
				
				)
			
			
			
			
			
	/** 
		CreateXrefsSel - Create a Selection Set in the Array#( "Name" )( #(boolean, boolean, boolean , ....  ) ) 
		- Set the name in the XRef Selection Sets List
	 */
		on CreateXrefsSel pressed  do
	(
		
		-- If you forgot to give the text in the feelt
		if SelectionSetName.text == "" then (
			
			messageBox  "Type a selection set name !"
			
			) else (
		
		--- Create XrefSelectionSet ----------------------------------------------------------------------------------------------------
		
		doubleArray = #()
		newXrefSelectionSet = #()
		newXrefSelectionSetName = SelectionSetName.text
			-------------------------------------------------------------------------
			-------------------------------------------------------------------------
		newXrefSelectionSetData = #()
		-------------------------------------------------------------------------
			-------------------------------------------------------------------------
		
		for i = 0 to (lv.Items.Count-1) do 
		(

		checkedXref = lv.Items.Item[i].Checked
		append newXrefSelectionSet checkedXref
			
			--
			CurrXRef = lv.Items.Item[i].text

			--
			append newXrefSelectionSetData  CurrXRef

		)
			
		-- ADD SET NAME, BOOLEAN and XREFS NAME
		append  doubleArray newXrefSelectionSetName
		append  doubleArray newXrefSelectionSet
		append  doubleArray newXrefSelectionSetData
		
		-- SET the array to global array
		append  XrefSelectionSet doubleArray 
		
		
		XRefSelectionSetsLB.items = append XRefSelectionSetsLB.items( newXrefSelectionSetName ) 
		
		print XrefSelectionSet
		
		--- END XrefSelectionSet -------------------------------------------------------------------------------------------------------
		
		w = classof lv.Items
		print w
		
		local XCount = xrefs.getXRefFileCount()
				
					for i = 1 to XCount do 
					(
					CurrXRef = xrefs.getXRefFile i
						
						
						XRname = CurrXRef.filename as String
						
					)
					
					)
		)
		

		
		
		/** 
			Set all chackboxes at TRUE
		*/
		on selectall pressed  do
		(
			
			for i = 0 to (lv.Items.Count-1) do 
				(
				  lv.Items.Item[i].Checked = true
				)
		)
			
			
			
			/** 
				Set all chackboxes at FALSE
			*/		
			on selectNone pressed  do
		(
			for i = 0 to (lv.Items.Count-1) do 
				(
				  lv.Items.Item[i].Checked = false
			)
		)
		
		
		/** 
			Reload the xrefs Menu if there are some new xrefs, or some get changed
		*/	
		on reload pressed  do
		(
				
			lv.Items.Clear() 		
			XrefSelectionSet = #()
			selectedSelectionSet = 0
			
			--initListView()
			fillInListView()
			XRefSelectionSetsLB.Items = #()
		
		)
		
		
		
		/** 
			Delete the set from the list
		*/	
		on DeleteSelectionSet pressed  do
		(
			
			--print XRefSelectionSetsLB.selection 
			if XRefSelectionSetsLB.items.count > 0 and XRefSelectionSetsLB.selection > 0 then (
				
				selectedItim = XRefSelectionSetsLB.selection
				
				-- Delete Itim from the selection set List
				--XRefSelectionSetsLB
				XRefSelectionSetsLB.items = deleteItem XRefSelectionSetsLB.items selectedItim
				
				
				-- Delete Itim from the Array 
				-- XrefSelectionSet
				deleteItem XrefSelectionSet selectedItim
				
			)
			
		)
		
		
		/** 
			Rename the set from the list
		*/	
		on RenameSelectionSet pressed  do
			(
			
				if XRefSelectionSetsLB.items.count > 0 and XRefSelectionSetsLB.selection > 0 then (
					
					-- Set the value in the XrefSelectionSet List
					XRefSelectionSetsLB.selected = RenameSet.text
					
					-- 
					XrefSelectionSet[XRefSelectionSetsLB.selection][1] = RenameSet.text
				)
			
			)
		
		
		
		
		/** 
			Update the Set Array, or overwitte the array with a new selection
		*/	
		on UpdateSet pressed  do
			(
			
				
				if XRefSelectionSetsLB.items.count > 0 and XRefSelectionSetsLB.selection > 0 then (
				
					-- Find the selected Itim
					selectedItimNr = XRefSelectionSetsLB.selection
					selectedItim = XrefSelectionSet[selectedItimNr]
										
					-- Temp Array to save the bew selection
					newBooleanArraw = #()
					
					-- Make from all boolean an Array
					for i = 0 to ( lv.Items.Count - 1 ) do (
						
						-- append a boolean to the array
						append newBooleanArraw lv.Items.Item[i].Checked
						
					)
				
					-- The new selection overwritte the old one
					selectedItim[2] = newBooleanArraw
					
					)
			)
		)
			
	 
		
    on Execute do
     (
         palisadeFloater = NewRolloutFloater "Xref Selection Sets" 500 550
		 addRollout XrefSelectionSets palisadeFloater
		
     )
 )