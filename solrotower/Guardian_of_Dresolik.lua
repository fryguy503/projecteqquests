function event_combat(e)
if (e.joined == true) then
eq.set_timer("OOBcheck", 6 * 1000);
else
eq.stop_timer("OOBcheck");
end
end


function event_timer(e)
if(e.timer=="OOBcheck") then
eq.stop_timer("OOBcheck");
	if (e.self:GetX() < 546 or e.self:GetX() > 994) then
		e.self:Say("Dresolik must not be disturbed!");
		e.self:CastSpell(2830, e.self:GetID())
		e.self:SetHP(e.self:GetMaxHP());
		e.self:GotoBind();
		e.self:WipeHateList();
	else
		eq.set_timer("OOBcheck", 6 * 1000);
	end
end
end


function event_death_complete(e)
eq.signal(212062,1); -- NPC: Dresolik_Trigger
end
