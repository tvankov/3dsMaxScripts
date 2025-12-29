macroScript MaterialRenamer
     category:  "#todorScripts"
	toolTip:"MaterialRenamer"
   
 (
	 rollout Grupper "MaterialRenamer" width:200 height:334

     (
		radioButtons 'RadioButtons1' "Selection type : " pos:[20,20] width:134 height:30 labels:#("Selected", "All")  default:2 columns:2 align:#left
			
		checkbox 'BaseName' "Base Name :" pos:[20,85] width:80 height:20 align:#left
		editText 'BNInput' "" pos:[105,85] width:84 height:16 align:#left
			
		checkbox 'Prefix' "Prefix :" pos:[20,110] width:80 height:20 align:#left
		editText 'PrefixInput' ""  pos:[105,110] width:84 height:16 align:#left
			
		checkbox 'Suffix' "Suffix :" pos:[20,135] width:80 height:20 align:#left
		editText 'SuffixInput' ""  pos:[105,135] width:84 height:16 align:#left
			
		checkbox 'Numbered' "Numbered :" pos:[20,190] width:80 height:20 align:#left
		editText 'Startby' "Start by : "  pos:[57,213] width:90 height:16 align:#left
		editText 'Step'     "Step :       "  pos:[56,239] width:90 height:16 align:#left
		button 'Rename' "Rename" pos:[25,288] width:156 height:27 align:#left
		 			

		 		 -- About
			groupBox grp1 "About" pos:[12,330] width:180 height:100
				
				--lable
		    label lbl2 "Object Selecter v 1.0" pos:[29,350] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,365] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,390] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,255] pos:[29,405]		
		 
			
			on Rename pressed  do
		(
			
							
			i  = Startby.text as integer 
						
			-- 
			if RadioButtons1.state == 1 then (
					surchAmount = selection as Array
				) else (
				 surchAmount = geometry as Array
				)
							
				
							for obj in surchAmount  do (
								
								print surchAmount.count
								
								if  obj.material != undifind then (
										
											-- 1 1 1
											if BaseName.checked == true and Prefix.checked == true and Suffix.checked == true then 
											(	
												obj.material.name =  PrefixInput.text + BNInput.text + SuffixInput.text
											)
											
											-- 1 1 0
											if BaseName.checked == true and Prefix.checked == true and Suffix.checked == false then 
											(	
												obj.material.name =  PrefixInput.text + BNInput.text 
											)
											
											-- 1 0 0
											if BaseName.checked == true and Prefix.checked == false and Suffix.checked == false then 
											(	
												obj.material.name =  BNInput.text 
											)
											
											-- 0 1 1
											if BaseName.checked == false and Prefix.checked == true and Suffix.checked == true then 
											(	
												obj.material.name =  PrefixInput.text + obj.material.name + SuffixInput.text
											)
												
											-- 0 0 1
											if BaseName.checked == false and Prefix.checked == false and Suffix.checked == true then 
											(	
												obj.material.name = obj.material.name + SuffixInput.text
											)
											
											-- 0 1 0
											if BaseName.checked == false and Prefix.checked == true and Suffix.checked == false then 
											(	
												obj.material.name = PrefixInput.text + obj.material.name
											)
												
											-- 1 0 1
											if BaseName.checked == true and Prefix.checked == false and Suffix.checked == true then 
											(	
												obj.material.name = BNInput.text + SuffixInput.text
											)
											
											
											
											if Numbered.checked == true then 
											(
												obj.material.name = obj.material.name + "_" +  (( i  *  (Step.text as integer))  as String)
												i = i + 1
												print (Step.text as integer) 
											)
											--print obj.material.name
									
										)
								
									)
			
								)		 
			
						on RadioButtons1 changed stat do
						(
							
							)
							on BaseName changed state do
						(
							
							)
							on BNInput entered text do
						(
							
							)
							on Prefix changed state do
						(
							
							)
							on PrefixInput entered text do
						(
							
							)
							on Suffix  changed state do
						(
							
							)
							on SuffixInput entered text do
						(
							
							)
							on Numbered changed state do
						(
							
							)
							on edt6 entered text do
						(
							
							)
							on edt7 entered text do
						(
							
							)
		 )
	
    on Execute do
     (
        palisadeFloater = NewRolloutFloater "MaterialRenamer" 220 470
		 addRollout Grupper palisadeFloater
     )
 )