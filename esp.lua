local Players = game:GetService("Players")
local player = Players.LocalPlayer

player.CharacterAdded:Connect(function(character)
	if character:FindFirstChild("Highlight") then
		character.Highlight:Destroy()
	end
	local highlight = Instance.new("Highlight")
	highlight.Name = "Highlight"
	highlight.FillColor = Color3.fromRGB(255, 255, 0) -- sarı
	highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
	highlight.Parent = character
end)
if player.Character then
	local character = player.Character
	if not character:FindFirstChild("Highlight") then
		local highlight = Instance.new("Highlight")
		highlight.Name = "Highlight"
		highlight.FillColor = Color3.fromRGB(255, 255, 0)
		highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
		highlight.Parent = character
	end
end
