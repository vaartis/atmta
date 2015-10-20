function init() --All da basic drawing & bean
	love.graphics.draw(riba,784,584)
	love.graphics.draw(bean,300,300)
	if mode == "stalker" then
		love.graphics.setColor(255,0,0)
		love.graphics.print("Gop-stop: "..bans,150,1)
		love.graphics.print("Habar: "..rp,160,550)
	else
		love.graphics.setColor(0,0,0)
		love.graphics.print("Banned: "..bans,150,1)
		love.graphics.print("MEMES: "..rp,160,550)
	end
	love.graphics.print("ATMTA Clicker 1.0t",1,1)
	love.graphics.print(50*rp.." : "..(50*rp)*10,170,538)
	love.graphics.setColor(255,255,255)
	if mode == "stalker" then
		love.graphics.draw(b_shmonat, 1, 20)
	else
		love.graphics.draw(ban_b,1,20)
	end
	love.graphics.setColor(255,255,255)
end

function windowTitles() --Window titles
	if mode == "mgs" then
		love.window.setTitle("A Hideo Kojima Game")
	elseif mode == "gachimuchi" then
		love.window.setTitle("Boy♂Next♂Door♂ ")
	elseif mode == "stalker" then
		love.window.setTitle("ANYY CHEEKI BREEKI I V DAMKEE")
	else
		love.window.setTitle("ATMTA")
	end
end

function greyButtons() --All gray buttons are here
	love.graphics.setColor(133,133,133)
	if mode == "stalker" then
		love.graphics.draw(b_pm, 1, 80)
		love.graphics.draw(b_mp5, 1, 140)
		love.graphics.draw(b_kalash, 1, 202)
		love.graphics.draw(b_vss, 1, 263)
		love.graphics.draw(b_shelupon, 1, 538)
	else
		love.graphics.draw(atmta,1,80)
		love.graphics.draw(felix,1,140)
		love.graphics.draw(bot_b,1,202)
		love.graphics.draw(zoe,1,263)
		love.graphics.draw(forcememe,1,538)
	end
	if peqmode == false then love.graphics.draw(callpeq, 1, 325) end					
	if ispruglo==false then
		love.graphics.draw(pruglo,650,20)
		love.graphics.setColor(0,0,0)
		love.graphics.print("500",620,20)
		love.graphics.setColor(255,255,255)
	elseif ispruglo==true and isuvarov==false then
		love.graphics.draw(uvarov,650,20)
		love.graphics.setColor(0,0,0)
		love.graphics.print("2500",610,20)
		love.graphics.setColor(255,255,255)
	elseif isuvarov==true and isnomad==false then
		love.graphics.draw(nomad,650,20)
		love.graphics.setColor(0,0,0)
		love.graphics.print("10000",590,20)
		love.graphics.setColor(255,255,255)
	elseif isnomad==true and isjontron==false then
		love.graphics.draw(jontron,650,20)
		love.graphics.setColor(0,0,0)
		love.graphics.print("50000",590,20)
		love.graphics.setColor(255,255,255)
	elseif isjontron==true and iswho==false then
		love.graphics.draw(who_b,650,20)
		love.graphics.setColor(0,0,0)
		love.graphics.print("250000",580,20)
		love.graphics.setColor(255,255,255)
	end
end
function fallcheck() --Drawing fallin things~
	if isfall==true then
		if diomode == true then
			love.graphics.draw(dio, fallx, fally)
		elseif mode == "mgs" then
			love.graphics.draw(fallingmgs,fallx,fally)
		elseif mode == "stalker" then
			love.graphics.draw(fallingstl,fallx,fally)
		elseif mode == "dio" then
			love.graphics.draw(dio,fallx,fally)
		elseif mode == "gachimuchi" then
			love.graphics.draw(fallinggachimuchi,fallx,fally)
		else
			love.graphics.draw(fallingyee,fallx,fally)
		end
	end
end
function buttons() --All clickable buttons & their prices~ are here
	if rp>=2 then
		if mode == "stalker" then
			love.graphics.setColor(255,0,0)
		else
			love.graphics.setColor(0,0,0)
		end
		love.graphics.print(10*rp*cats.." : "..cats-1,170,80)
	end
	if rp>=3 then 
		if mode == "stalker" then
			love.graphics.setColor(255,0,0)
		else
			love.graphics.setColor(0,0,0)
		end
		love.graphics.print(50*rp*felixs.." : "..felixs-1,170,140)
	end
	if rp>=10 then 
		if mode == "stalker" then
			love.graphics.setColor(255,0,0)
		else
			love.graphics.setColor(0,0,0)
		end
		love.graphics.print(100*rp*bots.." : "..bots-1,170,200)
	end
	if rp>=15 then 
		if mode == "stalker" then
			love.graphics.setColor(255,0,0)
		else
			love.graphics.setColor(0,0,0)
		end
		love.graphics.print(300*rp*zoes.." : "..zoes-1,170,260)
	end
	if bans>=(10*rp*cats) and rp>=2 then
		love.graphics.setColor(255,255,255)
		if mode == "stalker" then
			love.graphics.draw(b_pm, 1, 80)
		else
			love.graphics.draw(atmta,1,80)
		end
	end
	if bans>=(50*rp*felixs) and rp>=3 then
		love.graphics.setColor(255,255,255)
		if mode == "stalker" then
			love.graphics.draw(b_mp5, 1, 140)
		else
			love.graphics.draw(felix,1,140)
		end
	end
	if bans>=(100*rp*bots) and rp>=10 then
		love.graphics.setColor(255,255,255)
		if mode == "stalker" then
			love.graphics.draw(b_kalash, 1, 202)
		else
			love.graphics.draw(bot_b,1,202)
		end
	end
	if bans>=(300*rp*zoes) and rp>=15 then
		love.graphics.setColor(255,255,255)
		if mode == "stalker" then
			love.graphics.draw(b_vss, 1, 263)
		else
			love.graphics.draw(zoe,1,263)
		end
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
	if bans>=50*rp then
		love.graphics.setColor(255,255,255)
		if mode == "stalker" then
			love.graphics.draw(b_shelupon, 1, 538)
		else
			love.graphics.draw(forcememe,1,538)
		end
	end
	if bans>=150000 and peqmode == false then
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(callpeq, 1, 325)
	end
end