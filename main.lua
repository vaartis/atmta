function love.load()
require("funcs/draw")
require("funcs/mousepressed")
require("funcs/update")
bg = love.graphics.newImage("bg.jpg")
love.keyboard.setTextInput(false)
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
font = love.graphics.newFont("averia-bold.ttf", 14)
love.graphics.setFont(font)

fallingyee = love.graphics.newImage("falling/yee.png")
fallingmgs = love.graphics.newImage("falling/mgs.png")
fallingstl = love.graphics.newImage("falling/stalker.png") 
fallinggachimuchi= love.graphics.newImage("falling/gachimuchi.png") 

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
fallsnake = love.audio.newSource("falling/mgs.ogg", static)
fallstl = love.audio.newSource("falling/stalker.ogg", static)
fallyee = love.audio.newSource("falling/yee.ogg", static)
fallgachimuchi=love.audio.newSource("falling/gachimuchi.ogg", static)

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
fallsnake:setVolume(0.7)
fallstl:setVolume(0.7)
fallyee:setVolume(0.7)

timr=0
timr2=0
beanframe=1
mgsmode=false
gachimuchimode=false
stalkermode=false

peqmode=false						
peqx = 1100							
peqy = love.math.random(100, 500)		
peqframes = -300						
peqdirection = 1					
peqrange = love.math.random(150, 300)	
peqspeed = 1	
					
fallx=love.math.random(200,500)
fally=1

cipax = 400 
cipay = 300

bans=0
cats=1
felixs=1
bots=1
rp=1
zoes=1
bans_add=1
isbanfelix=0
issorry=0
ishelp=false
ispruglo=false
isuvarov=false
isnomad=false
isjontron=false
iswho=false
iscipa=false
ispchela=false
isfall=false

willdio=9
diomode=false
dio=love.graphics.newImage("dio/dio.png")
dio_begin = love.audio.newSource("dio/zawarudo.ogg", static)
dio_counting = love.audio.newSource("dio/count.ogg", static)
dio_end = love.audio.newSource("dio/end.ogg", static)

banfelix = love.graphics.newCanvas(200,100)
 love.graphics.setCanvas(banfelix)
	love.graphics.setColor(133,133,133)
	love.graphics.rectangle("fill",1,1,198,98)
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("line",1,1,198,98)
	love.graphics.print("\n                 Ban Felix?")
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
sorry = love.graphics.newCanvas(200,100)
	love.graphics.setCanvas(sorry)
	love.graphics.setColor(133,133,133)
	love.graphics.rectangle("fill",1,1,198,98)
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("line",1,1,198,98)
	love.graphics.print("\n            Oh shit,im sorry..")
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill",20,70,50,20)
	love.graphics.setColor(0,0,0)
	love.graphics.print("Ok",30,75)
	love.graphics.rectangle("line",20,70,50,20)
	love.keyboard.setTextInput(true)
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
	 elseif key=='h' or key=='H'or key=='р' or key=='Р' then
	  if ishelp==true then
	  ishelp=false
	  else
	  ishelp=true
	  end
end
end
function love.textinput(t)
    text = t
	
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
	if text=="oh shit im sorry" and issorry==1 then
		issorry=2
		bans=bans+2000000
	end
		timr=timr+1
		timr2=timr2+1
		peqai()
		timer2()
		timer1()
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end
	if bans>=48000 and isbanfelix==0 then
		isbanfelix=1
	elseif bans>=1000000 and issorry==0 then
		issorry=1
	end
end

function love.mousepressed(x, y, button)
clicks(x,y,button) --Buttons and YEE click check. X,y,click sre the same as ^
if isbanfelix==1 and x>=420 and x<=470 and y>=170 and y<=190 then --400,100
   bans=0
   love.audio.play(ors)
   isbanfelix=3
  elseif isbanfelix==1 and x>=520 and x<=570 and y>=170 and y<=190 then
  love.audio.play(noice)
  bans=bans+1 -- lenny face
  isbanfelix=3
  end
end

function love.draw()
love.graphics.draw(bg,1,1)
if isbanfelix==1 then
love.graphics.draw(banfelix,400,100)
end
if issorry==1 then
love.graphics.draw(sorry,400,100)
love.graphics.print(text,400,300)
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
init() --All da basic drawing & bean
windowTitles() --Window titles
fallcheck() --Drawing fallin things~
greyButtons() --All gray buttons are here
buttons() --All clickable buttons & their prices~ are here
if peqmode == true then love.graphics.draw(peq, peqx, peqy) end
love.graphics.setColor(255,255,255)
end
