local Players = game:GetService("Players")
local player = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Function to simulate jumping continuously
local function holdJump()
	while true do
    		local character = player.Character
            		if character and character:FindFirstChild("Humanoid") then
                    			local humanoid = character.Humanoid
                                			if humanoid:GetState() == Enum.HumanoidStateType.Running or
                                            			   humanoid:GetState() == Enum.HumanoidStateType.Freefall then
                                                           				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                                                        			end
                                                                                    		end
                                                                                            		wait(0.1) -- Adjust frequency as needed
                                                                                                    	end
                                                                                                        end

                                                                                                        -- Start auto-jumping when character is loaded
                                                                                                        if player.Character then
                                                                                                        	task.spawn(holdJump)
                                                                                                            else
                                                                                                            	player.CharacterAdded:Connect(function()
                                                                                                                		task.spawn(holdJump)
                                                                                                                        	end)
                                                                                                                            end
                                                                                                                            