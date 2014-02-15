class 'SpawnOnJoin'

spawns = {
	Vector3(-6479.676270, 208.981918, -3695.019043),
	Vector3(-6503.295410, 208.981918, -3600.983398),
	Vector3(-6473.677246, 208.981903, -3516.788574),
	Vector3(-6474.334961, 208.981522, -3420.584229),
	Vector3(-6551.726563, 208.981903, -3338.744629),
	Vector3(-6667.822266, 208.973877, -3359.480469)

}

function StartGame()
	for player in Server:GetPlayers() do
		local randomIndex = math.random(1, #spawns)
		local spawnPosition = spawns[randomIndex]
		player:SetPosition(spawnPosition)
	end
end
 
Events:Subscribe("ModuleLoad", StartGame)