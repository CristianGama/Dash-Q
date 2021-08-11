local jugador = game:GetService("Players").LocalPlayer
local mouse = jugador:GetMouse()
local rootPart = script.Parent:WaitForChild("HumanoidRootPart")
local UserInput = game:GetService("UserInputService")
local aux = true

UserInput.InputBegan:Connect(function(tecla)
	
	if tecla.KeyCode == Enum.KeyCode.Q and aux == true then
		
		aux = false
		local BodyVelocity = Instance.new("BodyVelocity",rootPart)
		
		BodyVelocity.MaxForce = Vector3.new("inf","inf","inf")
		BodyVelocity.Velocity = mouse.Hit.lookVector * 75
		game.Debris:AddItem(BodyVelocity,0.2)
		
		wait(2)
		
		aux = true
		
	end
	
end)
