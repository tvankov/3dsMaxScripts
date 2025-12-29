macroScript place
	category: "#todorScripts"
	tooltip:"Placer"
	buttontext:"Placer"
(




rollout todorsRollout "Place" width:162 height:300
(
	groupBox Ground "Ground" pos:[16,16] width:200 height:120
	button place "Place" pos:[32,114] width:88 height:16
	pickButton PickGround "PickGround" pos:[32,46] width:96 height:16
	label Info "NO Ground Picked" pos:[32,70] width:88 height:40
	radioButtons rdo2 "Animation" pos:[145,41] width:49 height:46 labels:#("ON", "OFF") default:2 columns:1
	

	on todorsRollout open do
		(
		global ground2
		global activatescript
		global result
		activatescript =0
		global animation 	= "OFF"
		global directions  = 1
			global Nray
		)

		local ground = 4;
		
		
		on rdo2 changed stat do
	(
		if animation == "ON" then (
			
			animation = "OFF"
			print animation 
			set animate off
				
			) else (
			
			animation = "ON"
			print animation 
			set animate on
			)	
	)


	on place pressed  do
	(
		g=getcurrentselection()
		
		Info.text = "" + g[1].name
		
		for i = 1 to g.count do (
			
			--print directions
			
			if directions == 1 then (		   
				Nray=(ray g[i].pos [0,0,-1])
		   )
		   if directions == 2 then (		   
				--print "GOGOGOGO"
			   Nray=(ray g[i].pos [0,0,1])
			   
		   )
		   if directions == 3 then (		   
				Nray=(ray g[i].pos [0,-1,0])
		   )
		   if directions == 4 then (		   
				Nray=(ray g[i].pos [0,1,0])
		   )
		   if directions == 5 then (		   
				Nray=(ray g[i].pos [-1,0,0])
		   )
		   if directions == 6 then (		   
				Nray=(ray g[i].pos [1,0,0])
		   )
		   
		
		result=(intersectRay ground Nray)
		
		   try(
		   
		print result.position
		
		if directions == 1 or directions == 2 then (		   
				g[i].pos.z = result.pos.z
		   )
		   
		   if directions == 3 or directions == 4 then (		   
				g[i].pos.y = result.pos.y
		   )
		   
		    if directions == 5 or directions == 6 then (		   
				g[i].pos.x = result.pos.x
		   )
		   
		   
	  
		   
		g[i].pos.z = result.pos.z
		--print ray g[1].pos [0,0,-1]
		    ) catch()
			
		)
		
	)
	
	
	
		on PickGround picked obj do
	(
		ground  = obj
		Info.text = obj.name
		print ground.name
	)
	
	
	
)





--------------------
--- Creator -------
--------------------
rollout creator "Creator" width:162 height:300(
	
			    label lbl5 "Placer v 1.0" pos:[29,20] width:140 height:54 enabled:true
				
		    label lbl3 "by Todor Vankov " pos:[29,35] width:140 height:54 enabled:true
				
		    label lbl4 "Click and visit my site : " pos:[29,50] width:140 height:54 enabled:true
			
		    hyperLink mysite "www.todorvankov.com" address:"www.todorvankov.com" color:[206,255,255] pos:[29,65]	
	
	)
	

	
	

------------------------------
--- Advance Options -------
------------------------------
rollout advance "Advance Options" width:162 height:300(
	radioButtons rdo3 "Directions" pos:[30,35] width:84 height:62 labels:#("-Z", "+Z", "-Y", "+Y", "-X", "+X") columns:2
	groupBox Ground "Directions" pos:[16,16] width:100 height:90
	--groupBox Animation "Animation" pos:[130,16] width:86 height:90
	--groupBox Chaos "Chaos" pos:[16,115] width:200 height:90
	
		
	--button Traslation "Traslation" pos:[25,140] width:74 height:17
	--button Rotation "Rotation" pos:[25,160] width:74 height:17
	--button Scal "Scal" pos:[25,180] width:74 height:17
	
	--global animation 	= "OFF"
	
	on Traslation pressed  do
	(
		g=getcurrentselection()
				
		for i = 1 to g.count do (
			
			g[i].pos.x = g[i].pos.x + random -10 10
			g[i].pos.y = g[i].pos.y + random -10 10
			g[i].pos.z = g[i].pos.z + random -10 10
		
			)
		)
		
	on Rotation pressed  do
	(
		
		g=getcurrentselection()
				
		for i = 1 to g.count do (
			
			agal = random 0 180 
			rotate g[i] (angleaxis agal [0,0,1])
		
			)
							
	
		)
		
		
		
	on Scal pressed  do
	(
		g=getcurrentselection()
				
		for i = 1 to g.count do (
			
			scalQuaficent = random -2.0 2.0
			
			scale g[i] [scalQuaficent,scalQuaficent,scalQuaficent]
		
			)
		)
	
	
	
	
	
	
	on rdo3 changed stat do
   (
	print stat
	   
	   if stat == 1 then (		   
			directions = 1
	   )
	   if stat == 2 then (		   
			directions = 2
	   )
	   if stat == 3 then (		   
			directions = 3
	   )
	   if stat == 4 then (		   
			directions = 4
	   )
	   if stat == 5 then (		   
			directions = 5
	   )
	   if stat == 6 then (		   
			directions = 6
	   )
	)
	
	
	)


	
------------------------------
--- addRollout --------------
------------------------------
tv = NewRolloutFloater "Placer" 250 420
	addRollout todorsRollout tv
	addRollout advance tv
	addRollout creator tv


--createDialog  Place

)
