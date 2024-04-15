local gameID = game.PlaceId
local dragon_soul_ids = {8246874626, 14230662527, 14580433879, 14580431571}
local gpo_ids = {}
local activeGame = ""

if table.find(dragon_soul_ids, gameID) then
   activeGame = "Dragon Soul"
elseif table.find(gpo_ids, gameID) then
    activeGame = "Grand Piece Online"
end

if activeGame ~= "" then
    print("Game detected: " .. activeGame)
    if activeGame == "Dragon Soul" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LxlToad/ZestHub/main/ds.lua"))()
    elseif activeGame == "Grand Piece Online" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LxlToad/ZestHub/main/gpo.lua"))()
    end
else
    print("\nGame Not Supported!\ncheck in on the discord to see a list of supported games")
end
