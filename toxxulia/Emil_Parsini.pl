sub EVENT_SAY {
  if($text=~/hail/i) {
    quest::say("Good to meet you, $name. Please look around. I have much to offer. I am a master woodworker. It runs in the Parsini family.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 18833 => 1)) {
    quest::say("I have been waiting for someone to come and retrieve this staff. Here you are. You will have to combine it with treant resin and an Odus pearl. You can find Odus pearls in the water in the harbor. As for the resin, I can make it if you can find me some treant shards. Maybe another woodworker or cobbler in Qeynos has some.");
    quest::summonitem(17917); #Peacekeeper Staff container
    quest::faction(211, 10); # +Merchants of Erudin
    quest::faction(145, 10); # +High Council of Erudin
    quest::faction(147, 10); # +High Guard of Erudin
    quest::exp(2432);
  }
  elsif(plugin::check_handin(\%itemcount, 13824 => 1)) { #Wooden Shards
    quest::say("Wonderful work!! These shards will work nicely. Here you are then. I found a few flasks of treant resin in the back. You can have one. Thanks again. It kept me from having to go out and hunt treants.");
    quest::summonitem(13822); #Treant Resin
    quest::faction(211, 10); # +Merchants of Erudin
    quest::faction(145, 10); # +High Council of Erudin
    quest::faction(147, 10); # +High Guard of Erudin
    quest::exp(2432);
  }
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:toxxulia  ID:414035 -- Emil_Parsini