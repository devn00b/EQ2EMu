--[[
    Script Name    : SpawnScripts/QueensColony/PaulaMarx133770926.lua
        Script Author      : Zcoretri
        Script Date        : 2015.07.30
        Script Purpose     : Paula Marx dialog
	Modified Date      : 2017.04.13, 2020.04.03, 2020.09.03 
	Modified by        : EmemJr,premierio015, Rylec
	Notes		   : Added dialog and code for Turning in collections, Added animation and VoiceOvers.
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 3.64, -6.45, 199.01, 2, 4)
	MovementLoopAddLocation(NPC, 6.62, -6.81, 202.53, 2, 0)
	MovementLoopAddLocation(NPC, 10.55, -6.89, 204.86, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.74, -6.86, 204.71, 2, 0)
	MovementLoopAddLocation(NPC, 22.69, -6.8, 201.84, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.09, -6.86, 200.92, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 11.89, -6.9, 199.77, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 5.76, -6.83, 199.71, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.49, -6.86, 195.18, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 27.11, -6.86, 191.62, 2, 0)
	MovementLoopAddLocation(NPC, 32.16, -6.28, 190.58, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 29.39, -6.84, 191.92, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 13.91, -6.9, 195.83, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 5.89, -6.88, 198.05, 2, 9, "InitialPause")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
     

    --if (player has a collection then add a conversation option to hand in a collection
    --end
    math.randomseed(os.time())
    local choice = math.random (1, 3)
    str = tostring(choice)

            if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "hello", 0, 0, Spawn)
                    AddConversationOption(conversation, "What Collections?","WhatCollections")
            elseif choice == 2 then
                    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "hello", 0, 0, Spawn)
                    AddConversationOption(conversation, "What Collections?","WhatCollections")
            else
                    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "hello", 0, 0, Spawn)
                    AddConversationOption(conversation, "What Collections?","WhatCollections")
            end

            if HasCollectionsToHandIn(Spawn) then
                    AddConversationOption(conversation, "I have a collection for you", "TurnIn")
            end
    AddConversationOption(conversation, "Goodbye!")
    StartConversation(conversation, NPC, Spawn, "Hello, traveler!  How I envy you. What I wouldn't give to journey the world as I did in my youth.  Alas, my days of adventuring are long past, but at least I can occupy myself with my various trinkets and collections that I picked up in my travels.")
end

function InitialPause(NPC)
    local GatherSpawn = GetSpawn(NPC, 2530009)	-- Get Paula Marx

    math.randomseed(os.time())
    local pause = math.random (1, 4)

            if pause == 1 then
                    AddTimer(NPC, 100, "stop_gathering")  
            else
                    AddTimer(NPC, 1000, "Gather")
            end 
end

function Gather(NPC)
    local GatherSpawn = GetSpawn(NPC, 2530009)	-- Get Paula Marx
    SpawnSet(NPC, "visual_state", "2809")	-- Start gathering
    AddTimer(NPC, 5000, "Collect")	        -- for 5 seconds, then stop
end

function Collect(NPC)
    local GatherSpawn = GetSpawn(NPC, 2530009)	-- Get Paula Marx
    SpawnSet(NPC, "visual_state", "2810")	-- Start gathering
    AddTimer(NPC, 2000, "stop_gathering")	-- for 5 seconds, then stop
end

function stop_gathering(NPC)
    local GatherSpawn = GetSpawn(NPC, 2530009)	-- get Paula Marx
    SpawnSet(NPC, "visual_state", "0") 	        -- Stop her from gathering
end

function WhatCollections(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "Why, any sort of collection. There's so much out there to find! Just open your eyes and peek under the rocks.  If you find anything interesting, let me have a look. Collecting is the only way I seem to relive my youth!")
end

function TurnIn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	HandInCollections(Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, bye!")
	StartConversation(conversation, NPC, Spawn, "This is a magnificent find!  Here, take this for all your hard work.")
end