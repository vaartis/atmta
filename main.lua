function love.load()
love.graphics.setBackgroundColor(255,255,255)

atmta = love.graphics.newImage("buttons/button1.jpg")
felix = love.graphics.newImage("buttons/button2.jpg")
bot_b = love.graphics.newImage("buttons/button3.jpg")
zoe = love.graphics.newImage("buttons/button4.jpg")
ban_b = love.graphics.newImage("buttons/ban.jpg")
riba= love.graphics.newImage("buttons/riba.png")
pause_m = love.graphics.newImage("buttons/pause_m.jpg")
pruglo = love.graphics.newImage("buttons/pruglo.jpg") 
uvarov = love.graphics.newImage("buttons/uvarov.jpg") 
jontron =  love.graphics.newImage("buttons/jontron.png") 
nomad = love.graphics.newImage("buttons/nomad.jpg") 
who_b = love.graphics.newImage("buttons/who.jpg") 
forcememe = love.graphics.newImage("buttons/makememe.jpg")
bean = love.graphics.newImage("gosling/gosling.gif")
cipa = love.graphics.newImage("buttons/cipa.png")
pchela = love.graphics.newImage("buttons/pchela.png")
peq = love.graphics.newImage("pequod/peq3.1.png")
callpeq = love.graphics.newImage("pequod/callpeq.png")
icon = love.image.newImageData("ico.jpg")
love.window.setIcon(icon)
font = love.graphics.newFont(love._vera_ttf, 14)
love.graphics.setFont(font)

korovan=love.audio.newSource("sound/korovan.ogg",static)
darude=love.audio.newSource("sound/du.ogg",static)
ors=love.audio.newSource("sound/or.ogg",static)
slava=love.audio.newSource("sound/riba.ogg",static)
ech=love.audio.newSource("sound/ech.ogg",static)
who = love.audio.newSource("sound/who.ogg",static)
noice=love.audio.newSource("sound/noice.ogg",static)
music = love.audio.newSource("music.ogg",stream)
music2 = love.audio.newSource("gosling/gosling.ogg",stream)
mgsnuclear = love.audio.newSource("mgs/mgs.ogg",stream)
gachimuchi = love.audio.newSource("sound/gachimuchi.ogg",stream)
stalker = love.audio.newSource("stalker/stalker.ogg",stream)
peqflying = love.audio.newSource("pequod/chopper.ogg", stream)
peqcoming = love.audio.newSource("pequod/PeqComing.ogg",static)
peqshot = love.audio.newSource("pequod/shot.ogg", static)

darude:setLooping(true)
music:setLooping(true)
music2:setLooping(true)
mgsnuclear:setLooping(true)
gachimuchi:setLooping(true)
stalker:setLooping(true)
peqflying:setLooping(true)

love.audio.play(music)
music:setVolume(0.1)
korovan:setVolume(0.1)
darude:setVolume(0.1)
ors:setVolume(0.1)
ech:setVolume(0.1)
noice:setVolume(0.1)
music2:setVolume(0.1)
mgsnuclear:setVolume(0.1)
gachimuchi:setVolume(0.1)
stalker:setVolume(0.1)
peqflying:setVolume(0.06)
peqcoming:setVolume(0.4)
peqshot:setVolume(0.1)

timr=0
timr2=0
beanframe=1
mgsmode=false
gachimuchimode=false
stalkermode=false

peqmode=false						--баЕаЖаИаМ аПаИаКаВаОаД
peqx = 1100							--аБаАаЗаОаВбаЙ б
peqy = love.math.random(100, 500)		--аБаАаЗаОаВбаЙ б, аНаА ббаАббаЕ баМаЕаНббаЕаНаО аДаЛб аКаОббаЕаКбаНаОаГаО аВаЛаЕбаА
peqframes = -300						--баКаОаЛбаКаО аПбаОаЛаЕбаЕаЛ
peqdirection = 1					--аНаАаПбаАаВаЛаЕаНаИаЕ аПаОаЛаЕбаА
peqrange = love.math.random(150, 300)	--баКаОаЛбаКаО аНбаЖаНаО аЛаЕбаЕбб
peqspeed = 1						--ббаЕаЙаМб аЗаА аАаПаДаЕаЙб

cipax = 400 --- ббаОаБб аНаЕ аВбаЛаЕбаАаЛаО аПбаИ аОаБбаАаБаОбаКаЕ аПаИаКаВаОаДаА аНаА ббаАббаЕ
cipay = 300

bans=0
cats=1
felixs=1
bots=1
rp=1
zoes=1
bans_add=1
isbanfelix=0
ishelp=false
ispruglo=false
isuvarov=false
isnomad=false
isjontron=false
iswho=false
iscipa=false
ispchela=false

banfelix = love.graphics.newCanvas(200,100)
 love.graphics.setCanvas(banfelix)
	love.graphics.setColor(133,133,133)
	love.graphics.rectangle("fill",1,1,198,98)
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("line",1,1,198,98)
	love.graphics.print("\n                 Ban Felix?")
	--ааНаОаПаКаИ
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill",20,70,50,20)
	love.graphics.setColor(0,0,0)
	love.graphics.print("Yes",30,75)
	love.graphics.rectangle("line",20,70,50,20)
	
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill",120,70,50,20)
	love.graphics.setColor(0,0,0)
	love.graphics.print("Kys\'",130,75)
	love.graphics.rectangle("line",120,70,50,20)
 love.graphics.setCanvas()
help = love.graphics.newCanvas(150,400)
 love.graphics.setCanvas(help)
	love.graphics.setColor(133,133,133)
	love.graphics.rectangle("fill",1,1,150,400)
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("line",1,1,150,399)
	love.graphics.print("            Help \n\n Cat : 2 MEMES\n (+1ban/s)\n Felix : 3 MEMES\n (+10ban/s)\n Pruglo : 5 MEMES\n (+1ban/click)\n BOGDAN : 10 MEMES \n (+100ban/s)\n Uvarov : 15 MEMES\n (+10ban/click)\n Nomad : 25 MEMES\n (+100 bans/click)\n JonTron : 50 MEMES\n (+1000ban/click)\n Zoe : 15 MEMES\n (1000bans/s)\n WHO?! : 100 MEMES \n (+10000bans/click)")
 love.graphics.setCanvas()
end

function love.keypressed(key)
      if key=="1" then 
      stalkermode=false
      gachimuchimode=false
	  mgsmode=false
	  love.audio.pause()
      love.audio.play(music)
   elseif key=="2" then
      stalkermode=false
      gachimuchimode=false
      mgsmode=false
	  love.audio.pause()
      love.audio.play(music2)
	elseif key=="3" then
	 stalkermode=false
	 gachimuchimode=false
	 mgsmode=true
	 --bans=bans+100000
	 love.audio.pause()
	 love.audio.play(mgsnuclear)
	 elseif key=="4" then
	 stalkermode=false
	 gachimuchimode=false
	 mgsmode=false
	 love.audio.pause()
	 love.audio.play(darude)
	 elseif key=="5" then
	 stalkermode=false
	 mgsmode=false
	 gachimuchimode=true
	 love.audio.pause()
	 love.audio.play(gachimuchi)
	 elseif key=="6" then
	 mgsmode=false
	 gachimuchimode=false
	 stalkermode=true 
	 love.audio.pause()
	 love.audio.play(stalker)
	 elseif key=='h' or key=='H'or key=='б' or key=='а ' then
	  if ishelp==true then
	  ishelp=false
	  else
	  ishelp=true
	  end
end
end

function love.quit()
	if love.filesystem.exists("sv") then 
	love.filesystem.remove("sv")
	love.filesystem.newFile("sv")
	love.filesystem.append("sv",bans.."\n")
	love.filesystem.append("sv",cats.."\n")
	love.filesystem.append("sv",felixs)
	else
	love.filesystem.newFile("sv")
	love.filesystem.append("sv",bans.."\n")
	love.filesystem.append("sv",cats.."\n")
	love.filesystem.append("sv",felixs)
   end
 end  

function love.update(dt)
	timr=timr+1
	timr2=timr2+1
	
	--------------------------------------------------------------------аПаЕбаЕаМаЕбаЕаНаИаЕ аПаИаКаВаОаДаА
	if peqmode == true then
	love.audio.play(peqflying)
	peqframes = peqframes+peqspeed
	
	if iscipa == false then									--баВаОаБаОаДаНбаЙ аПаОаЛаЕб
		if peqframes < peqrange then
			if peqdirection == 1 then
				peqx = peqx-peqspeed
				if peqx < 0 then peqdirection = 5  end
			elseif peqdirection == 2 then
				peqx = peqx-peqspeed
				peqy = peqy-peqspeed
				if peqx < 0 or peqy < 0 then peqdirection = 6 end
			elseif peqdirection == 3 then
				peqy = peqy-peqspeed
				if peqy < 0 then peqdirection = 7 end
			elseif peqdirection == 4 then
				peqx = peqx+peqspeed
				peqy = peqy-peqspeed
				if peqx > 700 or peqy < 0 then peqdirection = 8 end
			elseif peqdirection == 5 then
				peqx = peqx+peqspeed
				if peqx > 700 then peqdirection = 1 end
			elseif peqdirection == 6 then
				peqx = peqx+peqspeed
				peqy = peqy+peqspeed
				if peqx > 700 or peqy > 555 then peqdirection = 2 end
			elseif peqdirection == 7 then
				peqy = peqy+peqspeed
				if peqy > 555 then peqdirection = 3 end
			elseif peqdirection == 8 then
				peqx = peqx-peqspeed
				peqy = peqy+peqspeed
				if peqx < 0 or peqy > 555 then peqdirection = 4 end
			end
		else
			peqolddirection = peqdirection
			peqdirection = love.math.random(1, 8)
			peqframes = 0
		end
		
	elseif iscipa == true or ispchela == true then								--баОббаОбаНаИаЕ аОбаОбб
		peqspeed = 2
		if (peqx == cipax+20 and peqy == cipay-20) or (peqx == cipax+21 and peqy == cipay-20)
		or (peqx == cipax+20 and peqy == cipay-21) or (peqx == cipax+21 and peqy == cipay-21) then
			if peqframes > 150 then peqframes = 0 love.audio.play(peqshot)	---------аЗаАаДаЕбаЖаКаА аОаКаОаЛаО баИаПб
			elseif peqframes > 100 then
				iscipa = false
				ispchela = false
				love.audio.stop(peqshot)
				peqspeed = 1
			end 
		
		elseif peqx > cipax+20 and peqy < cipay-20 then
			peqdirection = 7
			peqx = peqx-peqspeed
			peqy = peqy+peqspeed
		elseif peqx > cipax+20 and peqy > cipay-20 then
			peqdirection = 2
			peqx = peqx-peqspeed
			peqy = peqy-peqspeed
		elseif peqx < cipax+20 and peqy > cipay-20 then
			peqdirection = 4
			peqx = peqx+peqspeed
			peqy = peqy-peqspeed
		elseif peqx < cipax+20 then
			peqdirection = 5
			peqx = peqx+peqspeed
		elseif peqx > cipax+20 then
			peqdirection = 1
			peqx = peqx-peqspeed
		elseif peqy < cipay-20 then
			peqdirection = 6
			peqy = peqy+peqspeed
		elseif peqy > cipay-20 then
			peqdirection = 3
			peqy = peqy-peqspeed
		elseif peqx < cipax+20 and peqy < cipay-20 then
			peqdirection = 6
			peqx = peqx-peqspeed
			peqy = peqy+peqspeed
		end
	end
	else love.audio.stop(peqflying)
	end
	--------------------------------------------------------------------аПаОаЛаЕб аПаИаКаВаОаДаА
	
	
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end
	if timr2==30 then
	if beanframe==1 then
	
			------------------------------------------------------------------------
			if peqmode == true then
				if (peqx == cipax+20 and peqy == cipay-20) or (peqx == cipax+21 and peqy == cipay-20)
				or (peqx == cipax+20 and peqy == cipay-21) or (peqx == cipax+21 and peqy == cipay-21) then		---бббаЕаЛбаБаА аПаО баИаПаЕ ббаЕаЙаМ 1
					peq = love.graphics.newImage("pequod/shot1.png")
				elseif peqdirection == 4 or peqdirection == 5 or peqdirection == 6 then
					peq = love.graphics.newImage("pequod/peq4.1.png")
				elseif peqdirection == 1 or peqdirection == 2 or peqdirection == 8 then
					peq = love.graphics.newImage("pequod/peq3.1.png")
				elseif peqdirection == 3 or peqdirection == 7 then
					if peqolddirection == 1 or peqolddirection ==  2 or peqolddirection == 8 then
						peq = love.graphics.newImage("pequod/peq1.1.png")
					elseif peqolddirection == 4 or peqolddirection == 5 or peqolddirection == 6 then
						peq = love.graphics.newImage("pequod/peq2.1.png")
					else peq = love.graphics.newImage("pequod/peq1.1.png")
					end
				end
			end
			-------------------------------------------------------------------------
			
			
		if mgsmode==true then
		 bean=love.graphics.newImage("mgs/solid.gif")
		 beanframe=2
		 timr2=0
		elseif stalkermode==true then
		 bean=love.graphics.newImage("stalker/stalker.gif")
		 beanframe=2
		 timr2=0
		else
		  bean=love.graphics.newImage("gosling/gosling.gif")
		 beanframe=2
		 timr2=0
		end
	 elseif beanframe==2 then
	 
	 	 	---------------------------------------------------------------------------
		if peqmode == true then
			if (peqx == cipax+20 and peqy == cipay-20) or (peqx == cipax+21 and peqy == cipay-20)
			or (peqx == cipax+20 and peqy == cipay-21) or (peqx == cipax+21 and peqy == cipay-21) then		---бббаЕаЛбаБаА аПаО баИаПаЕ ббаЕаЙаМ 2
					peq = love.graphics.newImage("pequod/shot2.png")
			elseif peqdirection == 1 or peqdirection == 2 or peqdirection == 8 then
				peq = love.graphics.newImage("pequod/peq3.2.png")
			elseif peqdirection == 4 or peqdirection == 5 or peqdirection == 6 then
				peq = love.graphics.newImage("pequod/peq4.2.png")
			elseif peqdirection == 3 or peqdirection == 7 then
				if peqolddirection == 1 or peqolddirection ==  2 or peqolddirection == 8 then
					peq = love.graphics.newImage("pequod/peq1.2.png")
				elseif peqolddirection == 4 or peqolddirection == 5 or peqolddirection == 6 then
					peq = love.graphics.newImage("pequod/peq2.2.png")
				else peq = love.graphics.newImage("pequod/peq1.2.png")
				end
			end
		end
		-----------------------------------------------------------------------------
		
		
	   if mgsmode==true then
	   bean=love.graphics.newImage("mgs/solid2.gif")
	   beanframe=1
	   timr2=0
	   elseif stalkermode==true then 
	   bean=love.graphics.newImage("stalker/stalker2.gif")
		beanframe=1
		timr2=0
	   else
	    bean=love.graphics.newImage("gosling/gosling2.gif")
	   beanframe=1
	   timr2=0
	   end
	  end
	 end
	if timr==20 then 
	timr=0
	gencipa=love.math.random(0,160)
	if     iscipa==true and bans>=1000 and bans<15000 and bans-100>=0 then bans=bans-100 ispchela=false
	elseif iscipa==true and bans<100 and bans<1000 and bans-10>=0 then bans=bans-10 ispchela=false 
	elseif iscipa==true and bans>=15000 and bans<25000 and bans-3000>=0 then bans=bans-1000 ispchela=false
	elseif iscipa==true and bans>=25000 and bans<150000 and bans-5000>=0 then bans=bans-5000 ispchela=false
	elseif iscipa==true and bans>=150000 and bans-50000>=0 then bans=bans-50000 ispchela=true
	elseif iscipa==true and (bans-10<0 or bans==0) and rp-1>=0 then rp=rp-1 ispchela=false end
	if iscipa==false then
	 if gencipa==0 then
	 iscipa=true
	 cipax = love.math.random(300,400)
	 cipay = love.math.random(100,300)
	 end
	 end
	 if cats>1 then
		bans=bans+(cats-1)
	 end
	 if felixs>1 then
		bans=bans+((felixs-1)*10)
	 end
	 if bots>1 then
	   bans=bans+((bots-1)*100)
	 end
	 if zoes>1 then
	   bans=bans+((zoes-1)*1000)
	 end
	end
 if bans>=48000 and isbanfelix==0 then
  isbanfelix=1
 end
end

function love.mousepressed(x, y, button)
 if button=="l" and x>=1 and x<=155 and y>=20 and y<=79 then
  bans=bans+bans_add
  elseif x>=784 and x<=800 and y>=584 and y<=600 then love.audio.play(slava)
 elseif button=="l" and x>=1 and x<=155 and y>=80 and y<=139 then
	 if bans>=(10*rp*(cats)) and rp>=2 and bans>=0 then
		cats=cats+1
		bans=bans-(10*rp*(cats-1))
		end
 elseif button=="l" and x>=1 and x<=155 and y>=140 and y<=200 then
	if bans>=50*rp*(felixs) and rp>=3 and bans>=0 then
	felixs=felixs+1
	bans=bans-(50*rp*(felixs-1))
	end
 elseif button=="l" and x>=1 and x<=155 and y>=263 and y<=323 then
	if bans>=300*rp*(zoes) and rp>=15 and bans>=0 then
	zoes=zoes+1
	bans=bans-(300*rp*(zoes-1))
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
	end
 elseif button=="l" and x>=1 and x<=155 and y>=538 and y<=600 then
	 if bans>=50*rp and bans>=0 then
	  bans=bans-(50*rp)
	  rp=rp+1
	  end
elseif button=="r" and x>=1 and x<=155 and y>=538 and y<=600 then
	 if bans>=(50*rp)*10 and bans>=0 then
	  bans=bans-((50*rp)*10)
	  rp=rp+10
	 end
	 
	 	 -----------------------------------------------------------  аВбаЗбаВаАаЕаМ аПаИаКаВаОаД
 elseif button == "l" and x>=1 and x<=155 and y>=326 and y<=387 then	 
		if peqmode == false and bans>=30 then
		peqmode = true
		bans = bans - 30
		love.audio.play(peqcoming)
		end
	 -----------------------------------------------------------
	 
	 end
  if iscipa==true then
   if button=="l" and x>=cipax and x<=cipax+16 and y>=cipay and y<=cipay+16 then
  iscipa=false
  ispchela=false
    peqspeed = 1	-------------------------------------
  end
  end
  if isbanfelix==1 and x>=420 and x<=470 and y>=170 and y<=190 then --400,100
   bans=0
   love.audio.play(ors)
   isbanfelix=3
  elseif isbanfelix==1 and x>=520 and x<=570 and y>=170 and y<=190 then
  love.audio.play(noice)
  bans=bans+1 -- ( ЭЁ~ ЭЪ ЭЁТА)
  isbanfelix=3
  end
end

function love.draw()
if isbanfelix==1 then
love.graphics.draw(banfelix,400,100)
end
if mgsmode==true then
love.window.setTitle("A Hideo Kojima Game")
elseif gachimuchimode==true then
love.window.setTitle("Boy♂Next♂Door♂ ")
elseif stalkermode==true then
love.window.setTitle("ANYY CHEEKI BREEKI I V DAMKEE")
else
love.window.setTitle("ATMTA")
end
if ishelp==true then
love.graphics.draw(help,650,170)
end
if iscipa==true and ispchela==false then
love.graphics.draw(cipa,cipax,cipay)
end
if ispchela==true then
love.graphics.draw(pchela,cipax,cipay)
end
love.graphics.draw(riba,784,584)
love.graphics.draw(bean,300,300)
love.graphics.setColor(0,0,0)
love.graphics.print("ATMTA Clicker 0.9testing",1,1)
love.graphics.print("Banned: "..bans,150,1)
love.graphics.print("MEMES: "..rp,160,550)
love.graphics.print(50*rp.." : "..(50*rp)*10,170,538)
love.graphics.setColor(255,255,255)
love.graphics.draw(ban_b,1,20)
love.graphics.setColor(133,133,133)
love.graphics.draw(atmta,1,80)
love.graphics.draw(felix,1,140)
love.graphics.draw(bot_b,1,202)
love.graphics.draw(zoe,1,263)
if peqmode == false then love.graphics.draw(callpeq, 1, 325)
end													-----------------------------------
if ispruglo==false then
love.graphics.draw(pruglo,650,20)
love.graphics.print("500",620,20)
elseif ispruglo==true and isuvarov==false then
love.graphics.draw(uvarov,650,20)
love.graphics.print("2500",610,20)
elseif isuvarov==true and isnomad==false then
love.graphics.draw(nomad,650,20)
love.graphics.print("10000",590,20)
elseif isnomad==true and isjontron==false then
love.graphics.draw(jontron,650,20)
love.graphics.print("50000",590,20)
elseif isjontron==true and iswho==false then
love.graphics.draw(who_b,650,20)
love.graphics.print("250000",580,20)
end
love.graphics.draw(forcememe,1,538)
if rp>=2 then
love.graphics.setColor(0,0,0)
love.graphics.print(10*rp*cats.." : "..cats-1,170,80)
end
if rp>=3 then
love.graphics.setColor(0,0,0)
love.graphics.print(50*rp*felixs.." : "..felixs-1,170,140)
end
if rp>=10 then
love.graphics.setColor(0,0,0)
love.graphics.print(100*rp*bots.." : "..bots-1,170,200)
end
if rp>=15 then
love.graphics.setColor(0,0,0)
love.graphics.print(300*rp*zoes.." : "..zoes-1,170,260)
end
if bans>=(10*rp*cats) and rp>=2 then
love.graphics.setColor(255,255,255)
love.graphics.draw(atmta,1,80)
end
if bans>=(50*rp*felixs) and rp>=3 then
love.graphics.setColor(255,255,255)
love.graphics.draw(felix,1,140)
end
if bans>=(300*rp*zoes) and rp>=15 then
love.graphics.setColor(255,255,255)
love.graphics.draw(zoe,1,263)
end
if bans>=500 and rp>=5 and ispruglo==false then
love.graphics.setColor(255,255,255)
love.graphics.draw(pruglo,650,20)
end
if bans>=2500 and rp>=15 and isuvarov==false and ispruglo==true then
love.graphics.setColor(255,255,255)
love.graphics.draw(uvarov,650,20)
end
if bans>=10000 and rp>=25 and isnomad==false and isuvarov==true then
love.graphics.setColor(255,255,255)
love.graphics.draw(nomad,650,20)
end
if bans>=50000 and rp>=50 and isjontron==false and isnomad==true then
love.graphics.setColor(255,255,255)
love.graphics.draw(jontron,650,20)
end
if bans>=250000 and rp>=100 and isjontron==true and iswho==false then
love.graphics.setColor(255,255,255)
love.graphics.draw(who_b,650,20)
end
if bans>=(100*rp*bots) and rp>=10 then
love.graphics.setColor(255,255,255)
love.graphics.draw(bot_b,1,202)
end
if bans>=50*rp then
love.graphics.setColor(255,255,255)
love.graphics.draw(forcememe,1,538)
end
love.graphics.setColor(255,255,255)

--------------------------------------------------------------------------
if bans>=30 and peqmode == false then
love.graphics.setColor(255, 255, 255)
love.graphics.draw(callpeq, 1, 325)
end

if peqmode == true then love.graphics.draw(peq, peqx, peqy)
end

end