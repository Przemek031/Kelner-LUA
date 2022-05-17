--[[
  @author: Przemek031
  All rights reserved.
]]--

addEvent("givePlayerMoney", true)
addEventHandler("givePlayerMoney", root, function(pieniadze)
    if not tonumber(pieniadze) then return end
    givePlayerMoney(source, pieniadze)
end)

