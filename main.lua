function love.load()
love.filesystem.setIdentity("saves")
bans = love.filesystem.read("sv")
love.graphics.setBackgroundColor(255,255,255)

atmta = love.graphics.newImage("buttons/button1.jpg")
felix = love.graphics.newImage("buttons/button2.jpg")
ban_b = love.graphics.newImage("buttons/ban.jpg")
pause_m = love.graphics.newImage("buttons/pause_m.jpg")
cipa = love.graphics.newImage("buttons/cipa.png") 
forcememe = love.graphics.newImage("buttons/makememe.jpg")

icon = love.image.newImageData("ico.jpg")
love.window.setIcon(icon)
font = love.graphics.newFont(love._vera_ttf, 14)
love.graphics.setFont(font)
music = love.audio.newSource("music.mp3",stream)
love.audio.play(music)
love.audio.setVolume(0.1)
timr=0
bans=0
cats=0
felixs=0
rp=1
bans_add=1
end

function love.keypressed(key)
 if key == 'p' or key=='P' or key=='з' or key=='З' then
      love.audio.pause()
   elseif key == 'r' or key=='R' or key=='к' or key=='К' then
      love.audio.resume()
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
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end
	if timr==20 then 
	timr=0
	bans=bans+cats
	bans=bans+(felixs*10)
	end
	end

function love.mousepressed(x, y, button)
 if button=="l" and x>=1 and x<=155 and y>=20 and y<=79 then
 bans=bans+bans_add
 elseif button=="l" and x>=1 and x<=155 and y>=80 and y<=139 then
	 if bans>=10*rp and rp>=2 then
	cats=cats+1
	bans=bans-(10*rp)
	end
 elseif button=="l" and x>=1 and x<=155 and y>=140 and y<=200 then
	if bans>=50*rp and rp>=3 then
	felixs=felixs+1
	bans=bans-(50*rp)
	end
 elseif button=="l" and x>=170 and x<=186 and y>=20 and y<=36 then	
	 if bans>=500*rp and rp>=4 then
	 bans_add=bans_add+1
	 bans=bans-(500*rp)
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
love.graphics.setColor(0,0,0)
love.graphics.print("ATMTA Clicker 0.2",1,1)
love.graphics.print("Banned: "..bans,150,1)
love.graphics.print("MEMES: "..rp,250,1)
love.graphics.print("\nMEMES NEEDED: 2",170,80)
love.graphics.print("\nMEMES NEEDED: 3",170,140)
love.graphics.print("\nMEMES NEEDED: 5",186,20)
love.graphics.print(50*rp,170,538)
love.graphics.setColor(255,255,255)
love.graphics.draw(ban_b,1,20)
love.graphics.setColor(133,133,133)
love.graphics.draw(atmta,1,80)
love.graphics.draw(felix,1,140)
love.graphics.draw(cipa,170,20)
love.graphics.draw(forcememe,1,538)
if rp>= 2 then
love.graphics.setColor(0,0,0)
love.graphics.print(10*rp,170,80)
end
if rp>=3 then
love.graphics.setColor(0,0,0)
love.graphics.print(50*rp,170,140)
end
if rp>=5 then
love.graphics.setColor(0,0,0)
love.graphics.print(500*rp,186,20)
end
if bans>=(10*rp) and rp>=2 then
love.graphics.setColor(255,255,255)
love.graphics.draw(atmta,1,80)
end
if bans>=(50*rp) and rp>=3 then
love.graphics.setColor(255,255,255)
love.graphics.draw(felix,1,140)
end
if bans>=(500*rp) and rp>=5 then
love.graphics.setColor(255,255,255)
love.graphics.draw(cipa,170,20)
end
if bans>=50*rp then
love.graphics.setColor(255,255,255)
love.graphics.draw(forcememe,1,538)
end
love.graphics.setColor(255,255,255)
end
