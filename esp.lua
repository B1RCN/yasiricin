-- ReplicatedFirst içindeki LocalScript
local Players = game:GetService("Players")

-- Oyuncu ve karakter referansları
local player = Players.LocalPlayer

-- Karakter yüklenmesini bekle
player.CharacterAdded:Connect(function(character)
	-- Highlight varsa önce sil
	if character:FindFirstChild("Highlight") then
		character.Highlight:Destroy()
	end

	-- Yeni Highlight oluştur
	local highlight = Instance.new("Highlight")
	highlight.Name = "Highlight"
	highlight.FillColor = Color3.fromRGB(255, 255, 0) -- sarı
	highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
	highlight.Parent = character
end)

-- Eğer karakter zaten yüklüyse hemen uygula
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
