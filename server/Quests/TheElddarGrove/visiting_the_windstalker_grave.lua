--[[
    Script Name    : Quests/TheElddarGrove/visiting_the_windstalker_grave.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.04 02:05:58
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: 
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find Holly Windstalker's grave in Antonica.", 4, "I should go to Holly Windstalker's grave to see if there is any truth to the rumor.", 2339,-1855.35 -2.78 -624.56)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I found Holly Windstalker's grave.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Holly Windstalker's grave.")

	UpdateQuestDescription(Quest, "I found Holly Windstalker's grave on the hill overlooking Windstalker Village.  I didn't see any sign of the grave being disturbed though, I did remove a dirty mug near the site.  The rangers may just be overly cautious as of late. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
