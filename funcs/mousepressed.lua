function BearSounds()	-- Volodya Medved sounds when not enough bans
	if  bearstate == 2 then
		bearsound = love.audio.newSource("sound/bear2.ogg", static)
		love.audio.play(bearsound)
		bearstate = 3
	elseif bearstate == 3 then
		bearsound = love.audio.newSource("sound/bear3.ogg", static)
		love.audio.play(bearsound)
		bearstate = 4
	elseif bearstate == 4 then
		bearsound = love.audio.newSource("sound/bear4.ogg", static)
		love.audio.play(bearsound)
		bearstate = 5
	elseif bearstate == 5 then
		bearsound = love.audio.newSource("sound/bear5.ogg", static)
		love.audio.play(bearsound)
		bearstate = 6
	elseif bearstate == 6 then
		bearsound = love.audio.newSource("sound/bear6.ogg", static)
		love.audio.play(bearsound)
		bearstate = 1
	else
		bearsound = love.audio.newSource("sound/bear1.ogg", static)
		love.audio.play(bearsound)
		bearstate = 2
	end
end
		

function clicks(x,y,button) --Buttons and YEE click check.X,y,click sre the same as line 430
	if button=="l" and x>=1 and x<=155 and y>=20 and y<=79 then
		bans=bans+bans_add
	elseif x>=784 and x<=800 and y>=584 and y<=600 then love.audio.play(slava)
	elseif button=="l" and x>=1 and x<=155 and y>=80 and y<=139 then
		if bans>=(10*rp*(cats)) and rp>=2 and bans>=0 then
			cats=cats+1
			bans=bans-(10*rp*(cats-1))
		else BearSounds()
		end
	elseif button=="l" and x>=1 and x<=155 and y>=140 and y<=200 then
		if bans>=50*rp*(felixs) and rp>=3 and bans>=0 then
			felixs=felixs+1
			bans=bans-(50*rp*(felixs-1))
		else BearSounds()
		end 
	elseif button=="l" and x>=1 and x<=155 and y>=263 and y<=323 then
		if bans>=300*rp*(zoes) and rp>=15 and bans>=0 then
			zoes=zoes+1
			bans=bans-(300*rp*(zoes-1))
		else BearSounds()
		end
	elseif button=="l" and x>=650 and x<=800 and y>=20 and y<=170 then	
		if bans>=500 and rp>=5 and bans>=0 and ispruglo==false then
			bans_add=bans_add+1
			bans=bans-500
			ispruglo=true
		elseif bans>=500 and rp>=15 and bans>=0 and isuvarov==false and ispruglo==true then
			bans_add=bans_add+10
			bans=bans-2500
			isuvarov=true
		elseif bans>=10000 and rp>=25 and bans>=0 and isnomad==false and isuvarov==true then
			bans_add=bans_add+100
			bans=bans-10000
			love.audio.play(korovan)
			isnomad=true
		elseif bans>=50000 and rp>=50 and bans>=0 and isjontron==false and isnomad==true then
			bans_add=bans_add+1000
			bans=bans-50000
			love.audio.play(ech)
			isjontron=true
		elseif bans>=250000 and rp>=100 and bans>=0 and isjontron==true and iswho==false then
			bans_add=bans_add+10000
			bans=bans-250000
			love.audio.play(who)
			iswho=true
		end
	elseif button=="l" and x>=1 and x<=155 and y>=202 and y<=262 then
		if bans>=100*rp*(bots-1) and rp>=10 and bans>=0 then
			bots=bots+1
			bans=bans-(100*rp*(bots-1))
		else BearSounds()
		end
	elseif button=="l" and x>=1 and x<=155 and y>=538 and y<=600 then
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
	elseif button=="l" and x>=fallx and x<=fallx+55 and y>=fally and y<=fally+70 then
		if mgsmode==true then
			love.audio.play(fallsnake)
		elseif stalkermode == true then
			love.audio.play(fallstl)
		elseif gachimuchimode==true then
			love.audio.play(fallgachimuchi)
		else
			love.audio.play(fallyee)
		end
		bans=bans+(5000*rp)
		fallx=love.math.random(200,500)
		fally=1
		isfall=false
		love.math.random(0,200)
	elseif button=="l" and diomode==true and x>=fallx and x<=fallx+160 and y>=fally and y<=fally+212 then 
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
	elseif button == "l" and x>=1 and x<=155 and y>=326 and y<=387 then	 
		if peqmode == false and bans>=150000 then
			peqmode = true
			bans = bans - 150000
			love.audio.play(peqcoming)
		else BearSounds()
		end
	 
	 end
	if iscipa==true then
		if button=="l" and x>=cipax and x<=cipax+16 and y>=cipay and y<=cipay+16 then
			iscipa=false
			ispchela=false
			peqspeed = 1
		end
	end
end
