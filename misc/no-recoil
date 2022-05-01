for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
	if v:IsA('Camera') then
		v:Destroy()
	end
end
local LocalPlayer = game:GetService('Players').LocalPlayer;
local newcam = Instance.new('Camera',game.Workspace)
game.Workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid;
newcam.Name = 'Camera'
newcam.CameraType = 'Custom'
newcam.CameraSubject = game:GetService('Workspace').Players:FindFirstChild(player.Name):FindFirstChild('Humanoid')
newcam.HeadLocked = true
newcam.HeadScale = 1
