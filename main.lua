function love.load()
love.graphics.setBackgroundColor(255,255,255)

atmta = love.graphics.newImage("buttons/button1.jpg")
felix = love.graphics.newImage("buttons/button2.jpg")
bot_b = love.graphics.newImage("buttons/button3.jpg")
ban_b = love.graphics.newImage("buttons/ban.jpg")
pause_m = love.graphics.newImage("buttons/pause_m.jpg")
cipa = love.graphics.newImage("buttons/cipa.png") 
forcememe = love.graphics.newImage("buttons/makememe.jpg")
bean = love.graphics.newImage("gosling/gosling.gif")
icon = love.image.newImageData("ico.jpg")
love.window.setIcon(icon)
font = love.graphics.newFont(love._vera_ttf, 14)
love.graphics.setFont(font)

music = love.audio.newSource("music.mp3",stream)
music2 = love.audio.newSource("gosling/gosling.mp3",stream)

music:setLooping(true)
music2:setLooping(true)
love.audio.play(music)
love.audio.setVolume(0.1)
timr=0
timr2=0
beanframe=1

bans=0
cats=1
felixs=1
bots=1
rp=1
bans_add=1
end

function love.keypressed(key)
 if key == 'p' or key=='P' or key=='з' or key=='З' then
      love.audio.pause()
   elseif key == 'r' or key=='R' or key=='к' or key=='К' then
      love.audio.resume()
   elseif key=="1" then 
	  love.audio.pause(music2)
      love.audio.play(music)
   elseif key=="2" then
   bans=bans+100000
   
	  love.audio.pause(music)
      love.audio.play(music2)
	elseif key=="z" then
	mxtheme=true
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
		bean=love.graphics.newImage("gosling/gosling.gif")
		beanframe=2
		timr2=0
	 elseif beanframe==2 then
	   bean=love.graphics.newImage("gosling/gosling2.gif")
	   beanframe=1
	   timr2=0
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
end

function love.mousepressed(x, y, button)
 if button=="l" and x>=1 and x<=155 and y>=20 and y<=79 then
 bans=bans+bans_add
 elseif button=="l" and x>=1 and x<=155 and y>=80 and y<=139 then
	 if bans>=(10*rp*(cats-1)) and rp>=2 then
		cats=cats+1
		bans=bans-(10*rp*(cats-1))
		end
 elseif button=="l" and x>=1 and x<=155 and y>=140 and y<=200 then
	if bans>=50*rp*(felixs-1) and rp>=3 then
	felixs=felixs+1
	bans=bans-(50*rp*(felixs-1))
	end
 elseif button=="l" and x>=170 and x<=186 and y>=20 and y<=36 then	
	 if bans>=500*rp*(bans_add/10) and rp>=5 then
	 bans_add=bans_add+10
	 bans=bans-500*rp*(bans_add/10)
	 end
 elseif button=="l" and x>=1 and x<=155 and y>=202 and y<=262 then
	if bans>=100*rp*(bots-1) and rp>=10 then
	bots=bots+1
	bans=bans-(100*rp*(bots-1))
	end
 elseif button=="l" and x>=1 and x<=155 and y>=538 and y<=600 then
	 if bans>=50*rp then
	  bans=bans-(50*rp)
	  rp=rp+1
	 end
end
end

function love.draw()
love.window.setTitle("ATMTA")
love.graphics.draw(bean,300,300)
love.graphics.setColor(0,0,0)
love.graphics.print("ATMTA Clicker 0.3",1,1)
love.graphics.print("Banned: "..bans,150,1)
love.graphics.print("MEMES: "..rp,160,550)
love.graphics.print("\nMEMES NEEDED : 2",170,90)
love.graphics.print("\nMEMES NEEDED : 3",170,150)
love.graphics.print("\nMEMES NEEDED : 5",186,20)
love.graphics.print("\nMEMES NEEDED : 10",170,210)
love.graphics.print(50*rp,170,538)
love.graphics.setColor(255,255,255)
love.graphics.draw(ban_b,1,20)
love.graphics.setColor(133,133,133)
love.graphics.draw(atmta,1,80)
love.graphics.draw(felix,1,140)
love.graphics.draw(bot_b,1,202)
love.graphics.draw(cipa,170,20)

love.graphics.draw(forcememe,1,538)
if rp>=2 then
love.graphics.setColor(0,0,0)
love.graphics.print(10*rp*cats.." : "..cats-1,170,80)
end
if rp>=3 then
love.graphics.setColor(0,0,0)
love.graphics.print(50*rp*felixs.." : "..felixs-1,170,140)
end
if rp>=5 then
love.graphics.setColor(0,0,0)
love.graphics.print(500*rp*(bans_add/10).." : "..(bans_add-1)/10,186,20)
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
if bans>=(500*rp*(bans_add/10)) and rp>=5 then
love.graphics.setColor(255,255,255)
love.graphics.draw(cipa,170,20)
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