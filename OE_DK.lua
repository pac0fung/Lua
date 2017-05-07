-- Author: Daisy Gray
-- Date: 2015-06-09
-- Issue: 

--[[

Make either OT or CB question mandatory

--]]

q1 = "Q1_OT" --[[Change S1 to your open text Q code--]]
q2 = "Q1_CB" --[[Change S1 to your checkbox Q code--]]
thisLogicQuestion = "OT_mandatory" --[[Change OT_mandatory to this logic's Q code--]]
response.clearAnswer(thisLogicQuestion)

q1HasAnswer = false
q2HasAnswer = false
onlyOneHasAnAnswer = false

if response.getAnswerText(q1) ~= nil
	then q1HasAnswer = true
end

if response.getAnswerSingle(q2) == "Yes"
	then q2HasAnswer = true
end

if q1HasAnswer ~= q2HasAnswer
	then onlyOneHasAnAnswer = true
end

if onlyOneHasAnAnswer == true
	then response.setAnswerSingle(thisLogicQuestion, "Yes")
end