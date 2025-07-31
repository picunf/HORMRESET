local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Ждём загрузки персонажа
LocalPlayer.CharacterAdded:Wait()

while true do
    if LocalPlayer:FindFirstChild("Data") then
        local data = LocalPlayer.Data
        local eventCurrency = data:FindFirstChild("EventCurrency") -- мячики ивента (может быть Candy/SnowToken)
        
        if eventCurrency and eventCurrency.Value >= 40 then
            -- Альтернативный ресет через Humanoid.Health
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                LocalPlayer.Character.Humanoid.Health = 0
                print("Сумка полная! Персонаж ресетнут.")
            end
            wait(4)
        end
    end
    wait(0.5)
end
