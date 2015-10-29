function BearSounds()	-- Volodya Medved sounds when not enough bans
	if bearstate == nil or bearstate == 6 then 
		bearstate = 1
	else bearstate = bearstate+1
	end
	if mode == "stalker" then
		bearsound = love.audio.newSource("stalker/cidorovich"..bearstate..".ogg", static)
	else
		bearsound = love.audio.newSource("sound/bear"..bearstate..".ogg", static)
	end
	bearsound:setVolume(0.6)
	love.audio.play(bearsound)
end
		

function clicks(x,y,button)			 --Buttons and YEE click check. X,y,click sre the same as line 430
	if button=="l" and x>=1 and x<=155 and y>=20 and y<=79 then	--BAN
		bans=bans+bans_add
				
		if clicktime < 20 then		--ora calculations
			clickcount = clickcount + 1
			clicktime = 0
		else clickcount = 0 clicktime = 0
		end
		if clickcount > 35 then		--ora sounds
			love.audio.play(ora)
		else love.audio.stop(ora)
		end
		
	elseif x>=784 and x<=800 and y>=584 and y<=600 then		--riba
		if mode == "stalker" then
			love.audio.play(slava_monolith)
		elseif mode == "spooky" then
			flowey_clicked = flowey_clicked + 1
			if flowey_clicked == 5 then
				love.audio.play(flowey_laugh_steal)
				bans = 0
				flowey_clicked = 0
			else
				love.audio.play(flowey_laugh)
			end
		else
			love.audio.play(slava)
		end
	
	elseif x>=765 and x<=800 and y>=470 and y <=548 then	--shop
			if isshop == false then
				love.window.setMode(1200, 600)
				isshop = true
				MakeBanFelixCanvas()	--we have to redraw canvases after changing window size
				MakeHelpCanvas()
			else
				love.window.setMode(800, 600)
				isshop = false
				MakeBanFelixCanvas()
				MakeHelpCanvas()
			end
	
	elseif button=="l" and x>=805 and x<=960 and y>=80 and y<=139 then	--cats
		if bans>=(10*rp*(cats)) and rp>=2 and bans>=0 then
			cats=cats+1
			bans=bans-(10*rp*(cats-1))
		else BearSounds()
		end
		
	elseif button=="l" and x>=805 and x<=960 and y>=140 and y<=200 then	--felix
		if bans>=50*rp*(felixs) and rp>=3 and bans>=0 then
			felixs=felixs+1
			bans=bans-(50*rp*(felixs-1))
		else BearSounds()
		end 
		
	elseif button=="l" and x>=805 and x<=960 and y>=202 and y<=262 then	--bot
		if bans>=100*rp*(bots) and rp>=10 and bans>=0 then
			bots=bots+1
			bans=bans-(100*rp*(bots-1))
		else BearSounds()
		end
		
	elseif button=="l" and x>=805 and x<=960 and y>=263 and y<=323 then	--zoe
		if bans>=300*rp*(zoes) and rp>=15 and bans>=0 then
			zoes=zoes+1
			bans=bans-(300*rp*(zoes-1))
		else BearSounds()
		end
		
	elseif button=="l" and x>=1050 and x<=1200 and y>=450 and y<=600 then	--buying pruglo and co.
		if bans>=500 and rp>=5 and ispruglo==false then
			bans_add=bans_add+1
			bans=bans-500
			ispruglo=true
		elseif bans < 500 and ispruglo == false then BearSounds()
		elseif bans>=2500 and rp>=15 and isuvarov==false and ispruglo==true then
			bans_add=bans_add+10
			bans=bans-2500
			isuvarov=true
		elseif bans < 500 and isuvarov == false then BearSounds()
		elseif bans>=10000 and rp>=25 and isnomad==false and isuvarov==true then
			bans_add=bans_add+100
			bans=bans-10000
			love.audio.play(korovan)
			isnomad=true
		elseif bans < 10000 and isnomad == false then BearSounds()
		elseif bans>=50000 and rp>=50 and isjontron==false and isnomad==true then
			bans_add=bans_add+1000
			bans=bans-50000
			love.audio.play(ech)
			isjontron=true
		elseif bans < 50000 and isjontron == false then BearSounds()
		elseif bans>=250000 and rp>=100 and isjontron==true and iswho==false then
			bans_add=bans_add+10000
			bans=bans-250000
			love.audio.play(who)
			iswho=true
		elseif bans < 250000 and iswho == false then BearSounds()
		end
	
	elseif button=="l" and x>=1 and x<=155 and y>=538 and y<=600 then	--buying memes
		if bans>=50*rp and bans>=0 then
			bans=bans-(50*rp)
			rp=rp+1
		else BearSounds()
		end
	elseif button=="r" and x>=1 and x<=155 and y>=538 and y<=600 then
		if bans>=(50*rp)*10 and bans>=0 then
			bans=bans-((50*rp)*10)
			rp=rp+10
		end
		
	elseif button=="l" and x>=fallx and x<=fallx+55 and y>=fally and y<=fally+70 then	--clicking on falling things
		if mode == "mgs" then
			love.audio.play(fallsnake)
		elseif mode == "stalker" then
			love.audio.play(fallstl)
		elseif mode == "gachimuchi" then
			love.audio.play(fallgachimuchi)
		elseif mode == "spooky" then
			love.audio.play(sound_fallingtrumpet)
		else
			love.audio.play(fallyee)
		end
		bans=bans+(5000*rp)
		fallx=love.math.random(200,500)
		fally=1
		isfall=false
		love.math.random(0,200)
		
	elseif button=="l" and diomode==true and x>=fallx and x<=fallx+160 and y>=fally and y<=fally+212 then --clicked on falling dio
		love.audio.pause()
		love.audio.play(dio_begin)
		love.timer.sleep(5)
		love.audio.play(dio_counting)
		love.timer.sleep(13)
		diomode=false
		isfall=false
		bans=bans+(25000*rp)
		willdio=love.math.random(0,200)
		fally=1
		
		if mode == "stalker" then		--kostil' for proper (almost) sound resuming
			love.audio.resume(stalker)
		elseif mode == "mgs" then
			love.audio.resume(mgsnuclear)
		elseif mode == "gachimuchi" then
			love.audio.resume(gachimuchi)
		elseif mode == "spooky" then
			love.audio.resume(mus_spooky)
		else
			love.audio.resume(music)
		end
		
	elseif button == "l" and x>=805 and x<=960 and y>=326 and y<=387 then	 --buying heli
		if peqmode == false and bans>=150000 then
			peqmode = true
			bans = bans - 150000
			if mode == "stalker" then
				love.audio.play(peqcoming_st)
			else
				love.audio.play(peqcoming)
			end
		elseif peqmode == false then BearSounds()
		end
	elseif button == "l" and x>=805 and x<=955 and y>=450 and y<=600 then
		instant_pr = true
	elseif button == "l" and x>=1125 and x<=1200 and y>=1 and y<=75 then	--clicking gaben
		sound_gaben:play()
	end
	if iscipa==true then	--dealing with cipa
		if button=="l" and x>=cipax and x<=cipax+16 and y>=cipay and y<=cipay+16 then
			iscipa=false
			ispchela=false
			willroller=love.math.random(0,200)
			peqspeed = 1
		elseif button=="l" and rollermode==true and x>=cipax and x<=cipax+331 and y>=cipay and y<=cipay+161 then
			iscipa=false
			ifpchela=false
			rollermode=false
			love.audio.play(roller_s)
			willroller=love.math.random(0,200)
		end
	end
end
