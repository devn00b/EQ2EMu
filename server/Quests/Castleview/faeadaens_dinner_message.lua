--[[
    Script Name    : Quests/Castleview/faeadaens_dinner_message.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.24
    Script Purpose : 

    Zone       : Castleview
    Quest Giver: Entertainer Faeadaen
    Preceded by: None
    Followed by: None
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "I must speak with Innkeeper Valean.", 1, "I need to deliver Faeadaen's message to Innkeeper Valean.", 11, 2360024)
    AddQuestStepCompleteAction(Quest, 1, "ValeanTold")
    
end


function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function ValeanTold(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I gave Innkeeper Valean the message.")
    UpdateQuestTaskGroupDescription(Quest, 1, "I gave Innkeeper Valean the message that Faeadaen won't be able to join him for dinner tonight.")

    AddQuestStepChat(Quest, 2, "I need to return to Faeadaen.", 1, "I should tell Faeadaen I delievered the message.", 0, 2360022)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
    
    function QuestComplete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I returned to Faeadaen.")
    UpdateQuestTaskGroupDescription(Quest, 2, "I told Faeadaen I delivered her message.")

    UpdateQuestDescription(Quest, "I told Innkeeper Valean that Faeadaen could not make the dinner appointment. He understood that she had to work late.")
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	QuestComplete(Quest, QuestGiver, Player)
    end
end

