function love.load()
love.graphics.setBackgroundColor(255,255,255)

atmta = love.graphics.newImage("buttons/button1.jpg")
felix = love.graphics.newImage("buttons/button2.jpg")
bot_b = love.graphics.newImage("buttons/button3.jpg")
ban_b = love.graphics.newImage("buttons/ban.jpg")
pause_m = love.graphics.newImage("buttons/pause_m.jpg")
pruglo = love.graphics.newImage("buttons/pruglo.jpg") 
uvarov = love.graphics.newImage("buttons/uvarov.jpg") 
nomad = love.graphics.newImage("buttons/nomad.jpg") 
forcememe = love.graphics.newImage("buttons/makememe.jpg")
bean = love.graphics.newImage("gosling/gosling.gif")
icon = love.image.newImageData("ico.jpg")
love.window.setIcon(icon)
font = love.graphics.newFont(love._vera_ttf, 14)
love.graphics.setFont(font)

korovan=love.audio.newSource("sound/korovan.ogg",static)
darude=love.audio.newSource("sound/du.ogg",static)
ors=love.audio.newSource("sound/or.ogg",static)
noice=love.audio.newSource("sound/noice.ogg",static)
music = love.audio.newSource("music.ogg",stream)
music2 = love.audio.newSource("gosling/gosling.ogg",stream)
mgsnuclear = love.audio.newSource("mgs/mgs.ogg",stream)

darude:setLooping(true)
music:setLooping(true)
music2:setLooping(true)
mgsnuclear:setLooping(true)

love.audio.play(music)
love.audio.setVolume(0.1)
timr=0
timr2=0
beanframe=1
mgsmode=false

bans=0
cats=1
felixs=1
bots=1
rp=1
bans_add=1
isbanfelix=0
ishelp=false
ispruglo=false
isuvarov=false
isnomad=false

banfelix = love.graphics.newCanvas(200,100)
 love.graphics.setCanvas(banfelix)
	love.graphics.setColor(133,133,133)
	love.graphics.rectangle("fill",1,1,198,98)
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("line",1,1,198,98)
	love.graphics.print("\n                 Ban Felix?")
	--Кнопки
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
	love.graphics.print("            Help \n\n Cat : 2 MEMES\n (+1ban/s)\n Felix : 3 MEMES\n (+10ban/s)\n Pruglo : 5 MEMES\n (+1ban/click)\n BOGDAN : 10 MEMES \n (+100ban/s)\n Uvarov : 15 MEMES\n (+10ban/click)\n Nomad : 25 MEMES\n (+100 bans/click)")
 love.graphics.setCanvas()
end

function love.keypressed(key)
 if key == 'p' or key=='P' or key=='з' or key=='З' then
      love.audio.pause()
   elseif key == 'r' or key=='R' or key=='к' or key=='К' then
      love.audio.resume()
   elseif key=="1" then 
	  mgsmode=false
	  love.audio.pause()
      love.audio.play(music)
   elseif key=="2" then
      mgsmode=false
	  love.audio.pause()
      love.audio.play(music2)
	elseif key=="3" then
	 mgsmode=true
	 --bans=bans+10000
	 love.audio.pause()
	 love.audio.play(mgsnuclear)
	 elseif key=="4" then
	 mgsmode=false
	 love.audio.pause()
	 love.audio.play(darude)
	 elseif key=='h' or key=='H'or key=='р' or key=='Р' then
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
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end
	if timr2==30 then
	if beanframe==1 then
		if mgsmode==false then
		bean=love.graphics.newImage("gosling/gosling.gif")
		beanframe=2
		timr2=0
		else
		bean=love.graphics.newImage("mgs/solid.gif")
		beanframe=2
		timr2=0
		end
	 elseif beanframe==2 then
	   if mgsmode==false then
	   bean=love.graphics.newImage("gosling/gosling2.gif")
	   beanframe=1
	   timr2=0
	   else
	    bean=love.graphics.newImage("mgs/solid2.gif")
	   beanframe=1
	   timr2=0
	   end
	  end
	 end
	if timr==20 then 
	timr=0
	 if cats>1 then
		bans=bans+(cats-1)
	 end
	 if felixs>1 then
		bans=bans+((felixs-1)*10)
	 end
	 if bots>1 then
	   bans=bans+((bots-1)*100)
	 end
	end
 if bans>=48000 and isbanfelix==0 then
  isbanfelix=1
 end
end

function love.mousepressed(x, y, button)
 if button=="l" and x>=1 and x<=155 and y>=20 and y<=79 then
 bans=bans+bans_add
 elseif button=="l" and x>=1 and x<=155 and y>=80 and y<=139 then
	 if bans>=(10*rp*(cats-1)) and rp>=2 and bans>=0 then
		cats=cats+1
		bans=bans-(10*rp*(cats-1))
		end
 elseif button=="l" and x>=1 and x<=155 and y>=140 and y<=200 then
	if bans>=50*rp*(felixs-1) and rp>=3 and bans>=0 then
	felixs=felixs+1
	bans=bans-(50*rp*(felixs-1))
	end
  elseif button=="l" and x>=650 and x<=800 and y>=20 and y<=170 then	
 	  if bans>=500 and rp>=5 and bans>=0 and ispruglo==false then
      bans_add=bans_add+1
      bans=bans-500
	  ispruglo=true
	  elseif bans>=500 and rp>=15 and bans>=0 and isuvarov==false then
	  bans_add=bans_add+10
      bans=bans-2500
	  isuvarov=true
	  elseif bans>=10000 and rp>=25 and bans>=0 and isnomad==false then
	  bans_add=bans_add+100
      bans=bans-10000
	  love.audio.play(korovan)
	  isnomad=true
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
end
  if isbanfelix==1 and x>=420 and x<=470 and y>=170 and y<=190 then --400,100
   bans=0
   love.audio.play(ors)
   isbanfelix=3
  elseif isbanfelix==1 and x>=520 and x<=570 and y>=170 and y<=190 then
  love.audio.play(noice)
  bans=bans+1 -- ( ͡~ ͜ʖ ͡°)
  isbanfelix=3
  end
end

function love.draw()
if isbanfelix==1 then
love.graphics.draw(banfelix,400,100)
end
if mgsmode==false then
love.window.setTitle("ATMTA")
else
love.window.setTitle("A Hideo Kojima Game")
end
if ishelp==true then
love.graphics.draw(help,650,170)
end
love.graphics.draw(bean,300,300)
love.graphics.setColor(0,0,0)
love.graphics.print("ATMTA Clicker 0.6",1,1)
love.graphics.print("Banned: "..bans,150,1)
love.graphics.print("MEMES: "..rp,160,550)
love.graphics.print(50*rp,170,538)
love.graphics.setColor(255,255,255)
love.graphics.draw(ban_b,1,20)
love.graphics.setColor(133,133,133)
love.graphics.draw(atmta,1,80)
love.graphics.draw(felix,1,140)
love.graphics.draw(bot_b,1,202)
if ispruglo==false then
love.graphics.draw(pruglo,650,20)
love.graphics.print("500",620,20)
elseif ispruglo==true and isuvarov==false then
love.graphics.draw(uvarov,650,20)
love.graphics.print("2500",610,20)
elseif isuvarov==true and isnomad==false then
love.graphics.draw(nomad,650,20)
love.graphics.print("10000",590,20)
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
if bans>=(10*rp*cats) and rp>=2 then
love.graphics.setColor(255,255,255)
love.graphics.draw(atmta,1,80)
end
if bans>=(50*rp*felixs) and rp>=3 then
love.graphics.setColor(255,255,255)
love.graphics.draw(felix,1,140)
end
if bans>=500 and rp>=5 and ispruglo==false then
love.graphics.setColor(255,255,255)
love.graphics.draw(pruglo,650,20)
end
if bans>=2500 and rp>=15 and isuvarov==false then
love.graphics.setColor(255,255,255)
love.graphics.draw(uvarov,650,20)
end
if bans>=10000 and rp>=25 and isnomad==false then
love.graphics.setColor(255,255,255)
love.graphics.draw(nomad,650,20)
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
end