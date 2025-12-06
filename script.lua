--[[---------------------------------------------------------------------------------------------------------------------------
  __   __     ______     __  __     __     ______     __  __     ______    
 /\ "-.\ \   /\  __ \   /\_\_\_\   /\ \   /\  __ \   /\ \/\ \   /\  ___\   
 \ \ \-.  \  \ \ \/\ \  \/_/\_\/_  \ \ \  \ \ \/\ \  \ \ \_\ \  \ \___  \  
  \ \_\\"\_\  \ \_____\   /\_\/\_\  \ \_\  \ \_____\  \ \_____\  \/\_____\ 
   \/_/ \/_/   \/_____/   \/_/\/_/   \/_/   \/_____/   \/_____/   \/_____/
   
   Made by Team Noxious and Plethora, revived by Riddance Club -- Dandy's World [Version Revival]   

---------------------------------------------------------------------------------------------------------------------------]]--

if getgenv().dswdnoxiousloaded == true then getgenv().dswdnoxiousloaded = false;return end getgenv().dswdnoxiousloaded = true

-------------------------------------------------------------------------------------------------------------------------------

local noxious = {}

-------------------------------------------------------------------------------------------------------------------------------

noxious["dandy's world lobby"] = 16116270224
noxious["dandy's world run"] = 16552821455
noxious["dandy's world roleplay server"] = 18984416148

noxious["user input service"] = game:GetService("UserInputService")
noxious["run service"] = game:GetService("RunService")
noxious["tween service"] = game:GetService("TweenService")
noxious["http service"] = game:GetService("HttpService")
noxious["marketplace service"] = game:GetService("MarketplaceService")
noxious["core gui"] = game:GetService("CoreGui")
noxious["players"] = game:GetService("Players")
noxious["replicated storage"] = game:GetService("ReplicatedStorage")

-- usually these were all over the code randomly but i dumped them into this file so i can easily update and find them
noxious["data"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/riddance-club/noxious-hub-revival/refs/heads/main/data/data.lua"))()

noxious["version"] = noxious["data"].version
noxious["changelogs"] = noxious["data"].changelogs
noxious["information"] = noxious["data"].information
noxious["credits"] = noxious["data"].credits
noxious["command lists"] = noxious["data"].commands
noxious["dandy's world workspace.info"] = noxious["data"].workspaceinfo

noxious["toons"] = noxious["data"].toons
noxious["unoptimized toons"] = noxious["data"].unoptimized
noxious["animations"] = noxious["data"].animations

noxious["click sound"] = Instance.new"Sound"
noxious["click sound"].SoundId = "rbxassetid://421058925"
noxious["click sound"].Parent = workspace
noxious["click sound"].Volume = 0.4

noxious["default white color"] = Color3.new(1, 1, 1)
noxious["default image color"] = Color3.new(1, 1, 1)
noxious["default gray color"] = Color3.new(0.5, 0.5, 0.5)
noxious["default black color"] = Color3.new(0, 0, 0)

noxious["player gui"] = noxious["core gui"]
noxious["local player"] = noxious["players"].LocalPlayer
noxious["current camera"] = workspace.CurrentCamera


-------------------------------------------------------------------------------------------------------------------------------

function generateRandomString(length)
	local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	local result = ""
	for i = 1, length do
		local randomIndex = math.random(1, #characters)
		result = result .. string.sub(characters, randomIndex, randomIndex)
	end
	return result
end

function generateRandomString2(length)
	local characters = "AÀÁÂÃÄÅĀĂĄǍǺȀȂȦȺᴀaàáâãäåāăąǎǻȁȃȧⱥBḂḄḆƀƁƂƃɓʙbḃḅḇƀƂƃɓCÇĆĈĊČƇƈȻȼʗcçćĉċčƈȼʗDÐĎĐḊḌḎḐḒƉƊƋƌȡʙdðďđḋḍḏḑḓƌȡEÈÉÊËĒĔĖĘĚȄȆȨɆɛeèéêëēĕėęěȅȇȩɇɛFḞƑƒfḟƒGĜĞĠĢǦǴƓƔʛgĝğġģǧǵɠɣHĤĦḢḤḦḨḪȞʜhĥħḣḥḧḩḫȟIÌÍÎÏĨĪĬĮİǏȈȊɨɩiìíîïĩīĭįıǐȉȋɨɩJĴɈɉʝjĵɉʝKĶḰḲḴƘƙʞkķḱḳḵƙʞLĹĻĽĿŁḶḸḺḼƚƛʟlĺļľŀłḷḹḻḽƚƛMḾṀṂƜɱmḿṁṃɯɱNÑŃŅŇŊṄṆṈṊƝƞɲɳnñńņňŋṅṇṉṋƞɲɳOÒÓÔÕÖØŌŎŐǑȌȎȪȬȮȰƆɵoòóôõöøōŏőǒȍȏȫȭȯȱɔɵPṔṖƤƥʠpṕṗƥQɊɋʠqɋʠRŔŖŘȐȒṘṚṜṞʀʁrŕŗřȑȓṙṛṝṟʀʁSŚŜŞŠȘṠṢṤṦṨʂsśŝşšșṡṣṥṧṩʂTŢŤȚṪṬṮṰŦƬƮʈtţťțṫṭṯṱŧƭƮʈUÙÚÛÜŨŪŬŮŰŲǓȔȖʉʊuùúûüũūŭůűųǔȕȗʉʊVṼṾƲʋvṽṿʋWẀẂẄŴẆẈʍwẁẃẅŵẇẉʍXẊẌχxẋẍχYÝŶŸȲɎʏyýŷÿȳɏʏZŹŻŽƵƶʐʑzźżžƶʐʑ~!@#$%^&*()_+{}:'|<>?`-=[];\,./"
	local result = ""
	for i = 1, length do
		local randomIndex = math.random(1, #characters)
		result = result .. string.sub(characters, randomIndex, randomIndex)
	end
	return result
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["noxious screen gui"] = Instance.new("ScreenGui")
noxious["noxious screen gui"].Name = generateRandomString2(100)
noxious["noxious screen gui"].ResetOnSpawn = false

noxious["noxious screen gui"].Parent = noxious["core gui"]

local screengui = noxious["noxious screen gui"].Name

local mainframe = Instance.new("Frame")
local mainframe2 = Instance.new("Frame")

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

-------------------------------------------------------------------------------------------------------------------------------

noxious["qwelver"] = { "Qwelver" }

-------------------------------------------------------------------------------------------------------------------------------

noxious["active notifications"] = {}

noxious["notification sound"] = "rbxassetid://8503529139"
noxious["error sound"] = "rbxassetid://489103549"
noxious["warning sound"] = "rbxassetid://5914602124"

local function notify(message, duration, variant)
	local borderColor = noxious["default white color"]
	local textColor = noxious["default white color"]
	local timerframecolor = noxious["default white color"]
	local playbackspeed = 1
	local topframetext = "Notify / Noxious Hub: dandy's world"

	if variant == "qwelverishere" then
		topframetext = "Special / Noxious Hub: dandy's world"
		borderColor = Color3.new(1, 0.4, 1)
		textColor = Color3.new(1, 0.4, 1)
		timerframecolor = Color3.new(1, 0.4, 1)
		playbackspeed = 0.7
	end

	local notifsound = Instance.new("Sound")
	notifsound.SoundId = noxious["notification sound"]
	notifsound.PlaybackSpeed = playbackspeed
	notifsound.Parent = noxious["toggle interface visibility button"]
	notifsound.Volume = 2

	if variant == "error" then
		borderColor = Color3.new(1, 0.3, 0.3)
		textColor = Color3.new(1, 0.3, 0.3)
		topframetext = "Error / Noxious Hub: dandy's world"
		timerframecolor = Color3.new(1, 0.3, 0.3)
		notifsound.SoundId = noxious["error sound"]
		notifsound.Volume = 1.6
		notifsound.TimePosition = 0.05
		notifsound.PlaybackSpeed = 0.8
	end

	if variant == "warning" then
		borderColor = Color3.new(1, 1, 0.4)
		topframetext = "Warning / Noxious Hub: dandy's world"
		textColor = Color3.new(1, 1, 0.4)
		timerframecolor = Color3.new(1, 1, 0.4)
		notifsound.SoundId = noxious["warning sound"]
		notifsound.Volume = 1
		notifsound.TimePosition = 0.2
		notifsound.PlaybackSpeed = 0.8
	end

	-- Scale down by 40%
	local scale = 0.85

	local notifframe = Instance.new("Frame")
	notifframe.Name = "block"
	notifframe.Size = UDim2.new(0, 390 * scale, 0, 90 * scale)
	notifframe.Position = UDim2.new(1, 500 * scale, 1, -10 * scale)
	notifframe.AnchorPoint = Vector2.new(1, 1)
	notifframe.BackgroundColor3 = noxious["default black color"]
	notifframe.BackgroundTransparency = 0.2
	notifframe.BorderColor3 = borderColor
	notifframe.BorderSizePixel = 1
	notifframe.Parent = noxious["noxious screen gui"]

	local notiftopframe = Instance.new("Frame")
	notiftopframe.Name = "block"
	notiftopframe.Size = UDim2.new(1, 0, 0, 24 * scale)
	notiftopframe.Position = UDim2.new(0, 0, 0, 0)
	notiftopframe.BackgroundColor3 = noxious["default black color"]
	notiftopframe.BackgroundTransparency = 0.2
	notiftopframe.BorderColor3 = borderColor
	notiftopframe.BorderSizePixel = 1
	notiftopframe.Parent = notifframe

	local notifytopframetxt = Instance.new("TextLabel")
	notifytopframetxt.Name = "block"
	notifytopframetxt.Size = UDim2.new(1, -10 * scale, 1, 0)
	notifytopframetxt.Position = UDim2.new(0, 5 * scale, 0, -0.6)
	notifytopframetxt.BackgroundTransparency = 1
	notifytopframetxt.TextColor3 = textColor
	notifytopframetxt.Text = topframetext
	notifytopframetxt.Font = Enum.Font.Nunito
	notifytopframetxt.TextSize = 21.6 * scale
	notifytopframetxt.TextScaled = false
	notifytopframetxt.TextXAlignment = Enum.TextXAlignment.Left
	notifytopframetxt.Parent = notiftopframe

	local closenotif = Instance.new("TextButton")
	closenotif.Name = "block"
	closenotif.Size = UDim2.new(0, 23 * scale, 0, 23 * scale)
	closenotif.Position = UDim2.new(1, -23 * scale, 0, 0)
	closenotif.BackgroundColor3 = noxious["default black color"]
	closenotif.BorderSizePixel = 0
	closenotif.BorderColor3 = borderColor
	closenotif.BackgroundTransparency = 0
	closenotif.Text = "X"
	closenotif.Font = Enum.Font.Nunito
	closenotif.TextColor3 = textColor
	closenotif.TextSize = 20 * scale
	closenotif.Parent = notiftopframe
	closenotif.MouseButton1Click:Connect(function()
		noxious["click sound"]:Play()
	end)

	local closenotiftxtp = Instance.new"UIPadding"
	closenotiftxtp.PaddingTop = UDim.new(0, 1)
	closenotiftxtp.PaddingLeft = UDim.new(0, 1)
	closenotiftxtp.Parent = closenotif

	local notiftimerframe = Instance.new("Frame")
	notiftimerframe.Name = "block"
	notiftimerframe.Size = UDim2.new(0, 390 * scale, 0, 6 * scale)
	notiftimerframe.Position = UDim2.new(0, 0, 0, 25 * scale)
	notiftimerframe.BackgroundColor3 = noxious["default black color"]
	notiftimerframe.BorderColor3 = borderColor
	notiftimerframe.BorderSizePixel = 1
	notiftimerframe.BackgroundTransparency = 0
	notiftimerframe.Parent = notifframe

	local notiftimer = Instance.new("Frame")
	notiftimer.Name = "block"
	notiftimer.Size = UDim2.new(1, 0, 1, 0)
	notiftimer.Position = UDim2.new(0, 0, 0, 0)
	notiftimer.BackgroundColor3 = timerframecolor
	notiftimer.BorderSizePixel = 0
	notiftimer.BackgroundTransparency = 0.5
	notiftimer.Parent = notiftimerframe

	local notiftxt = Instance.new("TextLabel")
	notiftxt.Name = "block"
	notiftxt.Size = UDim2.new(0.97, -9 * scale, 0, 64 * scale)
	notiftxt.Position = UDim2.new(0, 10 * scale, 0, 29 * scale)
	notiftxt.BackgroundTransparency = 1
	notiftxt.TextColor3 = textColor
	notiftxt.Text = message
	notiftxt.Font = Enum.Font.Nunito
	notiftxt.TextSize = 21.6 * scale
	notiftxt.TextScaled = false
	notiftxt.TextWrapped = true
	notiftxt.TextXAlignment = Enum.TextXAlignment.Left
	notiftxt.Parent = notifframe

	TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	notifsound:Play()

	if variant == "unableishere" or variant == "qwelverishere" or variant == "plethoraishere" or variant == "tmishere" or variant == "aceishere" then
		local blueSound = Instance.new("Sound")
		blueSound.SoundId = "rbxassetid://836142578"
		blueSound.Volume = 0.9
		blueSound.Parent = noxious["toggle interface visibility button"]
		blueSound.PlaybackSpeed = 0.9
		blueSound.TimePosition = 0.0613
		blueSound:Play()
		blueSound.Ended:Connect(function()
			blueSound:Destroy()
		end)
	end

	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	notifsound:Play()

	table.insert(noxious["active notifications"], 1, notifframe)

	for i, frame in ipairs(noxious["active notifications"]) do
		local newTargetPosition = UDim2.new(1, -10 * scale, 1, -10 * scale - ((i - 1) * 100 * scale))
		local adjustTween = noxious["tween service"]:Create(
			frame,
			TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{Position = newTargetPosition}
		)
		adjustTween:Play()
	end

	local slideInTween = noxious["tween service"]:Create(notifframe, tweenInfo, {Position = UDim2.new(1, -10 * scale, 1, -10 * scale)})
	slideInTween:Play()

	local barTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local barTween = noxious["tween service"]:Create(notiftimer, barTweenInfo, {Size = UDim2.new(0, 0, 1, 0)})
	barTween:Play()

	local function closeNotification()
		if not notifframe.Parent then return end -- Ensure the frame is still present

		barTween:Cancel()

		local slideOutTween = noxious["tween service"]:Create(
			notifframe,
			tweenInfo,
			{Position = UDim2.new(1, 450 * scale, notifframe.Position.Y.Scale, notifframe.Position.Y.Offset)}
		)
		slideOutTween:Play()

		slideOutTween.Completed:Connect(function()
			if notifframe.Parent then
				notifframe:Destroy()
			end
			for i, frame in ipairs(noxious["active notifications"]) do
				if frame == notifframe then
					table.remove(noxious["active notifications"], i)
					break
				end
			end
			for i, frame in ipairs(noxious["active notifications"]) do
				local newTargetPosition = UDim2.new(1, -10 * scale, 1, -10 * scale - ((i - 1) * 100 * scale))
				local adjustTween = noxious["tween service"]:Create(
					frame,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Position = newTargetPosition}
				)
				adjustTween:Play()
			end
		end)
	end

	closenotif.MouseButton1Click:Connect(closeNotification)

	spawn(function()
		wait(duration)
		if notifframe.Parent then
			closeNotification()
		end
	end)

	if variant == "unableishere" or variant == "qwelverishere" or variant == "plethoraishere" or variant == "tmishere" or variant == "aceishere" or variant == "error" or variant == "warning" then
		local colorTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

		local borderColorTween = noxious["tween service"]:Create(notiftopframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween2 = noxious["tween service"]:Create(notifframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween3 = noxious["tween service"]:Create(closenotif, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween4 = noxious["tween service"]:Create(notiftimerframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local textColorTween = noxious["tween service"]:Create(notiftxt, colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)})
		local textColorTween2 = noxious["tween service"]:Create(notifytopframetxt, colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)})
		local textColorTween3 = noxious["tween service"]:Create(closenotif, colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)})
		local timerColorTween = noxious["tween service"]:Create(notiftimer, colorTweenInfo, {BackgroundColor3 = Color3.new(1, 1, 1)})

		borderColorTween:Play()
		borderColorTween2:Play()
		borderColorTween3:Play()
		borderColorTween4:Play()
		textColorTween:Play()
		textColorTween2:Play()
		textColorTween3:Play()
		timerColorTween:Play()
	end

	closenotif.ZIndex = 40
	notiftimer.ZIndex = 39
	notifytopframetxt.ZIndex = 39
	notiftxt.ZIndex = 38
	notiftimerframe.ZIndex = 38
	notiftopframe.ZIndex = 38
	notifframe.ZIndex = 37
end

local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
function toClipboard(txt)
	if everyClipboard then
		everyClipboard(tostring(txt))
		notify("Copied to clipboard.", 5)
	else
		notify("Unable to access clipboard.", 5, "error")
	end
end

function closeAllNotifications()
	-- Iterate through all active notifications
	for _, frame in ipairs(noxious["active notifications"]) do
		if frame and frame.Parent then
			local slideOutTween = noxious["tween service"]:Create(
				frame,
				TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
				{Position = UDim2.new(1, 350, frame.Position.Y.Scale, frame.Position.Y.Offset)}
			)
			slideOutTween:Play()

			slideOutTween.Completed:Connect(function()
				if frame.Parent then
					frame:Destroy()
				end
			end)
		end
	end

	-- Clear the active notifications table
	noxious["active notifications"] = {}
end

spawn(function()
	notify("hello welcome to the unofficial revival of noxious hub and open sourced thing", 7.5)
	task.wait(1.5)
	notify("this is very still based on 7.7.1 and probably broken as nothing was really changed besides what is shown in changelogs", 7.5)
	task.wait(1.5)
	notify("hopefully you still like it and can report issues or give suggestions to the bookclub discord", 7.5)
	task.wait(1.5)
	notify("if you are also someone who can code well please consider submitting some of your own wanted fixes/features to this", 7.5)
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["toggle interface visibility button"] = Instance.new("ImageButton")
noxious["toggle interface visibility button"].Name = ("NoxiousButton")
noxious["toggle interface visibility button"].Size = UDim2.new(0, 48, 0, 48)
noxious["toggle interface visibility button"].BorderSizePixel = 0
noxious["toggle interface visibility button"].BorderColor3 = noxious["default white color"]
noxious["toggle interface visibility button"].ImageColor3 = noxious["default white color"]
noxious["toggle interface visibility button"].Visible = false
noxious["toggle interface visibility button"].Parent = noxious["noxious screen gui"]
noxious["toggle interface visibility button"].Image = "rbxassetid://130584446591314"
noxious["toggle interface visibility button"].ImageColor3 = noxious["default image color"]

function movebutton()
	local screenWidth = noxious["current camera"].ViewportSize.X

	local buttonWidth = 48

	local centerX = (screenWidth - buttonWidth) / 2
	local topMargin = 20
	local centerY = topMargin

	noxious["toggle interface visibility button"].Position = UDim2.new(0, centerX, 0, centerY - 150)

	local offsetY = 150
	local targetPosition = UDim2.new(0, centerX, 0, centerY - offsetY)

	local tweenInfoUp = TweenInfo.new(0, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)

	local tweenUp = noxious["tween service"]:Create(noxious["toggle interface visibility button"], tweenInfoUp, {Position = targetPosition})

	local function moveButtonBack()
		local tweenInfoDown = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

		local tweenDown = noxious["tween service"]:Create(noxious["toggle interface visibility button"], tweenInfoDown, {Position = UDim2.new(0, centerX, 0, centerY)})

		tweenDown:Play()
	end

	noxious["toggle interface visibility button"].Visible = true
	tweenUp:Play()

	tweenUp.Completed:Wait()
	moveButtonBack()
end

noxious["tivb ui rounded corner"] = Instance.new"UICorner"
noxious["tivb ui rounded corner"].CornerRadius = UDim.new(0.3, 0)
noxious["tivb ui rounded corner"].Parent = noxious["toggle interface visibility button"]

noxious["tivb border"] = Instance.new"Frame"
noxious["tivb border"].Size = UDim2.new(0, 50, 0, 50)
noxious["tivb border"].Position = UDim2.new(-2E-2, 0, -2E-2, 0)
noxious["tivb border"].BackgroundColor3 = noxious["default white color"]
noxious["tivb border"].Parent = noxious["toggle interface visibility button"]

noxious["tivb border ui rounded corner"] = Instance.new"UICorner"
noxious["tivb border ui rounded corner"].CornerRadius = UDim.new(0.3, 0)
noxious["tivb border ui rounded corner"].Parent = noxious["tivb border"]

function dragbutton()
	local frame = noxious["toggle interface visibility button"]
	local dragToggle 	
	local dragSpeed = 0.25
	local dragStart 	
	local startPos 

	local function updatebuttoninput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		noxious["tween service"]:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updatebuttoninput(input)
			end
		end
	end)
end

function addgradient()
	local gradient = Instance.new"UIGradient"	
	gradient.Color =
		ColorSequence.new {
			ColorSequenceKeypoint.new(0, noxious["default white color"]),
			ColorSequenceKeypoint.new(0.5, noxious["default black color"]),
			ColorSequenceKeypoint.new(1, noxious["default white color"])
		}
	gradient.Parent = noxious["tivb border"]

	local rotationSpeed = 1
	task.spawn(
		function()
			while true do
				gradient.Rotation = (gradient.Rotation + rotationSpeed) % 360
				task.wait(0.03)
			end
		end
	)
end

dragbutton()
addgradient()

-------------------------------------------------------------------------------------------------------------------------------

-- Create the main frame
mainframe.Name = "mainframe"
mainframe.Size = UDim2.new(0, 594, 0, 330)  -- Adjusted size
mainframe.BackgroundColor3 = noxious["default black color"]
mainframe.BorderSizePixel = 1
mainframe.BorderColor3 = noxious["default white color"]
mainframe.BackgroundTransparency = 0.2
mainframe.Parent = noxious["noxious screen gui"]
mainframe.Visible = false

function centermainframe()
	local screenWidth = noxious["current camera"].ViewportSize.X
	local screenHeight = noxious["current camera"].ViewportSize.Y

	-- Calculate the position to center the frame on the screen
	local frameWidth = 594
	local frameHeight = 330
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 58

	-- Set the position to center it on the screen
	mainframe.Position = UDim2.new(0, centerX, 0, centerY)
end
centermainframe()

function dragmainframe()
	local frame = mainframe
	local dragToggle 	
	local dragSpeed = 0.25
	local dragStart 	
	local startPos 

	local function updatemainframeinput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		noxious["tween service"]:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updatemainframeinput(input)
			end
		end
	end)
end
dragmainframe()

-------------------------------------------------------------------------------------------------------------------------------

noxious["command bar max characters"] = 60 -- Set your desired character limit

noxious["command bar"] = Instance.new"TextBox"
noxious["command bar"].Size = UDim2.new(0, 297, 0, 52.8)
noxious["command bar"].Position = UDim2.new(0, 0, 0.7, 54)
noxious["command bar"].PlaceholderText = "Type command here..."
noxious["command bar"].PlaceholderColor3 = noxious["default gray color"]
noxious["command bar"].Text = ""
noxious["command bar"].Font = Enum.Font.Nunito
noxious["command bar"].BackgroundColor3 = noxious["default black color"]
noxious["command bar"].TextColor3 = noxious["default white color"]
noxious["command bar"].BorderColor3 = noxious["default white color"]
noxious["command bar"].BorderSizePixel = 1
noxious["command bar"].TextXAlignment = Enum.TextXAlignment.Left
noxious["command bar"].TextSize = 21.6
noxious["command bar"].TextWrapped = false
noxious["command bar"].TextScaled = false
noxious["command bar"].Parent = mainframe
noxious["command bar"].ClipsDescendants = true

noxious["command bar text padding"] = Instance.new"UIPadding"
noxious["command bar text padding"].PaddingLeft = UDim.new(0, 13)
noxious["command bar text padding"].PaddingRight = UDim.new(0, 57)
noxious["command bar text padding"].Parent = noxious["command bar"]

-- Initialize ptcleartextbox
local ptcleartextbox = true

-- Function to update the command bar's ClearTextOnFocus property
function updateCommandBarClearTextOnFocus()
	noxious["command bar"].ClearTextOnFocus = ptcleartextbox
end

-- Call the function initially to set the correct state
spawn(updateCommandBarClearTextOnFocus)

-- Add a listener to enforce character limit
noxious["command bar"]:GetPropertyChangedSignal"Text":Connect(function()
	if #noxious["command bar"].Text > noxious["command bar max characters"] then
		noxious["command bar"].Text = noxious["command bar"].Text:sub(1, noxious["command bar max characters"])
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame"] = Instance.new"Frame"
noxious["bottom frame"].Size = UDim2.new(0, 594, 0, 52.8)
noxious["bottom frame"].Position = UDim2.new(0, 0, 0.7, 54)
noxious["bottom frame"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame"].BorderColor3 = noxious["default white color"]
noxious["bottom frame"].BorderSizePixel = 1
noxious["bottom frame"].Parent = mainframe

-------------------------------------------------------------------------------------------------------------------------------

-- Create the execute button
noxious["execute button"] = Instance.new("TextButton")
noxious["execute button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["execute button"].BackgroundColor3 = noxious["default black color"]
noxious["execute button"].Position = UDim2.new(0.4256, 0, 0.1579, 0)
noxious["execute button"].BorderColor3 = noxious["default white color"]
noxious["execute button"].BorderSizePixel = 1
noxious["execute button"].TextColor3 = noxious["default white color"]
noxious["execute button"].Font = Enum.Font.Nunito
noxious["execute button"].TextSize = 20
noxious["execute button"].TextScaled = false
noxious["execute button"].Text = ">_"
noxious["execute button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["execute button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["execute button"].ZIndex = 2
noxious["execute button"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["hide"] = Instance.new"Frame"
noxious["hide"].Size = UDim2.new(0, 16.3, 0, 52.8)
noxious["hide"].BackgroundColor3 = noxious["default black color"]
noxious["hide"].Position = UDim2.new(0.473, 0, 0, 0)
noxious["hide"].BorderColor3 = noxious["default white color"]
noxious["hide"].BorderSizePixel = 0
noxious["hide"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame team icon"] = Instance.new"ImageLabel"
noxious["bottom frame team icon"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["bottom frame team icon"].Position = UDim2.new(0.926, 0, 0.1579, 0)
noxious["bottom frame team icon"].BackgroundTransparency = 0
noxious["bottom frame team icon"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame team icon"].BorderSizePixel = 1
noxious["bottom frame team icon"].BorderColor3 = noxious["default white color"]
noxious["bottom frame team icon"].Image = "rbxassetid://130584446591314"
noxious["bottom frame team icon"].ImageColor3 = noxious["default image color"]
noxious["bottom frame team icon"].Parent = noxious["bottom frame"]
noxious["bottom frame team icon"].ImageColor3 = noxious["default white color"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame title"] = Instance.new"TextLabel"
noxious["bottom frame title"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame title"].Position = UDim2.new(0, -37, -0.18, 1)
noxious["bottom frame title"].BackgroundTransparency = 1
noxious["bottom frame title"].TextColor3 = noxious["default white color"]
noxious["bottom frame title"].Font = Enum.Font.Nunito
noxious["bottom frame title"].TextSize = 21.6
noxious["bottom frame title"].TextScaled = false
noxious["bottom frame title"].Text = "Noxious hub: dandy's world"
noxious["bottom frame title"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame title"].Parent = noxious["bottom frame"]

noxious["bottom frame subtitle"] = Instance.new"TextLabel"
noxious["bottom frame subtitle"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame subtitle"].Position = UDim2.new(0, -37, 0.18, 1)
noxious["bottom frame subtitle"].BackgroundTransparency = 1
noxious["bottom frame subtitle"].TextColor3 = noxious["default gray color"]
noxious["bottom frame subtitle"].Font = Enum.Font.Nunito
noxious["bottom frame subtitle"].TextSize = 18
noxious["bottom frame subtitle"].TextScaled = false
noxious["bottom frame subtitle"].Text = "By Team Noxious & Plethora"
noxious["bottom frame subtitle"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame subtitle"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame"] = Instance.new"Frame"
noxious["top frame"].Name = "TopFrame"
noxious["top frame"].Size = UDim2.new(0.9999, 0, 0, 52.8)
noxious["top frame"].BackgroundColor3 = noxious["default black color"]
noxious["top frame"].BorderColor3 = noxious["default white color"]
noxious["top frame"].BorderSizePixel = 1
noxious["top frame"].Parent = mainframe

noxious["hide interface button"] = Instance.new"TextButton"
noxious["hide interface button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["hide interface button"].BackgroundColor3 = noxious["default black color"]
noxious["hide interface button"].Position = UDim2.new(0.9256, 0, 0.157, 0)
noxious["hide interface button"].BorderColor3 = noxious["default white color"]
noxious["hide interface button"].BorderSizePixel = 1
noxious["hide interface button"].TextColor3 = noxious["default white color"]
noxious["hide interface button"].Font = Enum.Font.Nunito
noxious["hide interface button"].TextSize = 20
noxious["hide interface button"].TextScaled = false
noxious["hide interface button"].Text = "X"
noxious["hide interface button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["hide interface button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["hide interface button"].Parent = noxious["top frame"]

noxious["reposition interface button"] = Instance.new"TextButton"
noxious["reposition interface button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["reposition interface button"].BackgroundColor3 = noxious["default black color"]
noxious["reposition interface button"].Position = UDim2.new(0.8489, 0, 0.158, 0)
noxious["reposition interface button"].BorderColor3 = noxious["default white color"]
noxious["reposition interface button"].BorderSizePixel = 1
noxious["reposition interface button"].TextColor3 = noxious["default white color"]
noxious["reposition interface button"].Font = Enum.Font.Nunito
noxious["reposition interface button"].TextSize = 20
noxious["reposition interface button"].TextScaled = false
noxious["reposition interface button"].Text = "R"
noxious["reposition interface button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["reposition interface button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["reposition interface button"].Parent = noxious["top frame"]

function repositionnoxious()
	centermainframe()
end

function closenoxious()
	mainframe.Visible = not mainframe.Visible
end

function noxiousgithub()
	toClipboard"https://github.com/riddance-club/noxious-hub-revival"
end

noxious["reposition interface button"].MouseButton1Click:Connect(
	function()
		repositionnoxious()
		noxious["click sound"]:Play()
	end
)

noxious["hide interface button"].MouseButton1Click:Connect(
	function()
		closenoxious()
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame text"] = Instance.new"TextLabel"
noxious["top frame text"].Name = "welcome"
noxious["top frame text"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame text"].Position = UDim2.new(0.08, 4, -0.18, -2)
noxious["top frame text"].BackgroundTransparency = 1
noxious["top frame text"].TextColor3 = noxious["default white color"]
noxious["top frame text"].Font = Enum.Font.Nunito
noxious["top frame text"].TextSize = 21.6
noxious["top frame text"].TextScaled = false
noxious["top frame text"].Text = "Welcome, " .. noxious["local player"].DisplayName .. "!"
noxious["top frame text"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame text"].Parent = noxious["top frame"]

noxious["top frame subtext"] = Instance.new"TextLabel"
noxious["top frame subtext"].Name = "welcome2"
noxious["top frame subtext"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame subtext"].Position = UDim2.new(0.08, 4, 0.18, -2)
noxious["top frame subtext"].BackgroundTransparency = 1
noxious["top frame subtext"].TextColor3 = noxious["default gray color"]
noxious["top frame subtext"].Font = Enum.Font.Nunito
noxious["top frame subtext"].TextSize = 18
noxious["top frame subtext"].TextScaled = false
noxious["top frame subtext"].Text = "(@" .. noxious["local player"].Name .. ")"
noxious["top frame subtext"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame subtext"].Parent = noxious["top frame"]

spawn(function()
	welcometxt = noxious["top frame"]:WaitForChild("welcome").Text
	welcome2txt = noxious["top frame"]:WaitForChild("welcome2").Text
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame profile picture"] = Instance.new"ImageLabel"
noxious["top frame profile picture"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["top frame profile picture"].Position = UDim2.new(0.013, 0, 0.157, 0)
noxious["top frame profile picture"].BackgroundTransparency = 0
noxious["top frame profile picture"].BackgroundColor3 = noxious["default black color"]
noxious["top frame profile picture"].BorderSizePixel = 1
noxious["top frame profile picture"].BorderColor3 = noxious["default white color"]
noxious["top frame profile picture"].Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
noxious["top frame profile picture"].Parent = noxious["top frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["scroll bar holder 2"] = Instance.new"Frame"
noxious["scroll bar holder 2"].Name = "RightScrollFrame"
noxious["scroll bar holder 2"].Size = UDim2.new(0, 10.9, 0, 242.00000000000003)
noxious["scroll bar holder 2"].BackgroundColor3 = noxious["default black color"]
noxious["scroll bar holder 2"].BorderSizePixel = 0
noxious["scroll bar holder 2"].Position = UDim2.new(0, 584, 0, 48)
noxious["scroll bar holder 2"].BorderColor3 = noxious["default white color"]
noxious["scroll bar holder 2"].BorderSizePixel = 1
noxious["scroll bar holder 2"].ZIndex = 1
noxious["scroll bar holder 2"].Parent = mainframe
noxious["scroll bar holder 2"].Visible = false

-------------------------------------------------------------------------------------------------------------------------------
-- Table to store the toggle state of each command
commandstates = commandstates or {}

noxious["command lists"] = noxious["command lists"] or {}
noxious["command lists"]["Favorited Commands"] = noxious["command lists"]["Favorited Commands"] or {}

-- File path for favorited commands
local favoritedcommandsfilepath = "DSWDNoxiousFavoritedCmds.txt"
local favoritedcommandstatesfilepath = "DSWDNoxiousFavoritedCmdStates.txt"

-- Function to delete a file
function deletefile(filename)
	if isfile(filename) then
		delfile(filename)
	end
end

-- Function to load favorited commands
function loadfavoritedcommands()
	if not isfile(favoritedcommandsfilepath) then
		writefile(favoritedcommandsfilepath, "")
	end

	if isfile(favoritedcommandsfilepath) then
		local fileContent = readfile(favoritedcommandsfilepath)
		for command in fileContent:gmatch('"([^"]+)"') do
			table.insert(noxious["command lists"]["Favorited Commands"], command)
		end
	else
		-- If the file doesn't exist, initialize an empty list
		noxious["command lists"]["Favorited Commands"] = {}
	end
end

-- Function to save favorited commands
function savefavoritedcommands()
	local fileContent = ""
	for _, command in ipairs(noxious["command lists"]["Favorited Commands"]) do
		fileContent = fileContent .. ('"%s",\n'):format(command)
	end
	writefile(favoritedcommandsfilepath, fileContent)
end

-- Function to load favorited command states
function loadfavoritedcommandstates()
	if not isfile(favoritedcommandstatesfilepath) then
		writefile(favoritedcommandstatesfilepath, "")
	end

	if isfile(favoritedcommandstatesfilepath) then
		local fileContent = readfile(favoritedcommandstatesfilepath)
		for command, state in fileContent:gmatch('"([^"]+)":([01]),') do
			commandstates[command] = state == "1"
		end
	else
		-- If the file doesn't exist, initialize an empty table
		commandstates = {}
	end
end

-- Function to save favorited command states
function savefavoritedcommandstates()
	local fileContent = ""
	for command, state in pairs(commandstates) do
		fileContent = fileContent .. ('"%s":%s,\n'):format(command, state and "1" or "0")
	end
	writefile(favoritedcommandstatesfilepath, fileContent)
end

-- Delete old files (if they exist)
spawn(function()
	deletefile("DSWDNoxiousPinnedCommands.txt")
	deletefile("DSWDFavoritedPinnedCommands.txt")
	deletefile("DSWDFavoritedCommandStates.txt")
end)

-- Load favorited commands and states
spawn(function()
	loadfavoritedcommands()
	loadfavoritedcommandstates()
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["introduction"] = Instance.new"TextLabel"
noxious["introduction"].Size = UDim2.new(0, 333.3, 0, 204)
noxious["introduction"].Position = UDim2.new(1, -333.5, 0, 80)
noxious["introduction"].TextColor3 = noxious["default white color"]
noxious["introduction"].BorderColor3 = noxious["default white color"]
noxious["introduction"].BackgroundTransparency = 1
noxious["introduction"].Font = Enum.Font.Nunito
noxious["introduction"].Name = "Introduction"
noxious["introduction"].TextSize = 21.6
noxious["introduction"].Text = "Thanks for using our script!\n\nPress a button on the left to get started.\n\nSwitch to the ''Changelogs'' tab to view the\nupdate logs.\n\nCurrent version: ".. noxious["version"]
noxious["introduction"].TextWrapped = true
noxious["introduction"].TextXAlignment = Enum.TextXAlignment.Center
noxious["introduction"].TextYAlignment = Enum.TextYAlignment.Center
noxious["introduction"].Parent = mainframe

noxious["tooltip main frame"] = Instance.new"Frame"
noxious["tooltip main frame"].Name = "tooltip"
noxious["tooltip main frame"].Size = UDim2.new(0, 265, 0, 55)
noxious["tooltip main frame"].BackgroundTransparency = 1
noxious["tooltip main frame"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip main frame"].BorderSizePixel = 0
noxious["tooltip main frame"].ZIndex = 999920
noxious["tooltip main frame"].Visible = false
noxious["tooltip main frame"].Parent = mainframe

noxious["tooltip command name"] = Instance.new"TextLabel"
noxious["tooltip command name"].Name = "CommandName"
noxious["tooltip command name"].Size = UDim2.new(1.1, 0, 0.67, 0)
noxious["tooltip command name"].Position = UDim2.new(0, -5, 0, -55)
noxious["tooltip command name"].BackgroundTransparency = 0
noxious["tooltip command name"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip command name"].TextColor3 = noxious["default white color"]
noxious["tooltip command name"].Font = Enum.Font.Nunito
noxious["tooltip command name"].TextSize = 16
noxious["tooltip command name"].ZIndex = 999920
noxious["tooltip command name"].TextScaled = false
noxious["tooltip command name"].TextWrapped = true
noxious["tooltip command name"].BorderSizePixel = 1
noxious["tooltip command name"].BorderColor3 = noxious["default white color"]
noxious["tooltip command name"].TextXAlignment = Enum.TextXAlignment.Center
noxious["tooltip command name"].TextYAlignment = Enum.TextYAlignment.Center
noxious["tooltip command name"].Parent = noxious["tooltip main frame"]
noxious["tooltip command name"].ZIndex = 2

noxious["tooltip command description"] = Instance.new"TextLabel"
noxious["tooltip command description"].Name = "Description"
noxious["tooltip command description"].Size = UDim2.new(1.1, 0, 1.92, 0)
noxious["tooltip command description"].Position = UDim2.new(0, -5, -0.43, -10)
noxious["tooltip command description"].BackgroundTransparency = 0.2
noxious["tooltip command description"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip command description"].TextColor3 = noxious["default white color"]
noxious["tooltip command description"].Font = Enum.Font.Nunito
noxious["tooltip command description"].TextSize = 16
noxious["tooltip command description"].ZIndex = 999920
noxious["tooltip command description"].TextScaled = false
noxious["tooltip command description"].TextWrapped = true
noxious["tooltip command description"].BorderSizePixel = 1
noxious["tooltip command description"].BorderColor3 = noxious["default white color"]
noxious["tooltip command description"].TextXAlignment = Enum.TextXAlignment.Center
noxious["tooltip command description"].TextYAlignment = Enum.TextYAlignment.Center
noxious["tooltip command description"].Parent = noxious["tooltip main frame"]
noxious["tooltip command description"].ZIndex = 1

local padding = Instance.new"UIPadding"
padding.PaddingLeft = UDim.new(0, 13)
padding.PaddingRight = UDim.new(0, 13)
padding.Parent = noxious["tooltip command description"]

function updatetooltipSize(commandName, description)
	local totalHeight = 40
	local fixedWidth = 310 -- Set a fixed width for the tooltip

	noxious["tooltip command name"].Text = commandName
	noxious["tooltip command description"].Text = description

	-- Update the tooltip size with the fixed width
	noxious["tooltip main frame"].Size = UDim2.new(0, fixedWidth, 0, totalHeight)
end

local hoverDebounce = false
local currentHoverCommand 

-- Function to display commands
function displayCommands(commandList)
	for _, child in ipairs(mainframe:GetChildren()) do
		if child:IsA"TextLabel" and child.Name == "List of commands" then
			child:Destroy()
		elseif child:IsA"TextLabel" and child.Name == "Introduction" then
			child:Destroy()
		elseif child:IsA"TextLabel" and child.Name == "HoverToView" then
			child:Destroy()
		elseif child:IsA"ScrollingFrame" and child.Name == "CommandScrollFrame" then
			child:Destroy()
		end
	end

	local listtitle = Instance.new"TextLabel"
	listtitle.Name = "List of commands"
	listtitle.Size = UDim2.new(0, 323.3, 0, 39.6)
	listtitle.Position = UDim2.new(1, -166.1, 0, 73.5)
	listtitle.AnchorPoint = Vector2.new(0.5, 0)
	listtitle.BackgroundTransparency = 1
	listtitle.TextColor3 = noxious["default white color"]
	listtitle.Font = Enum.Font.Nunito
	listtitle.TextSize = 21
	listtitle.BorderSizePixel = 1
	listtitle.BorderColor3 = noxious["default white color"]
	listtitle.TextScaled = false
	listtitle.Text = "▼ List of commands ▼"
	listtitle.Parent = mainframe

	local listtitle2 = Instance.new"TextLabel"
	listtitle2.Name = "HoverToView"
	listtitle2.Size = UDim2.new(0, 290.4, 0, 39.6)
	listtitle2.Position = UDim2.new(1, -166.5, 0, 91)
	listtitle2.AnchorPoint = Vector2.new(0.5, 0)
	listtitle2.BackgroundTransparency = 1
	listtitle2.TextColor3 = noxious["default white color"]
	listtitle2.Font = Enum.Font.Nunito
	listtitle2.TextSize = 15
	listtitle2.BorderSizePixel = 1
	listtitle2.BorderColor3 = noxious["default white color"]
	listtitle2.TextScaled = false
	listtitle2.Text = "Hover over a command to view its info."
	listtitle2.Parent = mainframe

	local commandscrollframe = Instance.new"ScrollingFrame"
	commandscrollframe.Name = "CommandScrollFrame"
	commandscrollframe.Size = UDim2.new(0, 333, 0, 164.4)
	commandscrollframe.Position = UDim2.new(1, -333, 0, 120)
	commandscrollframe.CanvasSize = UDim2.new(0, 0, #commandList * 0, 0)
	commandscrollframe.ScrollBarThickness = 10
	commandscrollframe.BackgroundTransparency = 1
	commandscrollframe.BorderColor3 = noxious["default white color"]
	commandscrollframe.BorderSizePixel = 0
	commandscrollframe.ZIndex = 18
	commandscrollframe.Parent = mainframe
	commandscrollframe.ScrollingDirection = Enum.ScrollingDirection.Y
	commandscrollframe.ScrollBarImageTransparency = 0
	commandscrollframe.ZIndex = 1

	local commandpadding = Instance.new"UIPadding"
	commandpadding.PaddingLeft = UDim.new(0, 8)
	commandpadding.Parent = commandscrollframe

	local itemHeight = 15
	local spacing = 1
	local totalHeight = (#commandList * itemHeight) + (#commandList - 1) * spacing

	for i, commandText in ipairs(commandList) do
		-- Skip if the command text is empty or just whitespace
		if commandText:match("^%s*$") then
			-- Create only the command text (no image button)
			local commandtext = Instance.new("TextButton")
			commandtext.Size = UDim2.new(1, 0, 0, itemHeight * 1.1)
			commandtext.Position = UDim2.new(0, 0, 0, (i - 1) * (itemHeight + spacing))
			commandtext.BackgroundTransparency = 1
			commandtext.TextColor3 = noxious["default white color"]
			commandtext.Font = Enum.Font.Nunito
			commandtext.TextSize = 17
			commandtext.TextScaled = false
			commandtext.Text = commandText
			commandtext.BorderSizePixel = 0
			commandtext.TextXAlignment = Enum.TextXAlignment.Left
			commandtext.Parent = commandscrollframe
		else
			-- Create a container frame for the image button and command text
			local container = Instance.new("Frame")
			container.Size = UDim2.new(1, 0, 0, itemHeight * 1.1)
			container.Position = UDim2.new(0, 0, 0, (i - 1) * (itemHeight + spacing))
			container.BackgroundTransparency = 1
			container.Parent = commandscrollframe
			container.ZIndex = 2

			-- Create the image button
			local imageButton = Instance.new("ImageButton")
			imageButton.Name = "ToggleButton"
			imageButton.Size = UDim2.new(0, 16, 0, 16) -- Adjust size as needed
			imageButton.Position = UDim2.new(0, -3.5, 0.5, 0.5) -- Align with the command text
			imageButton.AnchorPoint = Vector2.new(0, 0.5)
			imageButton.BackgroundTransparency = 1
			imageButton.Image = commandstates[commandText] and "rbxassetid://84270520426892" or "rbxassetid://110183128911099" -- Load saved state
			imageButton.Parent = container
			imageButton.ImageColor3 = noxious["default white color"]
			imageButton.ZIndex = 3

			-- Create the command text
			local commandtext = Instance.new("TextButton")
			commandtext.Size = UDim2.new(1, -20, 1, 0) -- Adjust width to account for the image button
			commandtext.Position = UDim2.new(0, 17, 0, 0) -- Position next to the image button
			commandtext.BackgroundTransparency = 1
			commandtext.TextColor3 = noxious["default white color"]
			commandtext.Font = Enum.Font.Nunito
			commandtext.TextSize = 17
			commandtext.TextScaled = false
			commandtext.Text = commandText
			commandtext.BorderSizePixel = 0
			commandtext.TextXAlignment = Enum.TextXAlignment.Left
			commandtext.Parent = container
			commandtext.ZIndex = 3

			imageButton.MouseButton1Click:Connect(function()
				noxious["click sound"]:Play()
				commandstates[commandText] = not commandstates[commandText] -- Toggle state
				imageButton.Image = commandstates[commandText] and "rbxassetid://84270520426892" or "rbxassetid://110183128911099" -- Update image

				-- Update the favorited commands list immediately
				if commandstates[commandText] then
					if not table.find(noxious["command lists"]["Favorited Commands"], commandText) then
						table.insert(noxious["command lists"]["Favorited Commands"], commandText)
					end
				else
					local index = table.find(noxious["command lists"]["Favorited Commands"], commandText)
					if index then
						table.remove(noxious["command lists"]["Favorited Commands"], index)
					end
				end

				-- Save the updated states and favorited commands immediately
				savefavoritedcommandstates()
				savefavoritedcommands()
			end)

			-- Command text click functionality
			commandtext.MouseButton1Click:Connect(function()
				noxious["click sound"]:Play()

				local commandText = commandtext.Text
				local commandName

				-- Try to split by comma first
				commandName = commandText:match("^(.-),")

				-- If no " -" found, try splitting by " ["
				if not commandName then
					commandName = commandText:match("^(.-)%s*%[")
				end

				-- If no comma found, try splitting by " -"
				if not commandName then
					commandName = commandText:match("^(.-)%s*%-")
				end

				-- If no match was found, use the full text
				commandName = commandName or commandText

				-- Remove "( UNABLE )" if it exists
				commandName = commandName:gsub("%(P%) ", ""):gsub("%s+$", "")
				commandName = commandName:gsub("%(HP%) ", ""):gsub("%s+$", "")
				commandName = commandName:gsub("%(KEY%) ", ""):gsub("%s+$", "")

				-- Set the command bar text
				noxious["command bar"].Text = commandName
			end)

			-- Hover functionality for the command text
			commandtext.MouseEnter:Connect(function()
				if not hoverDebounce and commandText and commandText:match"^%s*$" == nil then
					hoverDebounce = true
					currentHoverCommand = commandtext

					local namePart, descriptionPart = commandText:match"^(.-)%s*%-%s*(.*)$"
					namePart = namePart or commandText
					descriptionPart = descriptionPart or ""

					updatetooltipSize(namePart, descriptionPart)

					local mousePosition = noxious["user input service"]:GetMouseLocation()
					noxious["tooltip main frame"].Position = UDim2.new(0, mousePosition.X - mainframe.AbsolutePosition.X - (noxious["tooltip main frame"].Size.X.Offset / 2), 0, mousePosition.Y - mainframe.AbsolutePosition.Y - noxious["tooltip main frame"].Size.Y.Offset)
					noxious["tooltip main frame"].Visible = true

					task.delay(0.05, function()
						hoverDebounce = false
					end)
				end
			end)

			commandtext.MouseLeave:Connect(function()
				if currentHoverCommand == commandtext then
					noxious["tooltip main frame"].Visible = false
					currentHoverCommand = nil
				end
			end)
		end
	end

	commandscrollframe.CanvasSize = UDim2.new(0, 0, 0.017, totalHeight)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if noxious["tooltip main frame"].Visible then
				local mousePosition = input.Position
				noxious["tooltip main frame"].Position = UDim2.new(0, mousePosition.X - mainframe.AbsolutePosition.X - (noxious["tooltip main frame"].Size.X.Offset / 2), 0, mousePosition.Y - mainframe.AbsolutePosition.Y - noxious["tooltip main frame"].Size.Y.Offset - 30)
			end
		end
	end)
end

-- Detect if the user is on a touch-enabled device
local isTouchDevice = noxious["user input service"].TouchEnabled

-- Function to update tooltip position
function updateTooltipPosition(mousePosition)
	noxious["tooltip main frame"].Position = UDim2.new(
		0,
		mousePosition.X - mainframe.AbsolutePosition.X - (noxious["tooltip main frame"].Size.X.Offset / 2),
		0,
		mousePosition.Y - mainframe.AbsolutePosition.Y - noxious["tooltip main frame"].Size.Y.Offset - 30
	)
end

if isTouchDevice then
	local isDragging = false

	-- Detect when the user starts dragging
	noxious["user input service"].InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch then
			isDragging = true

			-- If a command is hovered over, immediately update the tooltip position before showing it
			if currentHoverCommand then
				updateTooltipPosition(input.Position)
				noxious["tooltip main frame"].Visible = true
			end
		end
	end)

	-- Detect when the user stops dragging
	noxious["user input service"].InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch then
			isDragging = false
			noxious["tooltip main frame"].Visible = false
		end
	end)

	-- Continuously update tooltip position while dragging
	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch and isDragging then
			if currentHoverCommand then
				updateTooltipPosition(input.Position)
			end
		end
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

local orderedButtonNames = {
	"Main",
	"Risky Commands",
	"Favorited Commands",
	"ESPs / Visuals",
	"Map / Environment",
	"Teleports",
	"Local Player",
	"Fun / Trolls",
	"Animations / Emotes",
	"Scripts",
}

-------------------------------------------------------------------------------------------------------------------------------

noxious["command button holder"] = Instance.new"ScrollingFrame"
noxious["command button holder"].Size = UDim2.new(0, 260.7, 0.9636, -101)
noxious["command button holder"].Position = UDim2.new(0, 0, 0, 74)
noxious["command button holder"].CanvasSize = UDim2.new(0, 0, 1.709, 0)
noxious["command button holder"].ScrollBarThickness = 12
noxious["command button holder"].BackgroundTransparency = 1
noxious["command button holder"].BorderSizePixel = 1
noxious["command button holder"].BorderColor3 = noxious["default white color"]
noxious["command button holder"].Parent = mainframe
noxious["command button holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["command button holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["command button holder"].ScrollBarImageTransparency = 0

-------------------------------------------------------------------------------------------------------------------------------

noxious["scroll bar holder"] = Instance.new"Frame"
noxious["scroll bar holder"].Size = UDim2.new(0, 12.100000000000001, 0, 242.00000000000003)
noxious["scroll bar holder"].BackgroundColor3 = noxious["default black color"]
noxious["scroll bar holder"].BorderSizePixel = 0
noxious["scroll bar holder"].Position = UDim2.new(0, 248, 0, 48)
noxious["scroll bar holder"].BorderColor3 = noxious["default white color"]
noxious["scroll bar holder"].BorderSizePixel = 1
noxious["scroll bar holder"].ZIndex = 1
noxious["scroll bar holder"].Parent = mainframe

-------------------------------------------------------------------------------------------------------------------------------

-- Define a function to update button text
function updateButtonText(clickedButton)
	for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
		if button:IsA"TextButton"then
			if button == clickedButton then
				-- Ensure the arrows are added only once
				if not button.Text:find"> " then
					button.Text = "> " .. button.Text .. " <"
				end
			else
				-- Reset other buttons' text
				button.Text = button.Text:gsub("> ", ""):gsub(" <", "")
			end
		end
	end
end

local buttonCount = 0
for _, buttonName in ipairs(orderedButtonNames) do
	local commandList = noxious["command lists"][buttonName]

	local button = Instance.new"TextButton"	
	button.Size = UDim2.new(1.1, -55, 0, 45)
	button.Position = UDim2.new(0, 123.2, buttonCount * 0.0965, 37.4)
	button.AnchorPoint = Vector2.new(0.5, 0.5)
	button.BackgroundColor3 = noxious["default black color"]
	button.TextColor3 = noxious["default white color"]
	button.Text = buttonName
	button.BorderColor3 = noxious["default white color"]
	button.BorderSizePixel = 1
	button.ZIndex = 17
	button.Font = Enum.Font.Nunito
	button.TextSize = 19.2
	button.Parent = noxious["command button holder"]

	-- Ensure button responds to touch on mobile
	button.AutoButtonColor = true

	button.MouseButton1Click:Connect(function()
		noxious["click sound"]:Play()
		displayCommands(commandList)
		updateButtonText(button)
	end)

	buttonCount = buttonCount + 1
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["tabs frame"] = Instance.new"Frame"
noxious["tabs frame"].Size = UDim2.new(0.9999, 0, 0, 26.4)
noxious["tabs frame"].Position = UDim2.new(0, 0, 0, 53)
noxious["tabs frame"].BackgroundColor3 = noxious["default black color"]
noxious["tabs frame"].BorderColor3 = noxious["default white color"]
noxious["tabs frame"].BorderSizePixel = 1
noxious["tabs frame"].Parent = noxious["top frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["commands tab"] = Instance.new"TextButton"
noxious["commands tab"].Size = UDim2.new(0.25, 0, 0, 26.4)
noxious["commands tab"].Position = UDim2.new(0, 0, 0, 0)
noxious["commands tab"].BackgroundColor3 = noxious["default black color"]
noxious["commands tab"].BorderColor3 = noxious["default white color"]
noxious["commands tab"].BorderSizePixel = 1
noxious["commands tab"].Parent = noxious["tabs frame"]
noxious["commands tab"].TextColor3 = noxious["default white color"]
noxious["commands tab"].Font = Enum.Font.Nunito
noxious["commands tab"].TextSize = 20
noxious["commands tab"].TextScaled = false
noxious["commands tab"].Text = "> Commands <"
noxious["commands tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["commands tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs tab"] = Instance.new"TextButton"
noxious["changelogs tab"].Size = UDim2.new(0.25, 0, 0, 26.4)
noxious["changelogs tab"].Position = UDim2.new(0.5, 0, 0, 0)
noxious["changelogs tab"].BackgroundColor3 = noxious["default black color"]
noxious["changelogs tab"].BorderColor3 = noxious["default white color"]
noxious["changelogs tab"].BorderSizePixel = 1
noxious["changelogs tab"].Parent = noxious["tabs frame"]
noxious["changelogs tab"].TextColor3 = noxious["default white color"]
noxious["changelogs tab"].Font = Enum.Font.Nunito
noxious["changelogs tab"].TextSize = 20
noxious["changelogs tab"].TextScaled = false
noxious["changelogs tab"].Text = "Changelogs"
noxious["changelogs tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["changelogs tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["back to commands button"] = Instance.new"TextButton"
noxious["back to commands button"].Visible = false
noxious["back to commands button"].Size = UDim2.new(0, 156.3, 0, 36.3)
noxious["back to commands button"].Position = UDim2.new(0.013, 0, 0.1579, 0)
noxious["back to commands button"].BackgroundColor3 = noxious["default black color"]
noxious["back to commands button"].BorderColor3 = noxious["default white color"]
noxious["back to commands button"].BorderSizePixel = 1
noxious["back to commands button"].Parent = noxious["bottom frame"]
noxious["back to commands button"].TextColor3 = noxious["default white color"]
noxious["back to commands button"].Font = Enum.Font.Nunito
noxious["back to commands button"].TextSize = 20
noxious["back to commands button"].TextScaled = false
noxious["back to commands button"].Text = "Back to Commands"
noxious["back to commands button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["back to commands button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["reload noxious button"] = Instance.new"TextButton"
noxious["reload noxious button"].Visible = false
noxious["reload noxious button"].Size = UDim2.new(0, 136.3, 0, 36.3)
noxious["reload noxious button"].Position = UDim2.new(0.292, 0, 0.1579, 0)
noxious["reload noxious button"].BackgroundColor3 = noxious["default black color"]
noxious["reload noxious button"].BorderColor3 = noxious["default white color"]
noxious["reload noxious button"].BorderSizePixel = 1
noxious["reload noxious button"].Parent = noxious["bottom frame"]
noxious["reload noxious button"].TextColor3 = noxious["default white color"]
noxious["reload noxious button"].Font = Enum.Font.Nunito
noxious["reload noxious button"].TextSize = 20
noxious["reload noxious button"].TextScaled = false
noxious["reload noxious button"].Text = "Reload Noxious"
noxious["reload noxious button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["reload noxious button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["information tab"] = Instance.new"TextButton"
noxious["information tab"].Size = UDim2.new(0.25, 0, 0, 26.4)
noxious["information tab"].Position = UDim2.new(0.25, 0, 0, 0)
noxious["information tab"].BackgroundColor3 = noxious["default black color"]
noxious["information tab"].BorderColor3 = noxious["default white color"]
noxious["information tab"].BorderSizePixel = 1
noxious["information tab"].Parent = noxious["tabs frame"]
noxious["information tab"].TextColor3 = noxious["default white color"]
noxious["information tab"].Font = Enum.Font.Nunito
noxious["information tab"].TextSize = 20
noxious["information tab"].TextScaled = false
noxious["information tab"].Text = "Info"
noxious["information tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["information tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["workspace.info button"] = Instance.new"TextButton"
noxious["workspace.info button"].Visible = false
noxious["workspace.info button"].Size = UDim2.new(0, 156.3, 0, 36.3)
noxious["workspace.info button"].Position = UDim2.new(0.013, 0, 0.1579, 0)
noxious["workspace.info button"].BackgroundColor3 = noxious["default black color"]
noxious["workspace.info button"].BorderColor3 = noxious["default white color"]
noxious["workspace.info button"].BorderSizePixel = 1
noxious["workspace.info button"].Parent = noxious["bottom frame"]
noxious["workspace.info button"].TextColor3 = noxious["default white color"]
noxious["workspace.info button"].Font = Enum.Font.Nunito
noxious["workspace.info button"].TextSize = 20
noxious["workspace.info button"].TextScaled = false
noxious["workspace.info button"].Text = "Workspace.Info"
noxious["workspace.info button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["workspace.info button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["noxious info button"] = Instance.new"TextButton"
noxious["noxious info button"].Visible = false
noxious["noxious info button"].Size = UDim2.new(0, 136.3, 0, 36.3)
noxious["noxious info button"].Position = UDim2.new(0.292, 0, 0.1579, 0)
noxious["noxious info button"].BackgroundColor3 = noxious["default black color"]
noxious["noxious info button"].BorderColor3 = noxious["default white color"]
noxious["noxious info button"].BorderSizePixel = 1
noxious["noxious info button"].Parent = noxious["bottom frame"]
noxious["noxious info button"].TextColor3 = noxious["default white color"]
noxious["noxious info button"].Font = Enum.Font.Nunito
noxious["noxious info button"].TextSize = 20
noxious["noxious info button"].TextScaled = false
noxious["noxious info button"].Text = "> Noxious Info <"
noxious["noxious info button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["noxious info button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["developer note button"] = Instance.new"TextButton"
noxious["developer note button"].Visible = false
noxious["developer note button"].Size = UDim2.new(0, 136.3, 0, 36.3)
noxious["developer note button"].Position = UDim2.new(0.292, 0, 0.1579, 0)
noxious["developer note button"].BackgroundColor3 = noxious["default black color"]
noxious["developer note button"].BorderColor3 = noxious["default white color"]
noxious["developer note button"].BorderSizePixel = 1
noxious["developer note button"].Parent = noxious["bottom frame"]
noxious["developer note button"].TextColor3 = noxious["default white color"]
noxious["developer note button"].Font = Enum.Font.Nunito
noxious["developer note button"].TextSize = 20
noxious["developer note button"].TextScaled = false
noxious["developer note button"].Text = "Developer Note"
noxious["developer note button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["developer note button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits tab"] = Instance.new"TextButton"
noxious["credits tab"].Size = UDim2.new(0.25, 0, 0, 26.4)
noxious["credits tab"].Position = UDim2.new(0.75, 0, 0, 0)
noxious["credits tab"].BackgroundColor3 = noxious["default black color"]
noxious["credits tab"].BorderColor3 = noxious["default white color"]
noxious["credits tab"].BorderSizePixel = 1
noxious["credits tab"].Parent = noxious["tabs frame"]
noxious["credits tab"].TextColor3 = noxious["default white color"]
noxious["credits tab"].Font = Enum.Font.Nunito
noxious["credits tab"].TextSize = 20
noxious["credits tab"].TextScaled = false
noxious["credits tab"].Text = "Credits"
noxious["credits tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["credits tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs holder"] = Instance.new"ScrollingFrame"
noxious["changelogs holder"].Visible = false
noxious["changelogs holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["changelogs holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["changelogs holder"].CanvasSize = UDim2.new(0, 0, 0, 0) -- Will adjust dynamically
noxious["changelogs holder"].ScrollBarThickness = 10
noxious["changelogs holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["changelogs holder"].BackgroundTransparency = 1
noxious["changelogs holder"].BorderSizePixel = 0
noxious["changelogs holder"].BorderColor3 = noxious["default white color"]
noxious["changelogs holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["changelogs holder"].Parent = mainframe

noxious["changelogs text padding"] = Instance.new"UIPadding"
noxious["changelogs text padding"].PaddingLeft = UDim.new(0, 8)
noxious["changelogs text padding"].PaddingTop = UDim.new(0, 4)
noxious["changelogs text padding"].Parent = noxious["changelogs holder"]

function populateChangelogs(entries)
	for _, text in ipairs(entries) do
		local line = Instance.new"TextLabel"		
		line.Size = UDim2.new(1, -10, 0, 30) -- Full width, fixed height
		line.Position = UDim2.new(0, 5, 0, noxious["changelogs holder"].CanvasSize.Y.Offset) -- Position below the previous lines
		line.TextColor3 = noxious["default white color"]
		line.BackgroundTransparency = 1
		line.Font = Enum.Font.Nunito
		line.TextSize = 19
		line.Text = text
		line.TextWrapped = true
		line.TextScaled = false
		line.TextXAlignment = Enum.TextXAlignment.Left
		line.Parent = noxious["changelogs holder"]

		-- Update the CanvasSize to fit new content
		noxious["changelogs holder"].CanvasSize = UDim2.new(0, 0, 0.06, noxious["changelogs holder"].CanvasSize.Y.Offset + 18)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["information holder"] = Instance.new"ScrollingFrame"
noxious["information holder"].Visible = false
noxious["information holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["information holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["information holder"].CanvasSize = UDim2.new(0, 0, 0, 0) -- Will adjust dynamically
noxious["information holder"].ScrollBarThickness = 10
noxious["information holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["information holder"].BackgroundTransparency = 1
noxious["information holder"].BorderSizePixel = 0
noxious["information holder"].BorderColor3 = noxious["default white color"]
noxious["information holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["information holder"].Parent = mainframe

noxious["information text padding"] = Instance.new"UIPadding"
noxious["information text padding"].PaddingLeft = UDim.new(0, 8)
noxious["information text padding"].PaddingTop = UDim.new(0, 4)
noxious["information text padding"].Parent = noxious["information holder"]

function populateInformation(entries)
	for _, text in ipairs(entries) do
		local line = Instance.new"TextLabel"		
		line.Size = UDim2.new(1, -10, 0, 30) -- Full width, fixed height
		line.Position = UDim2.new(0, 5, 0, noxious["information holder"].CanvasSize.Y.Offset) -- Position below the previous lines
		line.TextColor3 = noxious["default white color"]
		line.BackgroundTransparency = 1
		line.Font = Enum.Font.Nunito
		line.TextSize = 19
		line.Text = text
		line.TextWrapped = true
		line.TextScaled = false
		line.TextXAlignment = Enum.TextXAlignment.Left
		line.Parent = noxious["information holder"]

		-- Update the CanvasSize to fit new content
		noxious["information holder"].CanvasSize = UDim2.new(0, 0, 0.06, noxious["information holder"].CanvasSize.Y.Offset + 18)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function populateinfo()
	-- Ensure the Info folder exists in the Workspace
	local infoFolder = workspace:FindFirstChild("Info")
	if not infoFolder then
		local function populateInformation2(entries)
			for _, text in ipairs(entries) do
				local line = Instance.new("TextLabel")
				line.Size = UDim2.new(1, -10, 0, 30) -- Full width, fixed height
				line.Position = UDim2.new(0, 5, 0, noxious["dandy's world workspace.info holder"].CanvasSize.Y.Offset) -- Position below the previous lines
				line.TextColor3 = noxious["default white color"]
				line.BackgroundTransparency = 1
				line.Font = Enum.Font.Nunito
				line.TextSize = 19
				line.Text = text
				line.TextWrapped = true
				line.TextScaled = false
				line.TextXAlignment = Enum.TextXAlignment.Left
				line.Parent = noxious["dandy's world workspace.info holder"]

				-- Update the CanvasSize to fit new content
				noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0.06, noxious["dandy's world workspace.info holder"].CanvasSize.Y.Offset + 18)
			end
		end

		populateInformation2(noxious["dandy's world workspace.info"])
		return
	end

	-- Get value from an Instance based on its type
	local function getValue(instance)
		if instance:IsA("StringValue") then
			return instance.Value
		elseif instance:IsA("IntValue") or instance:IsA("NumberValue") or instance:IsA("BoolValue") then
			return tostring(instance.Value)
		else
			return "N/A" -- Handle unsupported types
		end
	end

	-- Excluded names
	local excludedNames = {
		["Message"] = true,
		["PickedCharacters"] = true,
		["PlayerStats"] = true,
		["CardVote"] = true,
		["DandyTracker"] = true,
		["CardModifiers"] = true,
		["ForceSpawnFloor"] = true,
		["GameStats"] = true,
		["ElevatorPrompt"] = true,
	}

	-- Update the ScrollingFrame content dynamically
	local function populateWorkspaceInfo()
		-- Clear existing content
		for _, child in ipairs(noxious["dandy's world workspace.info holder"]:GetChildren()) do
			if child:IsA("TextLabel") then
				child:Destroy()
			end
		end

		-- Reset CanvasSize
		noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0, 0)

		-- Add header line
		local yOffset = 0
		local function addLine(text)
			local line = Instance.new("TextLabel")
			line.Size = UDim2.new(1, -10, 0, 30) -- Full width, fixed height
			line.Position = UDim2.new(0, 5, 0, yOffset) -- Position dynamically based on previous entries
			line.TextColor3 = noxious["default white color"]
			line.BackgroundTransparency = 1
			line.Font = Enum.Font.Nunito
			line.TextSize = 19
			line.Text = text
			line.TextWrapped = true
			line.TextScaled = false
			line.TextXAlignment = Enum.TextXAlignment.Left
			line.Parent = noxious["dandy's world workspace.info holder"]

			-- Adjust CanvasSize and yOffset for the next line
			yOffset = yOffset + 18 -- Height of each line
			noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0, yOffset + 20)
		end

		-- Header and separator lines
		addLine("------------------------------ Information (Workspace.Info): ------------------------------")
		addLine(" ")

		-- Add values from the Info folder, excluding certain names
		for _, child in ipairs(infoFolder:GetChildren()) do
			if not excludedNames[child.Name] then
				addLine("[" .. child.Name .. "]: " .. getValue(child))
			end
		end

		-- Footer separator
		addLine(" ")
		addLine("--------------------------------------------------------------------------------------------")
	end

	-- Populate initial content
	populateWorkspaceInfo()

	-- Automatically update when Info folder changes
	local function connectFolderListeners()
		-- Update when children are added or removed
		infoFolder.ChildAdded:Connect(function()
			wait(0.1) -- Small delay to ensure the child is properly initialized
			populateWorkspaceInfo()
		end)

		infoFolder.ChildRemoved:Connect(populateWorkspaceInfo)

		-- Update when any child's value changes
		for _, child in ipairs(infoFolder:GetChildren()) do
			if child:IsA("ValueBase") then
				child:GetPropertyChangedSignal("Value"):Connect(populateWorkspaceInfo)
			end
		end

		-- Watch for new children to connect their value change signals
		infoFolder.ChildAdded:Connect(function(child)
			if child:IsA("ValueBase") then
				child:GetPropertyChangedSignal("Value"):Connect(populateWorkspaceInfo)
			end
		end)
	end

	-- Establish listeners
	connectFolderListeners()
end

-- Create the ScrollingFrame
noxious["dandy's world workspace.info holder"] = Instance.new("ScrollingFrame")
noxious["dandy's world workspace.info holder"].Visible = false
noxious["dandy's world workspace.info holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["dandy's world workspace.info holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["dandy's world workspace.info holder"].ScrollBarThickness = 10
noxious["dandy's world workspace.info holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["dandy's world workspace.info holder"].BackgroundTransparency = 1
noxious["dandy's world workspace.info holder"].BorderSizePixel = 0
noxious["dandy's world workspace.info holder"].BorderColor3 = noxious["default white color"]
noxious["dandy's world workspace.info holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["dandy's world workspace.info holder"].Parent = mainframe

-- Add padding
noxious["dandy's world workspace.info text padding"] = Instance.new("UIPadding")
noxious["dandy's world workspace.info text padding"].PaddingLeft = UDim.new(0, 8)
noxious["dandy's world workspace.info text padding"].PaddingTop = UDim.new(0, 4)
noxious["dandy's world workspace.info text padding"].Parent = noxious["dandy's world workspace.info holder"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits holder"] = Instance.new"ScrollingFrame"
noxious["credits holder"].Visible = false
noxious["credits holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["credits holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["credits holder"].CanvasSize = UDim2.new(0, 0, 0, 0) -- Will adjust dynamically
noxious["credits holder"].ScrollBarThickness = 10
noxious["credits holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["credits holder"].BackgroundTransparency = 1
noxious["credits holder"].BorderSizePixel = 0
noxious["credits holder"].BorderColor3 = noxious["default white color"]
noxious["credits holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["credits holder"].Parent = mainframe

noxious["credits text padding"] = Instance.new"UIPadding"
noxious["credits text padding"].PaddingLeft = UDim.new(0, 8)
noxious["credits text padding"].PaddingTop = UDim.new(0, 4)
noxious["credits text padding"].Parent = noxious["credits holder"]

function populatecredits(entries)
	for _, text in ipairs(entries) do
		local line = Instance.new"TextLabel"		
		line.Size = UDim2.new(1, -10, 0, 30) -- Full width, fixed height
		line.Position = UDim2.new(0, 5, 0, noxious["credits holder"].CanvasSize.Y.Offset) -- Position below the previous lines
		line.TextColor3 = noxious["default white color"]
		line.BackgroundTransparency = 1
		line.Font = Enum.Font.Nunito
		line.TextSize = 19
		line.Text = text
		line.TextWrapped = true
		line.TextScaled = false
		line.TextXAlignment = Enum.TextXAlignment.Left
		line.Parent = noxious["credits holder"]

		-- Update the CanvasSize to fit new content
		noxious["credits holder"].CanvasSize = UDim2.new(0, 0, 0.06, noxious["credits holder"].CanvasSize.Y.Offset + 18)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["workspace.info button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["workspace.info button"].Text = "> Workspace.Info <"
		noxious["noxious info button"].Text = "Noxious Info"

		noxious["information holder"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = true
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["noxious info button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["workspace.info button"].Text = "Workspace.Info"
		noxious["noxious info button"].Text = "> Noxious Info <"

		noxious["information holder"].Visible = true
		noxious["dandy's world workspace.info holder"].Visible = false
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs tab"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = true
		noxious["reload noxious button"].Visible = true
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["developer note button"].Visible = false
		noxious["changelogs tab"].Text = "> Changelogs <"
		noxious["commands tab"].Text = "Commands"
		noxious["information tab"].Text = "Info"
		noxious["credits tab"].Text = "Credits"
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = true
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = false
			text1.Visible = false
			text2.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["information tab"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["noxious info button"].Text = "> Noxious Info <"
		noxious["workspace.info button"].Text = "Workspace.Info"
		noxious["workspace.info button"].Visible = true
		noxious["noxious info button"].Visible = true
		noxious["developer note button"].Visible = false
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information tab"].Text = "> Info <"
		noxious["changelogs tab"].Text = "Changelogs"
		noxious["commands tab"].Text = "Commands"
		noxious["credits tab"].Text = "Credits"
		noxious["information holder"].Visible = true
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = false
			text1.Visible = false
			text2.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits tab"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = true
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["developer note button"].Visible = true
		noxious["credits tab"].Text = "> Credits <"
		noxious["changelogs tab"].Text = "Changelogs"
		noxious["commands tab"].Text = "Commands"
		noxious["information tab"].Text = "Info"
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = true
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = false
			text1.Visible = false
			text2.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["commands tab"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["developer note button"].Visible = false
		noxious["execute button"].Visible = true
		noxious["hide"].Visible = true
		noxious["commands tab"].Text = "> Commands <"
		noxious["changelogs tab"].Text = "Changelogs"
		noxious["information tab"].Text = "Info"
		noxious["credits tab"].Text = "Credits"
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = true
		noxious["command button holder"].Visible = true
		noxious["command bar"].Visible = true
		noxious["scroll bar holder"].Visible = true
		noxious["scroll bar holder 2"].Visible = false
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = true
			text1.Visible = true
			text2.Visible = true
		end
	end
)

noxious["back to commands button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["developer note button"].Visible = false
		noxious["commands tab"].Text = "> Commands <"
		noxious["changelogs tab"].Text = "Changelogs"
		noxious["information tab"].Text = "Info"
		noxious["credits tab"].Text = "Credits"
		noxious["execute button"].Visible = true
		noxious["hide"].Visible = true
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = true
		noxious["command button holder"].Visible = true
		noxious["command bar"].Visible = true
		noxious["scroll bar holder"].Visible = true
		noxious["scroll bar holder 2"].Visible = false
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = true
			text1.Visible = true
			text2.Visible = true
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

local lastframeseen = "mainframe"

function toggleVisibility()
	if lastframeseen == "mainframe" then
		mainframe.Visible = not mainframe.Visible
	else
		mainframe2.Visible = not mainframe2.Visible
	end
end

noxious["toggle interface visibility button"].MouseButton1Click:Connect(
	function()
		toggleVisibility()
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

-- Create the main frame
mainframe2.Name = "mainframe"
mainframe2.Size = UDim2.new(0, 594, 0, 330)  -- Adjusted size
mainframe2.BackgroundColor3 = noxious["default black color"]
mainframe2.BorderSizePixel = 1
mainframe2.BorderColor3 = noxious["default white color"]
mainframe2.BackgroundTransparency = 0.2
mainframe2.Parent = noxious["noxious screen gui"]
mainframe2.Visible = false

function centermainframe2()
	local screenWidth = noxious["current camera"].ViewportSize.X
	local screenHeight = noxious["current camera"].ViewportSize.Y

	-- Calculate the position to center the frame on the screen
	local frameWidth = 594
	local frameHeight = 330
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 58

	-- Set the position to center it on the screen
	mainframe2.Position = UDim2.new(0, centerX, 0, centerY)
end
centermainframe2()

function dragmainframe2()
	local frame = mainframe2
	local dragToggle 	
	local dragSpeed = 0.25
	local dragStart 	
	local startPos 

	local function updatemainframeinput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		noxious["tween service"]:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updatemainframeinput(input)
			end
		end
	end)
end
dragmainframe2()

function synchronizePositions(frame1, frame2)
	frame1:GetPropertyChangedSignal("Position"):Connect(function()
		if mainframe2.Visible == false then frame2.Position = frame1.Position end
	end)

	frame2:GetPropertyChangedSignal("Position"):Connect(function()
		if mainframe.Visible == false then frame1.Position = frame2.Position end
	end)
end
synchronizePositions(mainframe, mainframe2)

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame team icon"] = Instance.new"ImageLabel"
noxious["bottom frame team icon"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["bottom frame team icon"].Position = UDim2.new(0.926, 0, 0.1579, 0)
noxious["bottom frame team icon"].BackgroundTransparency = 0
noxious["bottom frame team icon"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame team icon"].BorderSizePixel = 1
noxious["bottom frame team icon"].BorderColor3 = noxious["default white color"]
noxious["bottom frame team icon"].Image = "rbxassetid://130584446591314"
noxious["bottom frame team icon"].Parent = noxious["bottom frame"]
noxious["bottom frame team icon"].ImageColor3 = noxious["default white color"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame title"] = Instance.new"TextLabel"
noxious["bottom frame title"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame title"].Position = UDim2.new(0, -37, -0.18, 1)
noxious["bottom frame title"].BackgroundTransparency = 1
noxious["bottom frame title"].TextColor3 = noxious["default white color"]
noxious["bottom frame title"].Font = Enum.Font.Nunito
noxious["bottom frame title"].TextSize = 21.6
noxious["bottom frame title"].TextScaled = false
noxious["bottom frame title"].Text = "Noxious hub: dandy's world"
noxious["bottom frame title"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame title"].Parent = noxious["bottom frame"]

noxious["bottom frame subtitle"] = Instance.new"TextLabel"
noxious["bottom frame subtitle"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame subtitle"].Position = UDim2.new(0, -37, 0.18, 1)
noxious["bottom frame subtitle"].BackgroundTransparency = 1
noxious["bottom frame subtitle"].TextColor3 = noxious["default gray color"]
noxious["bottom frame subtitle"].Font = Enum.Font.Nunito
noxious["bottom frame subtitle"].TextSize = 18
noxious["bottom frame subtitle"].TextScaled = false
noxious["bottom frame subtitle"].Text = "By Team Noxious & Plethora"
noxious["bottom frame subtitle"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame subtitle"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame 2"] = Instance.new"Frame"
noxious["top frame 2"].Name = "TopFrame"
noxious["top frame 2"].Size = UDim2.new(0.9999, 0, 0, 52.8)
noxious["top frame 2"].BackgroundColor3 = noxious["default black color"]
noxious["top frame 2"].BorderColor3 = noxious["default white color"]
noxious["top frame 2"].BorderSizePixel = 1
noxious["top frame 2"].Parent = mainframe2

noxious["hide interface button 2"] = Instance.new"TextButton"
noxious["hide interface button 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["hide interface button 2"].BackgroundColor3 = noxious["default black color"]
noxious["hide interface button 2"].Position = UDim2.new(0.9256, 0, 0.157, 0)
noxious["hide interface button 2"].BorderColor3 = noxious["default white color"]
noxious["hide interface button 2"].BorderSizePixel = 1
noxious["hide interface button 2"].TextColor3 = noxious["default white color"]
noxious["hide interface button 2"].Font = Enum.Font.Nunito
noxious["hide interface button 2"].TextSize = 20
noxious["hide interface button 2"].TextScaled = false
noxious["hide interface button 2"].Text = "X"
noxious["hide interface button 2"].TextXAlignment = Enum.TextXAlignment.Center
noxious["hide interface button 2"].TextYAlignment = Enum.TextYAlignment.Center
noxious["hide interface button 2"].Parent = noxious["top frame 2"]

noxious["hide interface button 2"].MouseButton1Click:Connect(
	function()
		toggleVisibility()
		noxious["click sound"]:Play()
	end
)

noxious["reposition interface button 2"] = Instance.new"TextButton"
noxious["reposition interface button 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["reposition interface button 2"].BackgroundColor3 = noxious["default black color"]
noxious["reposition interface button 2"].Position = UDim2.new(0.8489, 0, 0.158, 0)
noxious["reposition interface button 2"].BorderColor3 = noxious["default white color"]
noxious["reposition interface button 2"].BorderSizePixel = 1
noxious["reposition interface button 2"].TextColor3 = noxious["default white color"]
noxious["reposition interface button 2"].Font = Enum.Font.Nunito
noxious["reposition interface button 2"].TextSize = 20
noxious["reposition interface button 2"].TextScaled = false
noxious["reposition interface button 2"].Text = "R"
noxious["reposition interface button 2"].TextXAlignment = Enum.TextXAlignment.Center
noxious["reposition interface button 2"].TextYAlignment = Enum.TextYAlignment.Center
noxious["reposition interface button 2"].Parent = noxious["top frame 2"]

noxious["reposition interface button 2"].MouseButton1Click:Connect(
	function()
		centermainframe2()
		centermainframe()
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame text 2"] = Instance.new"TextLabel"
noxious["top frame text 2"].Name = "welcome"
noxious["top frame text 2"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame text 2"].Position = UDim2.new(0.08, 4, -0.18, -2)
noxious["top frame text 2"].BackgroundTransparency = 1
noxious["top frame text 2"].TextColor3 = noxious["default white color"]
noxious["top frame text 2"].Font = Enum.Font.Nunito
noxious["top frame text 2"].TextSize = 21.6
noxious["top frame text 2"].TextScaled = false
noxious["top frame text 2"].Text = ""
noxious["top frame text 2"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame text 2"].Parent = noxious["top frame 2"]

noxious["top frame subtext 2"] = Instance.new"TextLabel"
noxious["top frame subtext 2"].Name = "welcome3"
noxious["top frame subtext 2"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame subtext 2"].Position = UDim2.new(0.08, 4, 0.18, -2)
noxious["top frame subtext 2"].BackgroundTransparency = 1
noxious["top frame subtext 2"].TextColor3 = noxious["default gray color"]
noxious["top frame subtext 2"].Font = Enum.Font.Nunito
noxious["top frame subtext 2"].TextSize = 18
noxious["top frame subtext 2"].TextScaled = false
noxious["top frame subtext 2"].Text = ""
noxious["top frame subtext 2"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame subtext 2"].Parent = noxious["top frame 2"]

spawn(function()
	noxious["run service"].RenderStepped:Connect(function()
		noxious["top frame text 2"].Text = noxious["top frame text"].Text
		noxious["top frame subtext 2"].Text = noxious["top frame subtext"].Text
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame profile picture 2"] = Instance.new"ImageLabel"
noxious["top frame profile picture 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["top frame profile picture 2"].Position = UDim2.new(0.013, 0, 0.157, 0)
noxious["top frame profile picture 2"].BackgroundTransparency = 0
noxious["top frame profile picture 2"].BackgroundColor3 = noxious["default black color"]
noxious["top frame profile picture 2"].BorderSizePixel = 1
noxious["top frame profile picture 2"].BorderColor3 = noxious["default white color"]
noxious["top frame profile picture 2"].Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
noxious["top frame profile picture 2"].Parent = noxious["top frame 2"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame 2"] = Instance.new"Frame"
noxious["bottom frame 2"].Size = UDim2.new(0, 594, 0, 52.8)
noxious["bottom frame 2"].Position = UDim2.new(0, 0, 0.7, 54)
noxious["bottom frame 2"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame 2"].BorderColor3 = noxious["default white color"]
noxious["bottom frame 2"].BorderSizePixel = 1
noxious["bottom frame 2"].Parent = mainframe2

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame team icon 2"] = Instance.new"ImageLabel"
noxious["bottom frame team icon 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["bottom frame team icon 2"].Position = UDim2.new(0.926, 0, 0.1579, 0)
noxious["bottom frame team icon 2"].BackgroundTransparency = 0
noxious["bottom frame team icon 2"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame team icon 2"].BorderSizePixel = 1
noxious["bottom frame team icon 2"].BorderColor3 = noxious["default white color"]
noxious["bottom frame team icon 2"].Image = "rbxassetid://130584446591314"
noxious["bottom frame team icon 2"].Parent = noxious["bottom frame 2"]
noxious["bottom frame team icon 2"].ImageColor3 = noxious["default white color"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame title 2"] = Instance.new"TextLabel"
noxious["bottom frame title 2"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame title 2"].Position = UDim2.new(0, -37, -0.18, 1)
noxious["bottom frame title 2"].BackgroundTransparency = 1
noxious["bottom frame title 2"].TextColor3 = noxious["default white color"]
noxious["bottom frame title 2"].Font = Enum.Font.Nunito
noxious["bottom frame title 2"].TextSize = 21.6
noxious["bottom frame title 2"].TextScaled = false
noxious["bottom frame title 2"].Text = "Noxious hub: dandy's world"
noxious["bottom frame title 2"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame title 2"].Parent = noxious["bottom frame 2"]

noxious["bottom frame subtitle 2"] = Instance.new"TextLabel"
noxious["bottom frame subtitle 2"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame subtitle 2"].Position = UDim2.new(0, -37, 0.18, 1)
noxious["bottom frame subtitle 2"].BackgroundTransparency = 1
noxious["bottom frame subtitle 2"].TextColor3 = noxious["default gray color"]
noxious["bottom frame subtitle 2"].Font = Enum.Font.Nunito
noxious["bottom frame subtitle 2"].TextSize = 18
noxious["bottom frame subtitle 2"].TextScaled = false
noxious["bottom frame subtitle 2"].Text = "By Team Noxious & Plethora"
noxious["bottom frame subtitle 2"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame subtitle 2"].Parent = noxious["bottom frame 2"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["settings button"] = Instance.new"TextButton"
noxious["settings button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["settings button"].BackgroundColor3 = noxious["default black color"]
noxious["settings button"].Position = UDim2.new(0, 412, 0.158, 0)
noxious["settings button"].BorderColor3 = noxious["default white color"]
noxious["settings button"].BorderSizePixel = 1
noxious["settings button"].TextColor3 = noxious["default white color"]
noxious["settings button"].Font = Enum.Font.Nunito
noxious["settings button"].TextSize = 20
noxious["settings button"].TextScaled = false
noxious["settings button"].Text = "S"
noxious["settings button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["settings button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["settings button"].Parent = noxious["top frame"]

noxious["main button"] = Instance.new"TextButton"
noxious["main button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["main button"].BackgroundColor3 = noxious["default black color"]
noxious["main button"].Position = UDim2.new(0, 458, 0.158, 0)
noxious["main button"].BorderColor3 = noxious["default white color"]
noxious["main button"].BorderSizePixel = 1
noxious["main button"].TextColor3 = noxious["default white color"]
noxious["main button"].Font = Enum.Font.Nunito
noxious["main button"].TextSize = 20
noxious["main button"].TextScaled = false
noxious["main button"].Text = "M"
noxious["main button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["main button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["main button"].Parent = noxious["top frame"]

noxious["settings button 2"] = Instance.new"TextButton"
noxious["settings button 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["settings button 2"].BackgroundColor3 = noxious["default black color"]
noxious["settings button 2"].Position = UDim2.new(0, 412, 0.158, 0)
noxious["settings button 2"].BorderColor3 = noxious["default white color"]
noxious["settings button 2"].BorderSizePixel = 1
noxious["settings button 2"].TextColor3 = noxious["default white color"]
noxious["settings button 2"].Font = Enum.Font.Nunito
noxious["settings button 2"].TextSize = 20
noxious["settings button 2"].TextScaled = false
noxious["settings button 2"].Text = "S"
noxious["settings button 2"].TextXAlignment = Enum.TextXAlignment.Center
noxious["settings button 2"].TextYAlignment = Enum.TextYAlignment.Center
noxious["settings button 2"].Parent = noxious["top frame 2"]

noxious["main button 2"] = Instance.new"TextButton"
noxious["main button 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["main button 2"].BackgroundColor3 = noxious["default black color"]
noxious["main button 2"].Position = UDim2.new(0, 458, 0.158, 0)
noxious["main button 2"].BorderColor3 = noxious["default white color"]
noxious["main button 2"].BorderSizePixel = 1
noxious["main button 2"].TextColor3 = noxious["default white color"]
noxious["main button 2"].Font = Enum.Font.Nunito
noxious["main button 2"].TextSize = 20
noxious["main button 2"].TextScaled = false
noxious["main button 2"].Text = "M"
noxious["main button 2"].TextXAlignment = Enum.TextXAlignment.Center
noxious["main button 2"].TextYAlignment = Enum.TextYAlignment.Center
noxious["main button 2"].Parent = noxious["top frame 2"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["tabs frame 2"] = Instance.new"Frame"
noxious["tabs frame 2"].Size = UDim2.new(0.9999, 0, 0, 26.4)
noxious["tabs frame 2"].Position = UDim2.new(0, 0, 0, 53)
noxious["tabs frame 2"].BackgroundColor3 = noxious["default black color"]
noxious["tabs frame 2"].BorderColor3 = noxious["default white color"]
noxious["tabs frame 2"].BorderSizePixel = 1
noxious["tabs frame 2"].Parent = noxious["top frame 2"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["configuration tab"] = Instance.new"TextButton"
noxious["configuration tab"].Size = UDim2.new(0, 297, 0, 26.4)
noxious["configuration tab"].Position = UDim2.new(0, 0, 0, 0)
noxious["configuration tab"].BackgroundColor3 = noxious["default black color"]
noxious["configuration tab"].BorderColor3 = noxious["default white color"]
noxious["configuration tab"].BorderSizePixel = 1
noxious["configuration tab"].Parent = noxious["tabs frame 2"]
noxious["configuration tab"].TextColor3 = noxious["default white color"]
noxious["configuration tab"].Font = Enum.Font.Nunito
noxious["configuration tab"].TextSize = 20
noxious["configuration tab"].TextScaled = false
noxious["configuration tab"].Text = "> Configuration <"
noxious["configuration tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["configuration tab"].TextYAlignment = Enum.TextYAlignment.Center

noxious["configuration tab"].MouseButton1Click:Connect(
	function()
		noxious["script settings tab"].Text = "Script Settings"
		noxious["configuration tab"].Text = "> Configuration <"
		noxious["script settings holder"].Visible = false
		noxious["settings holder"].Visible = true
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["script settings tab"] = Instance.new"TextButton"
noxious["script settings tab"].Size = UDim2.new(0.50, 0, 0, 26.4)
noxious["script settings tab"].Position = UDim2.new(0.5, 0, 0, 0)
noxious["script settings tab"].BackgroundColor3 = noxious["default black color"]
noxious["script settings tab"].BorderColor3 = noxious["default white color"]
noxious["script settings tab"].BorderSizePixel = 1
noxious["script settings tab"].Parent = noxious["tabs frame 2"]
noxious["script settings tab"].TextColor3 = noxious["default white color"]
noxious["script settings tab"].Font = Enum.Font.Nunito
noxious["script settings tab"].TextSize = 20
noxious["script settings tab"].TextScaled = false
noxious["script settings tab"].Text = "Script Settings"
noxious["script settings tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["script settings tab"].TextYAlignment = Enum.TextYAlignment.Center

noxious["script settings tab"].MouseButton1Click:Connect(
	function()
		noxious["script settings tab"].Text = "> Script Settings <"
		noxious["configuration tab"].Text = "Configuration"
		noxious["script settings holder"].Visible = true
		noxious["settings holder"].Visible = false
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["settings holder"] = Instance.new"ScrollingFrame"
noxious["settings holder"].Visible = true
noxious["settings holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["settings holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["settings holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["settings holder"].ScrollBarThickness = 10
noxious["settings holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["settings holder"].BackgroundTransparency = 1
noxious["settings holder"].BorderSizePixel = 0
noxious["settings holder"].BorderColor3 = noxious["default white color"]
noxious["settings holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["settings holder"].Parent = mainframe2

-- Function to update canvas size
function updateCanvasSize()
	local totalHeight = 0
	for _, child in ipairs(noxious["settings holder"]:GetChildren()) do
		if child:IsA("Frame") then
			totalHeight = totalHeight + child.Size.Y.Offset + 8 -- Add some padding
		end
	end
	noxious["settings holder"].CanvasSize = UDim2.new(0, 0, 0, totalHeight + 26) -- Extra padding at bottom
end

-- ESP Color Settings with Working Save/Load
local ESP_COLORS_FILE = "DSWDNoxiousSettings.json"

-- Default colors with fallback protection
local defaultColors = {
	Player = Color3.fromRGB(0, 0, 255),
	Monster = Color3.fromRGB(255, 0, 0),
	Machine = Color3.fromRGB(110, 110, 110),
	CompletedMachine = Color3.fromRGB(255, 0, 255),
	PosessedMachine = Color3.fromRGB(0, 255, 255),
	Item = Color3.fromRGB(0, 255, 0),
	FakeCapsule = Color3.fromRGB(255, 255, 0),
	FakeElevator = Color3.fromRGB(255, 255, 0),
	Heals = Color3.fromRGB(176, 38, 255),
	ExtractionItems = Color3.fromRGB(255, 100, 0)
}

-- Current colors with loading system
local espColors = {}
for k,v in pairs(defaultColors) do
	espColors[k] = v
end

-- Robust save function
function saveColors()
	local colorData = {}
	for name, color in pairs(espColors) do
		if typeof(color) == "Color3" then
			colorData[name] = {
				R = math.floor(color.R * 255),
				G = math.floor(color.G * 255),
				B = math.floor(color.B * 255)
			}
		end
	end

	pcall(function()
		local json = noxious["http service"]:JSONEncode(colorData)
		writefile(ESP_COLORS_FILE, json)
	end)
end

function loadColors()
	if not pcall(function() return isfile(ESP_COLORS_FILE) end) then 
		-- warn("No saved colors file found")
		return 
	end

	local fileContents
	local success, err = pcall(function()
		fileContents = readfile(ESP_COLORS_FILE)
	end)

	if not success or not fileContents then
		-- warn("Failed to read colors file: "..tostring(err))
		return
	end

	local colorData
	success, err = pcall(function()
		colorData = noxious["http service"]:JSONDecode(fileContents)
	end)

	if not success or not colorData then
		-- warn("Failed to decode colors: "..tostring(err))
		return
	end

	-- Validate and load each color
	for name, rgb in pairs(colorData) do
		if defaultColors[name] then
			local r = tonumber(rgb.R) or 0
			local g = tonumber(rgb.G) or 0
			local b = tonumber(rgb.B) or 0

			espColors[name] = Color3.fromRGB(
				math.clamp(r, 0, 255),
				math.clamp(g, 0, 255),
				math.clamp(b, 0, 255)
			)
		end
	end
end

-- Initialize colors
loadColors()

-- Apply loaded colors to global variables
espcPlayer = espColors.Player
espcMonster = espColors.Monster
espcMachine = espColors.Machine
espcCompletedMachine = espColors.CompletedMachine
espcPosessedMachine = espColors.PosessedMachine
espcItem = espColors.Item
espcFakeCapsule = espColors.FakeCapsule
espcFakeElevator = espColors.FakeElevator
espcHeals = espColors.Heals
espcExtractionItems = espColors.ExtractionItems

-- Safe color getter for highlights
function getHighlightColor(colorType)
	-- First check if we have a saved color
	if espColors[colorType] and typeof(espColors[colorType]) == "Color3" then
		return espColors[colorType]
	end
	-- Fallback to default
	if defaultColors[colorType] and typeof(defaultColors[colorType]) == "Color3" then
		return defaultColors[colorType]
	end
	-- Ultimate fallback (should never happen)
	-- warn("Missing color for "..tostring(colorType))
	return Color3.fromRGB(255, 0, 255) -- Magenta for visibility
end

-- Modified addSettingFrame with proper color handling
function addSettingFrame(title, espType, subtext, targetVariableName, refreshFunction)
	-- Create frame
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1, -27, 0, 60)
	frame.Position = UDim2.new(0, 8, 0, #noxious["settings holder"]:GetChildren() * 70 + 8)
	frame.BackgroundTransparency = 0
	frame.BackgroundColor3 = noxious["default black color"]
	frame.BorderColor3 = noxious["default white color"]
	frame.Parent = noxious["settings holder"]
	frame.ZIndex = 1

	-- Add title and subtext
	local titleLabel = Instance.new("TextLabel")
	titleLabel.Text = title
	titleLabel.Font = Enum.Font.Nunito
	titleLabel.TextSize = 20
	titleLabel.TextColor3 = noxious["default white color"]
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Position = UDim2.new(0, 10, 0, 11)
	titleLabel.Size = UDim2.new(0.6, -10, 0, 20)
	titleLabel.BackgroundTransparency = 1
	titleLabel.Parent = frame
	titleLabel.ZIndex = 2

	local subtextLabel = Instance.new("TextLabel")
	subtextLabel.Text = subtext
	subtextLabel.Font = Enum.Font.Nunito
	subtextLabel.TextSize = 15
	subtextLabel.TextColor3 = noxious["default gray color"]
	subtextLabel.TextXAlignment = Enum.TextXAlignment.Left
	subtextLabel.Position = UDim2.new(0, 10, 0, 30)
	subtextLabel.Size = UDim2.new(0.6, -10, 0, 20)
	subtextLabel.BackgroundTransparency = 1
	subtextLabel.Parent = frame
	subtextLabel.ZIndex = 2

	-- Color frame showing current color
	local colorFrame = Instance.new("Frame")
	colorFrame.Size = UDim2.new(0, 30, 0, 30)
	colorFrame.Position = UDim2.new(1, -182, 0.5, -15)
	colorFrame.BackgroundColor3 = espColors[espType]
	colorFrame.BorderSizePixel = 1
	colorFrame.BorderColor3 = noxious["default white color"]
	colorFrame.Parent = frame

	-- Textbox for RGB input
	local textBox = Instance.new("TextBox")
	textBox.Size = UDim2.new(0, 120, 0, 30)
	textBox.Position = UDim2.new(1, -135, 0.5, -15)
	textBox.PlaceholderText = "R, G, B"
	textBox.Font = Enum.Font.Nunito
	textBox.PlaceholderColor3 = noxious["default gray color"]
	textBox.TextSize = 20
	textBox.Text = string.format("%d, %d, %d", 
		math.floor(espColors[espType].R * 255),
		math.floor(espColors[espType].G * 255),
		math.floor(espColors[espType].B * 255))
	textBox.TextColor3 = noxious["default white color"]
	textBox.BackgroundColor3 = noxious["default black color"]
	textBox.BorderSizePixel = 1
	textBox.BorderColor3 = noxious["default white color"]
	textBox.Parent = frame
	textBox.ZIndex = 3

	-- Color update handler
	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local r, g, b = textBox.Text:match("^(%d+),%s*(%d+),%s*(%d+)$")
			r, g, b = tonumber(r), tonumber(g), tonumber(b)

			if r and g and b then
				local newColor = Color3.fromRGB(
					math.clamp(r, 0, 255),
					math.clamp(g, 0, 255),
					math.clamp(b, 0, 255)
				)

				-- Update all color storage
				espColors[espType] = newColor
				getgenv()[targetVariableName] = newColor
				colorFrame.BackgroundColor3 = newColor

				-- Save and refresh
				saveColors()
				if refreshFunction then
					pcall(refreshFunction)
				end
			else
				-- Reset to current color
				textBox.Text = string.format("%d, %d, %d", 
					math.floor(getHighlightColor(espType).R * 255),
					math.floor(getHighlightColor(espType).G * 255),
					math.floor(getHighlightColor(espType).B * 255))
			end
		end
	end)
	updateCanvasSize()
end

-- Add ESP color settings frames with save support
addSettingFrame(
	"Player ESP Color", 
	"Player",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Player,
	function(color)
		defaultColors.Player = color
		disableEsp("Players")
		enableEsp("Players")
	end
)

addSettingFrame(
	"Monster ESP Color", 
	"Monster",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Monster,
	function(color)
		defaultColors.Monster = color
		disableEsp("Monsters")
		enableEsp("Monsters")
	end
)

addSettingFrame(
	"Machine ESP Color", 
	"Machine",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Machine,
	function(color)
		defaultColors.Machine = color
		disableEsp("Machines")
		enableEsp("Machines")
	end
)

addSettingFrame(
	"Completed Machine ESP Color", 
	"CompletedMachine",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.CompletedMachine,
	function(color)
		defaultColors.CompletedMachine = color
		disableEsp("Machines")
		enableEsp("Machines")
	end
)

addSettingFrame(
	"Posessed Machine ESP Color", 
	"PosessedMachine",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.PosessedMachine,
	function(color)
		defaultColors.PosessedMachine = color
		disableEsp("Machines")
		enableEsp("Machines")
	end
)

addSettingFrame(
	"Item ESP Color", 
	"Item",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Item,
	function(color)
		defaultColors.Item = color
		disableEsp("Items")
		enableEsp("Items")
	end
)

addSettingFrame(
	"Fake Capsule ESP Color", 
	"FakeCapsule",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.FakeCapsule,
	function(color)
		defaultColors.FakeCapsule = color
		disableEsp("Items")
		enableEsp("Items")
	end
)

addSettingFrame(
	"Fake Elevator ESP Color", 
	"FakeElevator",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.FakeElevator,
	function(color)
		defaultColors.FakeElevator = color
		disableEsp("FakeElevator")
		enableEsp("FakeElevator")
	end
)

addSettingFrame(
	"Heals ESP Color", 
	"Heals",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Heals,
	function(color)
		defaultColors.Heals = color
		disableEsp("Items")
		enableEsp("Items")
	end
)

addSettingFrame(
	"Extraction Items ESP Color", 
	"ExtractionItems",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.ExtractionItems,
	function(color)
		defaultColors.ExtractionItems = color
		disableEsp("Items")
		enableEsp("Items")
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["script settings holder"] = Instance.new"ScrollingFrame"
noxious["script settings holder"].Visible = false
noxious["script settings holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["script settings holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["script settings holder"].CanvasSize = UDim2.new(0, 0, 0, 0) -- Will adjust dynamically
noxious["script settings holder"].ScrollBarThickness = 10
noxious["script settings holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["script settings holder"].BackgroundTransparency = 1
noxious["script settings holder"].BorderSizePixel = 0
noxious["script settings holder"].BorderColor3 = noxious["default white color"]
noxious["script settings holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["script settings holder"].Parent = mainframe2

-- Configuration file path
local CONFIG_FILE = "NoxiousScriptConfiguration.json"

-- Default configuration
local defaultConfig = {
	simpleesp = false,
	ptcleartextbox = false,
	notificationSound = "8503529139",
	warningSound = "5914602124",
	errorSound = "489103549",
	clickSound = "421058925"
}

-- Current configuration
local config = {}

function loadConfig()
	if not isfile(CONFIG_FILE) then
		return defaultConfig
	end

	local success, result = pcall(function()
		return noxious["http service"]:JSONDecode(readfile(CONFIG_FILE))
	end)

	if success then
		-- Merge with default config to ensure all fields exist
		local merged = table.clone(defaultConfig)
		for k, v in pairs(result) do
			merged[k] = v
		end
		return merged
	else

		return defaultConfig
	end
end

-- Function to save configuration
function saveConfig()
	local success, err = pcall(function()
		writefile(CONFIG_FILE, noxious["http service"]:JSONEncode(config))
	end)

	if not success then

	end
end

if game.PlaceId ~= noxious["test game"] then
	config = loadConfig()
	simpleesp = config.simpleesp
	ptcleartextbox = config.ptcleartextbox
end

-- Function to add a frame to the settings holder
function addScriptSettingFrame(title, subtext, onofftoggle, RGBcolor, id, defaultColor, imageid, audioid, defaultid, defaultToggleState, themetextbox, defaulttheme, toggleCallback, colorCallback, imageCallback, audioCallback, themeCallback)
	-- Create the main frame
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1, -27, 0, 60) -- Width: Full width with padding, Height: Fixed
	frame.Position = UDim2.new(0, 8, 0, #noxious["script settings holder"]:GetChildren() * 70 + 8) -- Position dynamically
	frame.BackgroundTransparency = 0
	frame.BackgroundColor3 = noxious["default black color"]
	frame.BorderColor3 = noxious["default white color"]
	frame.Parent = noxious["script settings holder"]
	frame.ZIndex = 1

	-- Add title text
	local titleLabel = Instance.new("TextLabel")
	titleLabel.Text = title
	titleLabel.Font = Enum.Font.Nunito
	titleLabel.TextSize = 20
	titleLabel.TextColor3 = noxious["default white color"]
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Position = UDim2.new(0, 10, 0, 11)
	titleLabel.Size = UDim2.new(0.6, -10, 0, 20)
	titleLabel.BackgroundTransparency = 1
	titleLabel.Parent = frame
	titleLabel.ZIndex = 2

	-- Add subtext
	local subtextLabel = Instance.new("TextLabel")
	subtextLabel.Text = subtext
	subtextLabel.Font = Enum.Font.Nunito
	subtextLabel.TextSize = 15
	subtextLabel.TextColor3 = noxious["default gray color"]
	subtextLabel.TextXAlignment = Enum.TextXAlignment.Left
	subtextLabel.Position = UDim2.new(0, 10, 0, 30)
	subtextLabel.Size = UDim2.new(0.6, -10, 0, 20)
	subtextLabel.BackgroundTransparency = 1
	subtextLabel.Parent = frame
	subtextLabel.ZIndex = 2

	-- Add on/off toggle button (if enabled)
	if onofftoggle then
		local toggleButton = Instance.new("TextButton")
		toggleButton.Size = UDim2.new(0, 70, 0, 30)
		toggleButton.Position = UDim2.new(1, -85, 0.5, -15) -- Right side
		toggleButton.Text = defaultToggleState or "Off" -- Set default toggle state
		toggleButton.Font = Enum.Font.Nunito
		toggleButton.TextSize = 20
		toggleButton.TextColor3 = noxious["default white color"] -- Default white color
		toggleButton.BackgroundColor3 = noxious["default black color"] -- Dark gray
		toggleButton.BorderSizePixel = 1
		toggleButton.BorderColor3 = noxious["default white color"]
		toggleButton.Parent = frame
		toggleButton.ZIndex = 3

		-- Initialize isOn based on defaultToggleState
		local isOn = defaultToggleState == "On"

		-- Call the toggle callback with the initial state
		if toggleCallback then
			toggleCallback(isOn)
		end

		-- Toggle functionality
		toggleButton.MouseButton1Click:Connect(function()
			isOn = not isOn
			toggleButton.Text = isOn and "On" or "Off"
			if toggleCallback then
				toggleCallback(isOn) -- Call the toggle callback function
			end

			-- Update config and save
			if title == "Toggle Clear on FocusLost" then
				config.ptcleartextbox = isOn
			elseif title == "Toggle Simple ESP Text" then
				config.simpleesp = isOn
			end
			saveConfig()
		end)
	end

	-- Add RGB color picker (if enabled)
	if RGBcolor then
		-- Color frame
		local colorFrame = Instance.new("Frame")
		colorFrame.Size = UDim2.new(0, 30, 0, 30)
		colorFrame.Position = UDim2.new(1, -182, 0.5, -15) -- Right side
		colorFrame.BackgroundColor3 = defaultColor or noxious["default white color"] -- Use defaultColor if provided, else white
		colorFrame.BorderSizePixel = 1
		colorFrame.BorderColor3 = noxious["default white color"]
		colorFrame.Parent = frame

		-- Textbox for RGB input
		local textBox = Instance.new("TextBox")
		textBox.Size = UDim2.new(0, 120, 0, 30)
		textBox.Position = UDim2.new(1, -135, 0.5, -15) -- Right side
		textBox.PlaceholderText = "R, G, B"
		textBox.Font = Enum.Font.Nunito
		textBox.PlaceholderColor3 = noxious["default gray color"]
		textBox.TextSize = 20
		textBox.Text = defaultColor and string.format("%d, %d, %d", defaultColor.r * 255, defaultColor.g * 255, defaultColor.b * 255) or "255, 255, 255"
		textBox.TextColor3 = noxious["default white color"]
		textBox.BackgroundColor3 = noxious["default black color"] -- Dark gray
		textBox.BorderSizePixel = 1
		textBox.BorderColor3 = noxious["default white color"]
		textBox.Parent = frame
		textBox.ClipsDescendants = true
		textBox.ZIndex = 3

		-- Update color on Enter
		textBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local r, g, b = textBox.Text:match("(%d+), (%d+), (%d+)")
				if r and g and b then
					local color = Color3.new(r / 255, g / 255, b / 255)
					colorFrame.BackgroundColor3 = color
					if colorCallback then
						colorCallback(color) -- Call the color callback function
					end
				else
					notify("Invalid RGB format. Use R, G, B (e.g., 255, 0, 0)", 5, "error")
				end
			end
		end)
	end

	-- Add image ID textbox (if enabled)
	if imageid then
		local imageTextBox = Instance.new("TextBox")
		imageTextBox.Size = UDim2.new(0, 120, 0, 30)
		imageTextBox.Position = UDim2.new(1, -135, 0.5, -15) -- Right side
		imageTextBox.PlaceholderText = "Image ID"
		imageTextBox.Font = Enum.Font.Nunito
		imageTextBox.PlaceholderColor3 = noxious["default gray color"]
		imageTextBox.TextSize = 20
		imageTextBox.Text = defaultid or "" -- Set default ID if provided
		imageTextBox.TextColor3 = noxious["default white color"]
		imageTextBox.BackgroundColor3 = noxious["default black color"] -- Dark gray
		imageTextBox.BorderSizePixel = 1
		imageTextBox.BorderColor3 = noxious["default white color"]
		imageTextBox.Parent = frame
		imageTextBox.ClipsDescendants = true
		imageTextBox.ZIndex = 3

		-- Validate image ID on Enter
		imageTextBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local id = tonumber(imageTextBox.Text)
				if id and id > 0 then
					if imageCallback then
						imageCallback(id) -- Call the image callback function
					end
				else
					notify("Invalid Image ID. Please enter a valid positive number.", 5, "error")
				end
			end
		end)
	end

	-- Add audio ID textbox (if enabled)
	if audioid then
		local audioTextBox = Instance.new("TextBox")
		audioTextBox.Size = UDim2.new(0, 120, 0, 30)
		audioTextBox.Position = UDim2.new(1, -135, 0.5, -15) -- Right side
		audioTextBox.PlaceholderText = "Audio ID"
		audioTextBox.Font = Enum.Font.Nunito
		audioTextBox.PlaceholderColor3 = noxious["default gray color"]
		audioTextBox.TextSize = 20
		audioTextBox.Text = defaultid or "" -- Set default ID if provided
		audioTextBox.TextColor3 = noxious["default white color"]
		audioTextBox.BackgroundColor3 = noxious["default black color"] -- Dark gray
		audioTextBox.BorderSizePixel = 1
		audioTextBox.BorderColor3 = noxious["default white color"]
		audioTextBox.Parent = frame
		audioTextBox.ClipsDescendants = true
		audioTextBox.ZIndex = 3

		-- Validate audio ID on Enter
		audioTextBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local id = tonumber(audioTextBox.Text)
				if id and id > 0 then
					if audioCallback then
						audioCallback(id) -- Call the audio callback function
					end

					-- Update config and save
					if title == "Notification Sound" then
						config.notificationSound = tostring(id)
					elseif title == "Warning Notification Sound" then
						config.warningSound = tostring(id)
					elseif title == "Error Notification Sound" then
						config.errorSound = tostring(id)
					elseif title == "Click Sound" then
						config.clickSound = tostring(id)
					end
					saveConfig()
				else
					notify("Invalid Audio ID. Please enter a valid positive number.", 5, "error")
				end
			end
		end)
	end

	-- Add theme textbox (if enabled)
	if themetextbox then
		local themeTextBox = Instance.new("TextBox")
		themeTextBox.Size = UDim2.new(0, 120, 0, 30)
		themeTextBox.Position = UDim2.new(1, -135, 0.5, -15) -- Right side
		themeTextBox.PlaceholderText = "Theme Name"
		themeTextBox.Font = Enum.Font.Nunito
		themeTextBox.PlaceholderColor3 = noxious["default gray color"]
		themeTextBox.TextSize = 20
		themeTextBox.Text = defaulttheme or "Default" -- Set default theme if provided
		themeTextBox.TextColor3 = noxious["default white color"]
		themeTextBox.BackgroundColor3 = noxious["default black color"] -- Dark gray
		themeTextBox.BorderSizePixel = 1
		themeTextBox.BorderColor3 = noxious["default white color"]
		themeTextBox.Parent = frame
		themeTextBox.ClipsDescendants = true
		themeTextBox.ZIndex = 3

		-- Validate theme name on Enter
		themeTextBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local theme = themeTextBox.Text
				if theme and theme ~= "" then
					if themeCallback then
						themeCallback(theme) -- Call the theme callback function
					end
				else
					notify("Invalid Theme Name. Please enter a valid theme.", 5, "error")
				end
			end
		end)
	end

	-- Adjust scrolling frame's CanvasSize
	noxious["script settings holder"].CanvasSize = UDim2.new(0, 0, 0.019, #noxious["script settings holder"]:GetChildren() * 70)
end

addScriptSettingFrame(
	"Toggle Simple ESP Text", 
	"Toggles whether you want the ESP to have detailed text.", 
	true, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	false, -- audioid
	"0", -- defaultid
	config.simpleesp and "On" or "Off", -- defaultToggleState from config
	false, -- themetextbox
	nil, -- defaulttheme
	function(isOn) -- toggleCallback
		simpleesp = isOn -- Update the ptlog variable based on the toggle state
		config.simpleesp = isOn
		saveConfig()
	end,
	nil, -- colorCallback
	nil, -- imageCallback
	nil, -- audioCallback
	nil -- themeCallback
)

addScriptSettingFrame(
	"Toggle Clear on FocusLost", 
	"Basically makes it so it toggles the text clearing for when you click on the command bar.", 
	true, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	false, -- audioid
	nil, -- defaultid
	config.ptcleartextbox and "On" or "Off", -- defaultToggleState from config
	false, -- themetextbox
	nil, -- defaulttheme
	function(isOn) -- toggleCallback
		ptcleartextbox = isOn -- Update the ptcleartextbox variable based on the toggle state
		config.ptcleartextbox = isOn
		saveConfig()
		updateCommandBarClearTextOnFocus() -- Update the command bar's ClearTextOnFocus property
	end,
	nil, -- colorCallback
	nil, -- imageCallback
	nil, -- audioCallback
	nil -- themeCallback
)

addScriptSettingFrame(
	"Notification Sound", 
	"Sets the notification sound to the specified audio ID.", 
	false, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	true, -- audioid
	config.notificationSound, -- defaultid from config
	nil, -- defaultToggleState
	false, -- themetextbox
	nil, -- defaulttheme
	nil, -- toggleCallback
	nil, -- colorCallback
	nil, -- imageCallback
	function(audioId) -- audioCallback
		noxious["notification sound"] = "rbxassetid://" .. audioId
		config.notificationSound = tostring(audioId)
		saveConfig()
	end,
	nil -- themeCallback
)

addScriptSettingFrame(
	"Warning Notification Sound", 
	"Sets the warning notification sound to the specified audio ID.", 
	false, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	true, -- audioid
	config.warningSound, -- defaultid from config
	nil, -- defaultToggleState
	false, -- themetextbox
	nil, -- defaulttheme
	nil, -- toggleCallback
	nil, -- colorCallback
	nil, -- imageCallback
	function(audioId) -- audioCallback
		noxious["warning sound"] = "rbxassetid://" .. audioId
		config.warningSound = tostring(audioId)
		saveConfig()
	end,
	nil -- themeCallback
)

addScriptSettingFrame(
	"Error Notification Sound", 
	"Sets the error notification sound to the specified audio ID.", 
	false, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	true, -- audioid
	config.errorSound, -- defaultid from config
	nil, -- defaultToggleState
	false, -- themetextbox
	nil, -- defaulttheme
	nil, -- toggleCallback
	nil, -- colorCallback
	nil, -- imageCallback
	function(audioId) -- audioCallback
		noxious["error sound"] = "rbxassetid://" .. audioId
		config.errorSound = tostring(audioId)
		saveConfig()
	end,
	nil -- themeCallback
)

addScriptSettingFrame(
	"Click Sound", 
	"Sets the click sound to the specified audio ID.", 
	false, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	true, -- audioid
	config.clickSound, -- defaultid from config
	nil, -- defaultToggleState
	false, -- themetextbox
	nil, -- defaulttheme
	nil, -- toggleCallback
	nil, -- colorCallback
	nil, -- imageCallback
	function(audioId) -- audioCallback
		noxious["click sound"].SoundId = "rbxassetid://" .. audioId
		config.clickSound = tostring(audioId)
		saveConfig()
	end,
	nil -- themeCallback
)

if game.PlaceId ~= noxious["test game"] then
	noxious["notification sound"] = "rbxassetid://" .. config.notificationSound
	noxious["warning sound"] = "rbxassetid://" .. config.warningSound
	noxious["error sound"] = "rbxassetid://" .. config.errorSound
	noxious["click sound"].SoundId = "rbxassetid://" .. config.clickSound
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["scroll bar holder 3"] = Instance.new"Frame"
noxious["scroll bar holder 3"].Name = "RightScrollFrame"
noxious["scroll bar holder 3"].Size = UDim2.new(0, 10.9, 0, 242.00000000000003)
noxious["scroll bar holder 3"].BackgroundColor3 = noxious["default black color"]
noxious["scroll bar holder 3"].BorderSizePixel = 0
noxious["scroll bar holder 3"].Position = UDim2.new(0, 584, 0, 48)
noxious["scroll bar holder 3"].BorderColor3 = noxious["default white color"]
noxious["scroll bar holder 3"].BorderSizePixel = 1
noxious["scroll bar holder 3"].ZIndex = 1
noxious["scroll bar holder 3"].Parent = mainframe2
noxious["scroll bar holder 3"].Visible = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["settings button"].MouseButton1Click:Connect(
	function()
		mainframe.Visible = false
		mainframe2.Visible = true
		lastframeseen = "mainframe2"
		noxious["scroll bar holder 3"].Visible = true
		noxious["click sound"]:Play()
	end
)

noxious["main button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
	end
)

noxious["settings button 2"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
	end
)

noxious["main button 2"].MouseButton1Click:Connect(
	function()
		mainframe.Visible = true
		mainframe2.Visible = false
		lastframeseen = "mainframe"
		noxious["scroll bar holder 3"].Visible = false
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame 2"].ZIndex = 18
noxious["top frame profile picture 2"].ZIndex = 18
noxious["top frame text 2"].ZIndex = 18
noxious["top frame subtext 2"].ZIndex = 18
noxious["reposition interface button 2"].ZIndex = 18
noxious["hide interface button 2"].ZIndex = 18
noxious["settings button"].ZIndex = 18
noxious["settings button 2"].ZIndex = 18
noxious["main button"].ZIndex = 18
noxious["main button 2"].ZIndex = 18

noxious["bottom frame 2"].ZIndex = 18
noxious["bottom frame team icon 2"].ZIndex = 18
noxious["bottom frame title 2"].ZIndex = 18
noxious["bottom frame subtitle 2"].ZIndex = 18

noxious["scroll bar holder 3"].ZIndex = 15
noxious["settings holder"].ZIndex = 18
noxious["script settings holder"].ZIndex = 18

noxious["tabs frame 2"].ZIndex = 18
noxious["configuration tab"].ZIndex = 20
noxious["script settings tab"].ZIndex = 19

-------------------------------------------------------------------------------------------------------------------------------

noxious["toggle interface visibility button"].ZIndex = 50
noxious["tivb border"].ZIndex = 49

noxious["tabs frame"].ZIndex = 18
noxious["credits tab"].ZIndex = 19
noxious["information tab"].ZIndex = 19
noxious["changelogs tab"].ZIndex = 19
noxious["commands tab"].ZIndex = 19
noxious["scroll bar holder 2"].ZIndex = 17

noxious["tooltip main frame"].ZIndex = 18
noxious["tooltip command name"].ZIndex= 19
noxious["tooltip command description"].ZIndex= 19

noxious["noxious info button"].ZIndex = 19
noxious["workspace.info button"].ZIndex = 19
noxious["developer note button"].ZIndex = 19
noxious["reload noxious button"].ZIndex = 19
noxious["back to commands button"].ZIndex = 19

noxious["command bar"].ZIndex = 19
noxious["execute button"].ZIndex = 21
noxious["hide"].ZIndex = 20

noxious["top frame"].ZIndex = 18
noxious["top frame profile picture"].ZIndex = 18
noxious["top frame text"].ZIndex = 18
noxious["top frame subtext"].ZIndex = 18
noxious["reposition interface button"].ZIndex = 18
noxious["hide interface button"].ZIndex = 18
noxious["settings button"].ZIndex = 18

noxious["dandy's world workspace.info holder"].ZIndex = 18
noxious["changelogs holder"].ZIndex = 18
noxious["information holder"].ZIndex = 18
noxious["credits holder"].ZIndex = 18

noxious["bottom frame"].ZIndex = 18
noxious["bottom frame team icon"].ZIndex = 18
noxious["bottom frame title"].ZIndex = 18
noxious["bottom frame subtitle"].ZIndex = 18

noxious["command button holder"].ZIndex = 16
noxious["scroll bar holder"].ZIndex = 15

------------------------------------------------------------------------------------------------------------------------------

function intro()

	-- Variables for the screen dimensions
	local screenWidth = noxious["current camera"].ViewportSize.X
	local screenHeight = noxious["current camera"].ViewportSize.Y

	-- Variables for the center position
	local frameWidth = 90
	local frameHeight = 90
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 61

	-- Create a ScreenGui to hold the images
	local screenGui = Instance.new("ScreenGui")
	screenGui.Parent = noxious["noxious screen gui"]

	-- Function to create and tween an image with fading and rotation
	local function createAndTweenImage(imageId, startPosition, endPosition, startRotation, endRotation, duration)
		local image = Instance.new("ImageLabel")
		image.Size = UDim2.new(0, frameWidth, 0, frameHeight)
		image.Position = startPosition
		image.Image = imageId
		image.BackgroundTransparency = 1
		image.ImageTransparency = 1 -- Start fully transparent
		image.Rotation = startRotation -- Start with the initial rotation
		image.Parent = screenGui

		-- Tween the position, rotation, and transparency
		local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

		-- Create the tweens
		local positionTween = noxious["tween service"]:Create(image, tweenInfo, {Position = endPosition})
		local transparencyTween = noxious["tween service"]:Create(image, tweenInfo, {ImageTransparency = 0}) -- Fade to fully visible
		local rotationTween = noxious["tween service"]:Create(image, tweenInfo, {Rotation = endRotation}) -- Rotate to the final orientation

		-- Play the tweens
		positionTween:Play()
		rotationTween:Play()
		wait(0.3) -- Start fading after 0.3 seconds
		transparencyTween:Play()

		-- Wait for all tweens to complete
		spawn(function()
			positionTween.Completed:Wait()
			rotationTween.Completed:Wait()
			transparencyTween.Completed:Wait()
		end)
		wait(2)

		image:Destroy()
	end

	-- Create and animate the four images
	local duration = 2
	spawn(function() 
		createAndTweenImage(
			"rbxassetid://105319046533888",
			UDim2.new(0.5, -frameWidth / 2, 0, -frameHeight), -- Top of screen
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180), -- Randomized initial rotation
			0, -- Final rotation (normal orientation)
			duration
		)
	end)
	spawn(function() 
		createAndTweenImage(
			"rbxassetid://129058777635468",
			UDim2.new(0.5, -frameWidth / 2, 1, 0), -- Bottom of screen
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180), -- Randomized initial rotation
			0, -- Final rotation (normal orientation)
			duration
		)
	end)
	spawn(function() 
		createAndTweenImage(
			"rbxassetid://99947170158417",
			UDim2.new(0, -frameWidth, 0.5, -frameHeight / 2), -- Left of screen
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180), -- Randomized initial rotation
			0, -- Final rotation (normal orientation)
			duration
		)
	end)
	spawn(function() 
		createAndTweenImage(
			"rbxassetid://95135112375096",
			UDim2.new(1, 0, 0.5, -frameHeight / 2), -- Right of screen
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180), -- Randomized initial rotation
			0, -- Final rotation (normal orientation)
			duration
		)
	end)

	-- Continue with the main image loading after all animations
	wait(duration)
	wait(0.2)

	-- Change ImageLabel to ImageButton to support click events
	local imageLabel = Instance.new"ImageButton"	
	imageLabel.Parent = screenGui
	imageLabel.Size = UDim2.new(0, frameWidth, 0, frameHeight)
	imageLabel.Position = UDim2.new(0, centerX, 0, centerY)
	imageLabel.Image = "rbxassetid://100574547642033"
	imageLabel.BackgroundTransparency = 1 -- Optional: Makes the background transparent
	imageLabel.BorderSizePixel = 0
	imageLabel.ImageTransparency = 1 -- Start with image fully transparent
	imageLabel.ZIndex = 9999

	-- Change ImageLabel to ImageButton to support click events
	local imageLabel2 = Instance.new"ImageLabel"	
	imageLabel2.Parent = screenGui
	imageLabel2.Size = UDim2.new(0, frameWidth, 0, frameHeight)
	imageLabel2.Position = UDim2.new(0, centerX, 0, centerY)
	imageLabel2.Image = "rbxassetid://100574547642033"
	imageLabel2.BackgroundTransparency = 1 -- Optional: Makes the background transparent
	imageLabel2.BorderSizePixel = 0
	imageLabel2.ImageTransparency = 0 -- Start with image fully transparent
	imageLabel2.ZIndex = 9999

	-- Create TextLabels
	local textLabel = Instance.new"TextLabel"	
	textLabel.Parent = screenGui
	textLabel.Size = UDim2.new(0, frameWidth, 0, 40)
	textLabel.Position = UDim2.new(0, centerX, 0, centerY - 30)
	textLabel.Text = "Welcome, " .. noxious["local player"].DisplayName .. " (@" .. noxious["local player"].Name .. ")!"
	textLabel.TextStrokeTransparency = 1
	textLabel.TextStrokeColor3 = Color3.new(1,1,1)
	textLabel.Font = Enum.Font.Nunito
	textLabel.BackgroundTransparency = 1
	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.TextSize = 21.6
	textLabel.TextTransparency = 1
	textLabel.ZIndex = 9999

	-- Create a table of random messages
	local messages = {
		"If you're in a run and some of the commands / scripts don't work, try executing them AFTER floor 1.",
		"Team Noxious was founded by unable in 2022.",
		"We started scripting Noxious Hub: dandy's world in September 14th, 2024.",
		"Ace is unable's little sister. We recruited her into the team because she wanted to.",
		"Think you've discovered a bug? Report it to @Noxious on ScriptBlox.",
		"Team Noxious consists of 11 people. Plethora is unable's friend, but he isn't a part of the team.",
		"I HATE TWISTED SPROUT I HATE TWISTED SPROUT I HATE TWISTED SPROUT I HATE TWISTED SPROUT",
		"Waiting for planets to align...",
		"There is a 1 in 100,000,000 chance of this message appearing on your screen.",
		"That '1 in 100,000,000' chance message is a lie.",
		"Hiding more secrets...",
		"This seems like a good place to hide a secret...",
		"Did you hear something?",
		"Dextrocities and Colton was here",
		"Thank you for choosing us!",
		"The Noxious logo was made in Geometry Dash.",
		"Noxious Hub started off as a simple grey rectangle with buttons on top of your screen.",
		"Ace tends to terrorize people with the script with jumpscares. If she joins your server, prepare your ears!",
		"So, what's up?",
		"At first, if you don't succeed, find another way.",
		"The record for most players / toons sitting on top of each other is 7. Can you beat that?",
		"Adding more bugs, hold on.",
		"Do people even read these?",
		"You get a special notification if a Noxious Team Member joins / is in your server.",
		"Sempiterna sit beatae, trinitati gloria. Aequa patri filioque, par decus paraclito.",
		"Faceless shrimpo, or any other dandy's world creepypasta, isn't real. Or are they?",
		"Who said that!?",
		"Remember: Forward 5 Backward 5 Left 4 Right 4 Jump",
	}

	-- Select a random message
	local randomMessage = messages[math.random(1, #messages)]

	-- Create the TextLabel
	local funfact = Instance.new"TextLabel"	
	funfact.Parent = screenGui
	funfact.Size = UDim2.new(0, frameWidth, 0, 40)
	funfact.Position = UDim2.new(0, centerX, 0, centerY - 15)
	funfact.Text = randomMessage
	funfact.TextStrokeTransparency = 1
	funfact.TextStrokeColor3 = Color3.new(1, 1, 1)
	funfact.Font = Enum.Font.Nunito
	funfact.BackgroundTransparency = 1
	funfact.TextColor3 = Color3.fromRGB(255, 255, 255)
	funfact.TextSize = 14
	funfact.TextTransparency = 1
	funfact.ZIndex = 9999

	-- Function to cycle through messages without repeating the last one
	local function cycleMessages()
		local lastMessage 		
		while true do
			-- Create a list of messages excluding the last displayed message
			local availableMessages = {}
			for _, message in ipairs(messages) do
				if message ~= lastMessage then
					table.insert(availableMessages, message)
				end
			end

			-- Select a random message from the available messages
			local randomMessage = availableMessages[math.random(1, #availableMessages)]
			-- Update the TextLabel and store the last message
			funfact.Text = randomMessage
			lastMessage = randomMessage

			-- Wait for 5 seconds before updating again
			wait(3)
		end
	end

	-- Start cycling messages
	spawn(cycleMessages)

	local textLabel2 = Instance.new"TextLabel"	
	textLabel2.Parent = screenGui
	textLabel2.Size = UDim2.new(0, frameWidth, 0, 40)
	textLabel2.Position = UDim2.new(0, centerX, 0, centerY + 65)
	textLabel2.Text = "Noxious Hub: dandy's world - Loading Assets..."
	textLabel2.TextStrokeTransparency = 1
	textLabel2.TextStrokeColor3 = Color3.new(1,1,1)
	textLabel2.Font = Enum.Font.Nunito
	textLabel2.BackgroundTransparency = 1
	textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel2.TextSize = 21.6
	textLabel2.TextTransparency = 1
	textLabel2.ZIndex = 9999

	-- Create TextLabels
	local skip = Instance.new"TextLabel"	
	skip.Parent = screenGui
	skip.Size = UDim2.new(0, frameWidth, 0, 40)
	skip.Position = UDim2.new(0, centerX, 0, centerY + 80)
	skip.Text = "Click on the icon or press Q to skip the loading sequence."
	skip.TextStrokeTransparency = 1
	skip.TextStrokeColor3 = Color3.new(1,1,1)
	skip.Font = Enum.Font.Nunito
	skip.BackgroundTransparency = 1
	skip.TextColor3 = Color3.fromRGB(255, 255, 255)
	skip.TextSize = 14
	skip.TextTransparency = 1
	skip.ZIndex = 9999

	local textLabel3 = Instance.new"TextLabel"	
	textLabel3.Parent = screenGui
	textLabel3.Size = UDim2.new(0, frameWidth, 0, 40)
	textLabel3.Position = UDim2.new(0, centerX, 0, centerY + 25)
	textLabel3.Text = "< ----------------------------                    ---------------------------- >"
	textLabel3.TextStrokeTransparency = 1
	textLabel3.TextStrokeColor3 = Color3.new(1,1,1)
	textLabel3.Font = Enum.Font.Nunito
	textLabel3.BackgroundTransparency = 1
	textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel3.TextSize = 21.6
	textLabel3.TextTransparency = 1
	textLabel3.ZIndex = 0
	textLabel3.ZIndex = 9999

	-- Variables
	local skipRequested = false
	local canSkip = false -- Player cannot skip initially
	local moveButtonCalled = false -- Flag to ensure movebutton() is called only once

	local function fadeIn()	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		local imageTween = noxious["tween service"]:Create(imageLabel, tweenInfo, {ImageTransparency = 1})
		local imageTween2 = noxious["tween service"]:Create(imageLabel2, tweenInfo, {ImageTransparency = 0})
		local textTween1 = noxious["tween service"]:Create(textLabel, tweenInfo, {TextTransparency = 0})
		local textTween2 = noxious["tween service"]:Create(textLabel2, tweenInfo, {TextTransparency = 0})
		local textTween3 = noxious["tween service"]:Create(textLabel3, tweenInfo, {TextTransparency = 0})
		local textTween4 = noxious["tween service"]:Create(funfact, tweenInfo, {TextTransparency = 0.4})
		local textTween5 = noxious["tween service"]:Create(skip, tweenInfo, {TextTransparency = 0.4})

		-- Play all tweens and set the flag after completion
		imageTween:Play()
		imageTween2:Play()
		textTween1:Play()
		textTween2:Play()
		textTween3:Play()
		textTween4:Play()
		textTween5:Play()

		-- Wait for the tweens to finish before allowing skipping
		imageTween.Completed:Wait()
		canSkip = true -- Allow skipping after fade-in completes
	end

	-- Fade out function
	local function fadeOut()
		spawn(function()
			imageLabel:Destroy()
		end)	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		noxious["tween service"]:Create(imageLabel2, tweenInfo, {ImageTransparency = 1}):Play()
		noxious["tween service"]:Create(textLabel, tweenInfo, {TextTransparency = 1}):Play()
		noxious["tween service"]:Create(textLabel2, tweenInfo, {TextTransparency = 1}):Play()
		noxious["tween service"]:Create(textLabel3, tweenInfo, {TextTransparency = 1}):Play()
		noxious["tween service"]:Create(funfact, tweenInfo, {TextTransparency = 1}):Play()
		noxious["tween service"]:Create(skip, tweenInfo, {TextTransparency = 1}):Play()
		wait(0.8)
		imageLabel2:Destroy()
		textLabel:Destroy()
		textLabel2:Destroy()
		textLabel3:Destroy()
		funfact:Destroy()
		skip:Destroy()
	end

	-- Function to handle the fade-out and movebutton call
	local function handleSkipOrComplete()
		if not moveButtonCalled then
			moveButtonCalled = true -- Set the flag to true
			fadeOut()
		end
	end

	-- Start spinning the image asynchronously
	spawn(function()
		while not skipRequested do
			local tweenInfo = TweenInfo.new(1.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, -1)
			local goal = {Rotation = imageLabel.Rotation + 180}
			local tween = noxious["tween service"]:Create(imageLabel, tweenInfo, goal)
			local tween2 = noxious["tween service"]:Create(imageLabel2, tweenInfo, goal)
			tween:Play()
			tween2:Play()
			tween.Completed:Wait()
			tween2.Completed:Wait()
		end
	end)

	local textLocked = false -- Flag to lock text changes

	-- Function to set textLabel2's text with lock protection
	local function setTextLabel2Text(newText)
		if textLocked then return end -- Prevent changes if text is locked

		textLabel2.Text = newText
		if newText == "Noxious Hub: dandy's world - Successfully loaded." then
			textLocked = true -- Lock the text once it reaches the final value
		end
	end

	fadeIn()

	-- Connect key press to skip functionality
	noxious["user input service"].InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end -- Ignore if the input is already processed by the game
		if input.KeyCode == Enum.KeyCode.Q then
			skipRequested = true
			setTextLabel2Text"Noxious Hub: dandy's world - Loading sequence skipped."			
			handleSkipOrComplete()
			spawn(handleSkipOrComplete) -- Run handleSkipOrComplete asynchronously
		end
	end)

	-- Function to ensure script waits until the correct message is displayed
	local function waitForCompletion()
		local targetMessages = {
			["Noxious Hub: dandy's world - Successfully loaded."] = true,
			["Noxious Hub: dandy's world - Loading sequence skipped."] = true
		}

		repeat
			wait() -- Wait until textLabel2.Text matches one of the target messages
		until targetMessages[textLabel2.Text]
	end

	local fadeOutFinished = false

	-- Function to handle skipping
	local function handleSkip()
		if not fadeOutFinished then
			skipRequested = true
			setTextLabel2Text"Noxious Hub: dandy's world - Loading sequence skipped."
			spawn(function() fadeOut() end)
			spawn(handleSkipOrComplete) -- Run handleSkipOrComplete asynchronously
		end
	end

	local soundPlayed = false -- Add a flag to track if the sound has been played

	-- Connect ImageButton's MouseButton1Click event to handleSkip
	imageLabel.MouseButton1Click:Connect(function()
		if not soundPlayed then
			noxious["click sound"]:Play()
			soundPlayed = true -- Set the flag to true after playing the sound
		end
		handleSkip()
	end)

	spawn(function()
		fadeIn()

		local messages = {
			"Noxious Hub: dandy's world - Loading UI...",
			"Noxious Hub: dandy's world - Loading Commands...",
			"Noxious Hub: dandy's world - Loading Scripts...",
			"Noxious Hub: dandy's world - Checking for Character...",
			"Noxious Hub: dandy's world - Checking Environment...",
			"Noxious Hub: dandy's world - Checking Place ID...",
			"Noxious Hub: dandy's world - Validating User...",
		}

		wait(3)

		for _, message in ipairs(messages) do
			if skipRequested then break end
			setTextLabel2Text(message)
			wait(math.random(0.7, 2.4))
		end

		-- Set the final message based on whether skip was requested
		if skipRequested then
			setTextLabel2Text"Noxious Hub: dandy's world - Loading sequence skipped."		
		else
			setTextLabel2Text"Noxious Hub: dandy's world - Successfully loaded."		
		end

		fadeOut()
		spawn(function() fadeOut() end)
		spawn(handleSkipOrComplete) -- Run handleSkipOrComplete asynchronously
	end)

	-- Script below waits for the condition
	waitForCompletion()
	movebutton()

	-------------------------------------------------------------------------------------------------------------------------------

	wait(0)

	-------------------------------------------------------------------------------------------------------------------------------

	local qwelvernotified = {}

	-- qwelver
	local function qwelvernotify(player, isJoining)
		for _, fakeqwelver in ipairs(noxious["qwelver"]) do
			if player.Name == fakeqwelver and not qwelvernotified[player.UserId] then
				if isJoining then
					notify("Qwelver joined your server.", 5, "qwelverishere")
				else
					notify("Qwelver is in your server.", 5, "qwelverishere")
				end
				qwelvernotified[player.UserId] = true
			end
		end
	end

	noxious["players"].PlayerAdded:Connect(function(player)
		qwelvernotify(player, true) -- Pass `true` to indicate the player just joined
	end)

	noxious["players"].PlayerRemoving:Connect(function(player)
		qwelvernotified[player.UserId] = nil
	end)

	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		qwelvernotify(player, false) -- Pass `false` to indicate the script just started
	end

	wait(1.5)

	if game.PlaceId ~= noxious["dandy's world lobby"] 
		and game.PlaceId ~= noxious["dandy's world run"] 
		and game.PlaceId ~= noxious["dandy's world roleplay server"] 
		and game.PlaceId ~= noxious["test game"] then

		notify("You aren't in dandy's world.", 5, "warning")

		wait(1.5)

		notify("This script will not function properly.", 5, "warning")
	end

	-- notify("A new developer note is available.", 5)
end

-------------------------------------------------------------------------------------------------------------------------------

spawn(function() intro() end)

-------------------------------------------------------------------------------------------------------------------------------

spawn(function() populatecredits(noxious["credits"]) end)
spawn(function() populateInformation(noxious["information"]) end)
spawn(function() populateChangelogs(noxious["changelogs"]) end)
spawn(function() populateinfo() end)

function developernote()

	local messageframe = Instance.new"Frame"		
	messageframe.Size = UDim2.new(0, 594, 0, 337)
	messageframe.BackgroundColor3 = noxious["default black color"]
	messageframe.BorderSizePixel = 1
	messageframe.BorderColor3 = noxious["default white color"]
	messageframe.BackgroundTransparency = 0.2
	messageframe.Parent = noxious["noxious screen gui"]
	messageframe.Visible = true

	local messagetext = Instance.new"TextLabel"		
	messagetext.Size = UDim2.new(0, 594, 0, 277.20000000000005)
	messagetext.Position = UDim2.new(0, 0, 0, 11)
	messagetext.BackgroundColor3 = noxious["default black color"]
	messagetext.BorderSizePixel = 1
	messagetext.BorderColor3 = noxious["default white color"]
	messagetext.BackgroundTransparency = 1
	messagetext.Parent = messageframe
	messagetext.Visible = true
	messagetext.TextColor3 = noxious["default white color"]
	messagetext.Font = Enum.Font.Nunito
	messagetext.TextSize = 20
	messagetext.TextScaled = false
	messagetext.TextWrapped = true
	messagetext.Text = "We are proud to announce that we have a Discord server!\n\nWe recommend that you join the server if you would like to keep track with all the updates and new scripts from Team Noxious.\n\nYou can execute the command 'noxiousdiscord' to copy the Discord link.\ndiscord.gg/p63HPpj5G4"

	local textpadding = Instance.new"UIPadding"
	textpadding.PaddingLeft = UDim.new(0, 20)
	textpadding.PaddingRight = UDim.new(0, 20)
	textpadding.Parent = messagetext

	local messagebutton = Instance.new"TextButton"		
	messagebutton.Size = UDim2.new(0, 144, 0, 48)
	messagebutton.Position = UDim2.new(0, (messagetext.Size.X.Offset - messagebutton.Size.X.Offset) / 2, 0, 250)
	messagebutton.BackgroundColor3 = noxious["default black color"]
	messagebutton.BorderSizePixel = 1
	messagebutton.BorderColor3 = noxious["default white color"]
	messagebutton.BackgroundTransparency = 0.2
	messagebutton.Parent = messageframe
	messagebutton.Visible = true
	messagebutton.TextColor3 = noxious["default white color"]
	messagebutton.Font = Enum.Font.Nunito
	messagebutton.TextSize = 20
	messagebutton.TextScaled = false
	messagebutton.Text = "Alright!"

	messagebutton.MouseButton1Click:Connect(
		function()
			messageframe:Destroy()
			mainframe.Visible = true
			noxious["toggle interface visibility button"].Visible = true
			noxious["click sound"]:Play()
		end
	)

	local function centermessage()
		local screenWidth = noxious["current camera"].ViewportSize.X
		local screenHeight = noxious["current camera"].ViewportSize.Y

		local frameWidth = 594			
		local frameHeight = 330			
		local centerX = (screenWidth - frameWidth) / 2
		local centerY = (screenHeight - frameHeight) / 2 - 61

		messageframe.Position = UDim2.new(0, centerX, 0, centerY)
	end
	centermessage()

	local function dragmessage()
		local frame = messageframe
		local dragToggle 			
		local dragSpeed = 0.25
		local dragStart 			
		local startPos 

		local function updatemainframeinput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			noxious["tween service"]:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		noxious["user input service"].InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updatemainframeinput(input)
				end
			end
		end)
	end
	dragmessage()

	local topframe = Instance.new"Frame"		
	topframe.Size = UDim2.new(0.9999000000000001, 0, 0, 52.800000000000004)
	topframe.BackgroundColor3 = noxious["default black color"]
	topframe.BorderColor3 = noxious["default white color"]
	topframe.BorderSizePixel = 1
	topframe.Parent = messageframe

	local closemessage = Instance.new"TextButton"		
	closemessage.Size = UDim2.new(0, 36.300000000000004, 0, 36.300000000000004)
	closemessage.BackgroundColor3 = noxious["default black color"]
	closemessage.Position = UDim2.new(0.9256, 0, 0.157, 0)
	closemessage.BorderColor3 = noxious["default white color"]
	closemessage.BorderSizePixel = 1
	closemessage.TextColor3 = noxious["default white color"]
	closemessage.Font = Enum.Font.Nunito
	closemessage.TextSize = 20
	closemessage.TextScaled = false
	closemessage.Text = "X"
	closemessage.TextXAlignment = Enum.TextXAlignment.Center
	closemessage.TextYAlignment = Enum.TextYAlignment.Center
	closemessage.Parent = topframe

	local reposmessage = Instance.new"TextButton"		
	reposmessage.Size = UDim2.new(0, 36.3, 0, 36.3)
	reposmessage.BackgroundColor3 = noxious["default black color"]
	reposmessage.Position = UDim2.new(0.8489, 0, 0.158, 0)
	reposmessage.BorderColor3 = noxious["default white color"]
	reposmessage.BorderSizePixel = 1
	reposmessage.TextColor3 = noxious["default white color"]
	reposmessage.Font = Enum.Font.Nunito
	reposmessage.TextSize = 20
	reposmessage.TextScaled = false
	reposmessage.Text = "R"
	reposmessage.TextXAlignment = Enum.TextXAlignment.Center
	reposmessage.TextYAlignment = Enum.TextYAlignment.Center
	reposmessage.Parent = topframe

	reposmessage.MouseButton1Click:Connect(
		function()
			centermessage()
			noxious["click sound"]:Play()
		end
	)

	closemessage.MouseButton1Click:Connect(
		function()
			messageframe:Destroy()
			noxious["click sound"]:Play()
			mainframe.Visible = true
			noxious["toggle interface visibility button"].Visible = true
		end
	)

	local messagetopframetxt = Instance.new"TextLabel"		
	messagetopframetxt.Size = UDim2.new(0.55, 0, 1.1, 0)
	messagetopframetxt.Position = UDim2.new(0.019, 8, 0, -2)
	messagetopframetxt.BackgroundTransparency = 1
	messagetopframetxt.TextColor3 = noxious["default white color"]
	messagetopframetxt.Font = Enum.Font.Nunito
	messagetopframetxt.TextSize = 21.6
	messagetopframetxt.TextScaled = false
	messagetopframetxt.Text = "Message / Noxious Hub: dandy's world"
	messagetopframetxt.TextXAlignment = Enum.TextXAlignment.Left
	messagetopframetxt.Parent = topframe

	if mainframe.Visible == true then
		messageframe:Destroy()
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["developer note button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		mainframe.Visible = false
		noxious["toggle interface visibility button"].Visible = false
		developernote()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

function closeallnotificationswithkey(input, gameProcessedEvent)
	if gameProcessedEvent then
		return
	end

	if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.X then
		closeAllNotifications()
	end
end

noxious["user input service"].InputBegan:Connect(closeallnotificationswithkey)

-------------------------------------------------------------------------------------------------------------------------------

print("---------------------------------------------------------------------------")	
print("[Noxious Hub]: Thank you for choosing us!")	
print("---------------------------------------------------------------------------")	
print("[Noxious Hub]: Welcome to Noxious Hub: dandy's world"	)
print("[Noxious Hub]: Script is still in development. Expect bugs."	)
print("---------------------------------------------------------------------------")	
print("[Noxious Hub]: Current version: " .. noxious["version"])
print("---------------------------------------------------------------------------")

if game.PlaceId == noxious["dandy's world lobby"] then
	print("[Noxious Hub]: You are currently in: The lobby.")	
end

if game.PlaceId == noxious["dandy's world run"] then
	print("[Noxious Hub]: You are currently in: A run.")	
end

if game.PlaceId == noxious["dandy's world roleplay server"] then
	print("[Noxious Hub]: You are currently in: A Roleplay Server.")	
end

if game.PlaceId == noxious["test game"] then
	print("[Noxious Hub]: You are currently in: The Test Game.")	
end

if game.PlaceId ~= noxious["test game"] and game.PlaceId ~= noxious["dandy's world run"] and game.PlaceId ~= noxious["dandy's world lobby"] and game.PlaceId ~= noxious["dandy's world roleplay server"] then
	print("[Noxious Hub]: You aren't in dandy's world.")	
end

print("---------------------------------------------------------------------------")	
print("[Noxious Hub]: Hover over a command to view its info.")	
print("---------------------------------------------------------------------------")

-------------------------------------------------------------------------------------------------------------------------------

spawn(function()
	if game.PlaceId == noxious["dandy's world run"] then
		noxious["anti anticheat platform"] = Instance.new("Part")
		noxious["anti anticheat platform"].Size = Vector3.new(2048, 1, 2048)
		noxious["anti anticheat platform"].Position = Vector3.new(0, 135, 0)
		noxious["anti anticheat platform"].Anchored = true
		noxious["anti anticheat platform"].Name = "NoxiousAntiAnticheatPlatform"
		noxious["anti anticheat platform"].Material = Enum.Material.Neon
		noxious["anti anticheat platform"].Color = Color3.new(0, 0, 0)
		noxious["anti anticheat platform"].Parent = workspace
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function bringplayerdown()
	workspace.Gravity = 0
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

	-- Adjust the Y position
	local currentPosition = humanoidRootPart.Position
	humanoidRootPart.CFrame = CFrame.new(currentPosition.X, currentPosition.Y - 3.3, currentPosition.Z)
end

function bringplayerup()
	workspace.Gravity = 196.2
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

	local currentPosition = humanoidRootPart.Position
	humanoidRootPart.CFrame = CFrame.new(currentPosition.X, currentPosition.Y + 3.3, currentPosition.Z)
end

-------------------------------------------------------------------------------------------------------------------------------

local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

function updateCharacterReferences(newCharacter)
	character = newCharacter
	local humanoid = character:WaitForChild"Humanoid"	
end

noxious["local player"].CharacterAdded:Connect(updateCharacterReferences)

-------------------------------------------------------------------------------------------------------------------------------

function tweenplr(targetCFrame, speed)
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

	local distance = (humanoidRootPart.Position - targetCFrame.Position).Magnitude
	local duration = distance / speed

	local tweenInfo = TweenInfo.new(
		duration,
		Enum.EasingStyle.Linear,
		Enum.EasingDirection.InOut
	)

	local goal = { CFrame = targetCFrame }

	local tween = noxious["tween service"]:Create(humanoidRootPart, tweenInfo, goal)
	tween:Play()
	tween.Completed:Wait()
end

-------------------------------------------------------------------------------------------------------------------------------

function reset()
	local sp
	local so

	local function scs(character)
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			sp = humanoidRootPart.Position
			so = humanoidRootPart.Orientation
		end
	end

	local function kc(character)
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.Health = 0
		end
	end

	local function oca(character)
		task.delay(0.2, function()
			if sp and so then
				character:WaitForChild("HumanoidRootPart")
				character:SetPrimaryPartCFrame(CFrame.new(sp) * CFrame.Angles(0, math.rad(so.Y), 0))
			end

			sp = nil
			so = nil
		end)
	end

	local function sktp(player)
		local character = player.Character or player.CharacterAdded:Wait()
		scs(character)
		kc(character)
		player.CharacterAdded:Connect(oca)
	end

	sktp(noxious["local player"])
end

-------------------------------------------------------------------------------------------------------------------------------

function boostfps()
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
	local Lighting = game:GetService("Lighting")
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	if game.PlaceId ~= noxious["test game"] then
		settings().Rendering.QualityLevel = 1
	end
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		task.spawn(function()
			if child:IsA('ForceField') then
				noxious["run service"].Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				noxious["run service"].Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				noxious["run service"].Heartbeat:Wait()
				child:Destroy()
			end
		end)
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

lineThickness = 6
lineLength = 40
gapSize = 17
fadeOutTime = 0.3
activeCrosshairs = {}
crosshairsEnabled = true

function createCrosshair(position)
	if not crosshairsEnabled then
		return
	end

	local crosshairFrame = Instance.new"Frame"		
	crosshairFrame.Size = UDim2.new(0, lineLength * 2 + gapSize, 0, lineLength * 2 + gapSize)
	crosshairFrame.Position = UDim2.new(0, position.X, 0, position.Y)
	crosshairFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	crosshairFrame.BackgroundTransparency = 1
	crosshairFrame.Parent = noxious["noxious screen gui"]
	crosshairFrame.ZIndex = math.huge

	local function createLine(size, pos)
		local line = Instance.new"Frame"			
		line.Size = size
		line.Position = pos
		line.BackgroundColor3 = Color3.new(1, 1, 1)
		line.BorderSizePixel = 0
		line.AnchorPoint = Vector2.new(0.5, 0.5)
		line.Parent = crosshairFrame
		line.ZIndex = 999
		return line
	end

	createLine(UDim2.new(0, lineThickness, 0, lineLength), UDim2.new(0.5, 0, 0, -gapSize / 2))
	createLine(UDim2.new(0, lineThickness, 0, lineLength), UDim2.new(0.5, 0, 1, gapSize / 2))
	createLine(UDim2.new(0, lineLength, 0, lineThickness), UDim2.new(0, -gapSize / 2, 0.5, 0))
	createLine(UDim2.new(0, lineLength, 0, lineThickness), UDim2.new(1, gapSize / 2, 0.5, 0))

	local function spinCrosshair()
		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1)
		local tween = noxious["tween service"]:Create(crosshairFrame, tweenInfo, {Rotation = 360})
		tween:Play()
	end

	spinCrosshair()

	return crosshairFrame
end

function updateCrosshair(crosshairFrame, position)
	crosshairFrame.Position = UDim2.new(0, position.X, 0, position.Y)
end

function fadeOutCrosshair(crosshairFrame)
	local tweenInfo = TweenInfo.new(fadeOutTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)


	for _, line in pairs(crosshairFrame:GetChildren()) do
		local tween = noxious["tween service"]:Create(line, tweenInfo, {BackgroundTransparency = 1})
		tween:Play()
	end

	task.delay(
		fadeOutTime,
		function()
			crosshairFrame:Destroy()
		end
	)
end

function enableMTI()
	crosshairsEnabled = true
end

function disableMTI()
	crosshairsEnabled = false
	for _, crosshair in pairs(activeCrosshairs) do
		fadeOutCrosshair(crosshair)
	end
	activeCrosshairs = {}
end

noxious["user input service"].InputBegan:Connect(
	function(input, processed)
		if
			(input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1) and
			crosshairsEnabled
		then
			local position = input.Position
			local crosshair = createCrosshair(position)
			if crosshair then
				activeCrosshairs[input] = crosshair

				input:GetPropertyChangedSignal"Position":Connect(
					function()
						if activeCrosshairs[input] then
							updateCrosshair(crosshair, input.Position)
						end
					end
				)

				input:GetPropertyChangedSignal"UserInputState":Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							fadeOutCrosshair(crosshair)
							activeCrosshairs[input] = nil
						end
					end
				)
			end
		end
	end
)

disableMTI()

-------------------------------------------------------------------------------------------------------------------------------

function becomeCharacter()	
	local ReplicatedStorage = game:GetService"ReplicatedStorage"		
	local speaker = noxious["local player"]

	local args = {
		[1] = false
	}
	ReplicatedStorage.Events.UpdateSpawnedIn:FireServer(unpack(args))

	local character = speaker.Character
	local savedCFrame

	if character then
		local rootPart = character:FindFirstChild"HumanoidRootPart"			
		if rootPart then
			savedCFrame = rootPart.CFrame
		end
	end

	if character then
		local humanoid = character:FindFirstChildWhichIsA"Humanoid"			
		if humanoid then
			humanoid.Health = 0
		end
	end

	speaker.CharacterAdded:Wait()
	local newCharacter = speaker.Character

	if not newCharacter then return end

	local function setupHumanoid()
		local Cam = noxious["current camera"]
		local Pos = Cam.CFrame
		local Char = newCharacter
		local Human = Char:FindFirstChildWhichIsA"Humanoid"

		if not Human then return end

		local nHuman = Human:Clone()
		nHuman.Parent = Char
		speaker.Character = nil

		nHuman.BreakJointsOnDeath = true
		nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

		Human:Destroy()
		speaker.Character = Char
		Cam.CameraSubject = nHuman
		Cam.CFrame = Pos

		local rootPart = Char:FindFirstChild"HumanoidRootPart"			
		if rootPart and savedCFrame then
			rootPart.CFrame = savedCFrame
		end

		local animateScript = Char:FindFirstChild"Animate"			
		if animateScript then
			animateScript.Disabled = true
			wait()
			animateScript.Disabled = false
		end

		nHuman.Health = nHuman.MaxHealth
	end

	newCharacter:WaitForChild("Humanoid", 5)
	setupHumanoid()

	wait(0)

	local Cam = noxious["current camera"]
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth

	wait(1)

	savedCFrame = nil
end

-------------------------------------------------------------------------------------------------------------------------------

function createNoclip()
	local connections = {} -- Store connections for toggling
	local touchedObjects = {} -- Store touched objects

	-- Function to check if a part should be ignored by noclip
	local function shouldIgnorePart(part)
		-- Ignore visualization spheres (ends with "Sphere")
		if string.match(part.Name, "Sphere$") then
			return true
		end

		-- Ignore MonsterBlockers
		if part.Name == "MonsterBlocker" then
			return true
		end

		-- Ignore parts that belong to the player
		if part:IsDescendantOf(noxious["local player"].Character) then
			return true
		end

		return false
	end

	-- Function to disable collision of the touched object
	local function disableCollision(part)
		if part and part:IsA("BasePart") and not shouldIgnorePart(part) then
			-- Only disable collision if it was originally collidable
			if part.CanCollide then
				part.CanCollide = false
				touchedObjects[part] = true
			end
		end
	end

	-- Function to enable collision of the object
	local function enableCollision(part)
		if part and part:IsA("BasePart") and touchedObjects[part] then
			part.CanCollide = true
			touchedObjects[part] = nil
		end
	end

	-- Function to handle the Touched event
	local function onTouched(otherPart)
		if not otherPart or not otherPart:IsA("BasePart") then return end

		-- Skip ignored parts
		if shouldIgnorePart(otherPart) then return end

		-- Handle Baseplate teleport logic
		if otherPart.Name == "Baseplate" then
			local elevatorsFolder = workspace:FindFirstChild("Elevators")                
			if elevatorsFolder then
				local elevatorModel = elevatorsFolder:FindFirstChildWhichIsA("Model")                    
				if elevatorModel then
					local monsterBlocker = elevatorModel:FindFirstChild("MonsterBlocker")                        
					if monsterBlocker and monsterBlocker:IsA("Part") then
						noxious["local player"].Character:SetPrimaryPartCFrame(monsterBlocker.CFrame)
					end
				end
			end
			return
		end

		-- Regular noclip handling
		if not touchedObjects[otherPart] then
			disableCollision(otherPart)
		end
	end

	-- Function to handle the TouchEnded event
	local function onTouchEnded(otherPart)
		if otherPart and otherPart:IsA("BasePart") then
			enableCollision(otherPart)
		end
	end

	-- Enable noclip for the character
	local function enableNoclip()
		local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

		if not connections.touched then
			connections.touched = humanoidRootPart.Touched:Connect(onTouched)
		end
		if not connections.touchEnded then
			connections.touchEnded = humanoidRootPart.TouchEnded:Connect(onTouchEnded)
		end
	end

	-- Disable noclip
	local function disableNoclip()
		for _, conn in pairs(connections) do
			conn:Disconnect()
		end
		connections = {}

		-- Re-enable collision for all parts that were touched
		for part in pairs(touchedObjects) do
			enableCollision(part)
		end
		touchedObjects = {}
	end

	return enableNoclip, disableNoclip
end

-- Create the noclip functions
local enableNoclip, disableNoclip = createNoclip()

-------------------------------------------------------------------------------------------------------------------------------

local highlightTypes = {
	Monsters = false,
	FakeElevator = false,
	Items = false,
	Players = false,
	Machines = false
}

local billboardTextVisible = true
local highlightVisible = true


local highlightLoopRunning = false

function createBillboardGui(parent, modelName, textColor, generatorStats)
	local billboard = Instance.new"BillboardGui"		
	billboard.Name = "EspBillboardGUIName"
	billboard.Adornee = parent
	billboard.Size = UDim2.new(0, 100, 0, 50)
	billboard.AlwaysOnTop = true
	billboard.Parent = parent

	local label = Instance.new"TextLabel"		
	label.Size = UDim2.new(1, 0, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = modelName
	label.Font = Enum.Font.Nunito
	label.TextColor3 = textColor
	label.TextStrokeTransparency = 0.5
	label.TextStrokeColor3 = Color3.new(1, 1, 1)
	label.TextSize = 21.6
	label.Visible = billboardTextVisible
	label.Parent = billboard
	if generatorStats then
		local currentAmount = generatorStats.CurrentAmount or 0
		local requiredAmount = generatorStats.RequiredAmount or 0
		local generatorText = modelName .. "\n(" .. currentAmount .. " / " .. requiredAmount .. ")"

		label.Text = generatorText
	end
end

function toggleBillboardTextVisibility(visible)
	billboardTextVisible = visible

	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA"BillboardGui"and descendant.Name == "EspBillboardGUIName" then
			local label = descendant:FindFirstChildOfClass"TextLabel"				
			if label then
				label.Visible = visible
			end
		end
	end
end

function toggleHighlightVisibility(visible)
	highlightVisible = visible

	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA"Highlight"then
			descendant.Enabled = visible
		end
	end
end

function tweenMonsterColors(monster)
	local highlight = monster:FindFirstChildOfClass"Highlight"		
	local billboard = monster:FindFirstChild"EspBillboardGUIName"		
	local textLabel = billboard and billboard:FindFirstChildOfClass"TextLabel"

	if highlight then
		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		local highlightTween = noxious["tween service"]:Create(
			highlight,
			tweenInfo,
			{ FillColor = Color3.new(0, 0, 0) }
		)

		if textLabel then
			local textTween = noxious["tween service"]:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = Color3.new(0, 0, 0) }
			)
			textTween:Play()
		end

		highlightTween:Play()
	end
end

function tweenfakeelevatorcolors(fakeele)
	local highlight = fakeele:FindFirstChildOfClass"Highlight"		
	local billboard = fakeele:FindFirstChild"EspBillboardGUIName"		
	local textLabel = billboard and billboard:FindFirstChildOfClass"TextLabel"

	if highlight then
		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		local highlightTween = noxious["tween service"]:Create(
			highlight,
			tweenInfo,
			{ FillColor = Color3.new(0, 0, 0) }
		)

		if textLabel then
			local textTween = noxious["tween service"]:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = Color3.new(0, 0, 0) }
			)
			textTween:Play()
		end

		highlightTween:Play()
	end
end

function tweenEventMonsterColors(monster)
	local highlight = monster:FindFirstChildOfClass("Highlight")		
	local billboard = monster:FindFirstChild("EspBillboardGUIName")		
	local textLabel = billboard and billboard:FindFirstChildOfClass("TextLabel")

	if highlight then
		-- Start from green
		highlight.FillColor = Color3.fromRGB(140, 255, 140)

		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		local highlightTween = noxious["tween service"]:Create(
			highlight,
			tweenInfo,
			{ FillColor = Color3.fromRGB(237, 121, 210) } -- tween to pink
		)
		highlightTween:Play()

		if textLabel then
			textLabel.TextColor3 = Color3.fromRGB(140, 255, 140) -- start from green

			local textTween = noxious["tween service"]:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = Color3.fromRGB(237, 121, 210) } -- tween to pink
			)
			textTween:Play()
		end
	end
end

function tweenItemColors(item)
	-- Safely get the highlight and billboard components
	local highlight = item:FindFirstChildOfClass("Highlight")
	local billboard = item:FindFirstChild("EspBillboardGUIName")
	local textLabel = billboard and billboard:FindFirstChildOfClass("TextLabel")

	-- Only proceed if we have a highlight component
	if highlight then
		local tweenInfo = TweenInfo.new(
			1, -- Time duration
			Enum.EasingStyle.Linear, -- Easing style
			Enum.EasingDirection.InOut, -- Easing direction
			-1, -- Repeat count (-1 for infinite)
			true -- Reverses after completing
		)

		-- Target color (pink in RGB)
		local targetColor = Color3.fromRGB(237, 121, 210)

		-- Create and play highlight tween
		local highlightTween = noxious["tween service"]:Create(
			highlight,
			tweenInfo,
			{ FillColor = targetColor }
		)
		highlightTween:Play()

		-- Create and play text tween if text label exists
		if textLabel then
			local textTween = noxious["tween service"]:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = targetColor }
			)
			textTween:Play()
		end
	end
end

function addHighlights()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")

	-- Monster highlighting
	if highlightTypes.Monsters and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local monstersFolder = model:FindFirstChild("Monsters")
			if monstersFolder then
				for _, monster in pairs(monstersFolder:GetChildren()) do
					if monster:IsA("Model") and not monster:FindFirstChildOfClass("Highlight") then
						local highlight = Instance.new("Highlight")
						local displayText = monster.Name
						local monsterName = monster.Name

						-- Name formatting (same as before)
						if monsterName == "RazzleDazzleMonster" then
							if simpleesp == true then 
								monsterName = "T. R&D"
							else
								monsterName = "Twisted Razzle & Dazzle" 
							end
						else
							monsterName = monsterName:gsub("Monster", "")
							monsterName = monsterName:match("^%s*(.-)%s*$")
							if simpleesp == true then 
								monsterName = "T. " .. monsterName 
							else
								monsterName = "Twisted " .. monsterName 
							end
						end

						displayText = monsterName

						-- Safe color assignment
						highlight.FillColor = getHighlightColor("Monster")
						highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
						highlight.Enabled = highlightVisible
						highlight.Parent = monster

						createBillboardGui(monster, displayText, getHighlightColor("Monster"))

						-- Tween logic (same as before)
						if table.find({"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}, monster.Name) then
							tweenMonsterColors(monster)
						elseif table.find({"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster", "ShellyMonster", "DandyMonster"}, monster.Name) then
							highlight.FillColor = Color3.fromRGB(140, 255, 140)
							tweenEventMonsterColors(monster)
						end
					end
				end
			end
		end
	end

	-- Fake Elevator highlighting
	if highlightTypes.FakeElevator and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				local fakeElevator = freeArea:FindFirstChild("FakeElevator")
				if fakeElevator and fakeElevator:IsA("Model") and not fakeElevator:FindFirstChildOfClass("Highlight") then
					local highlight = Instance.new("Highlight")
					-- Safe color assignment
					highlight.FillColor = getHighlightColor("FakeElevator")
					highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
					highlight.Enabled = true
					highlight.Parent = fakeElevator

					local displayText = ""
					if simpleesp == true then 
						displayText = "F. Ele" 
					else 
						displayText = "Fake Elevator" 
					end

					createBillboardGui(fakeElevator, displayText, getHighlightColor("FakeElevator"))
					tweenfakeelevatorcolors(fakeElevator)
				end
			end
		end
	end

	-- Item highlighting
	if highlightTypes.Items and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local itemsFolder = model:FindFirstChild("Items")
			if itemsFolder then
				for _, item in pairs(itemsFolder:GetChildren()) do
					if item:IsA("Model") and not item:FindFirstChildOfClass("Highlight") then
						local highlight = Instance.new("Highlight")
						local displayText = item.Name
						local formattedText = ""

						-- Research Capsule handling (same as before)
						if item.Name == "ResearchCapsule" then
							function fetchMonsterName()
								local prompt = item:FindFirstChild("Prompt")
								if prompt then
									local monsterString = prompt:FindFirstChild("Monster")
									if monsterString and monsterString:IsA("StringValue") then
										local monsterName = monsterString.Value
										if monsterName == "RazzleDazzleMonster" then
											if simpleesp then 
												monsterName = "R&D"
											else 
												monsterName = "Razzle & Dazzle"
											end
										end

										monsterName = monsterName:gsub("Monster", "")
										monsterName = monsterName:match("^%s*(.-)%s*$")

										if simpleesp then
											return "T. " .. monsterName
										else
											return "Twisted " .. monsterName
										end
									end
								end
								return nil
							end

							local monsterName = fetchMonsterName()
							if not monsterName then
								task.delay(0.1, function()
									monsterName = fetchMonsterName()
									if monsterName then
										displayText = simpleesp and "Capsule" or "Research Capsule (" .. monsterName .. ")"
										if item:FindFirstChild("EspBillboardGUIName") then
											local billboard = item.EspBillboardGUIName:FindFirstChildOfClass("TextLabel")
											if billboard then
												billboard.Text = displayText
											end
										end
									end
								end)
							else
								displayText = simpleesp and "Capsule" or "Research Capsule (" .. monsterName .. ")"
							end
						end

						-- Format item name with spacing
						for i = 1, #item.Name do
							local char = item.Name:sub(i, i)
							if char:match("%u") and i > 1 then
								formattedText = formattedText .. " " .. char
							else
								formattedText = formattedText .. char
							end
						end

						if item.Name ~= "ResearchCapsule" then
							displayText = formattedText
						end

						if item.Name == "RazzleDazzle" then
							displayText = simpleesp and "R&D" or "Razzle & Dazzle"
						elseif item.Name == "HolidayCollectibleItem" or item.Name == "Holiday Collectible Item" then
							displayText = "Basket"
						end

						-- Handle specific Research Capsule names
						local shouldTween = false
						if displayText == "Research Capsule (Twisted Eggson)" or
							displayText == "Research Capsule (Twisted Cocoa)" or
							displayText == "Research Capsule (Twisted Bassie)" or
							displayText == "Research Capsule (Twisted Flyte)" then
							shouldTween = true
						end

						-- Set highlight and billboard GUI
						if item.Name == "FakeCapsule" then
							highlight.FillColor = Color3.fromRGB(255, 255, 0)
							createBillboardGui(item, displayText, Color3.fromRGB(255, 255, 0))
						elseif item.Name == "HealthKit" or item.Name == "Bandage" then
							highlight.FillColor = Color3.fromRGB(176, 38, 255)
							createBillboardGui(item, displayText, Color3.fromRGB(176, 38, 255))
						elseif item.Name == "JumperCable" or item.Name == "Valve" then
							highlight.FillColor = Color3.fromRGB(255, 100, 0)
							createBillboardGui(item, displayText, Color3.fromRGB(255, 100, 0))
						elseif item.Name == "HolidayCollectibleItem" or item.Name == "Holiday Collectible Item" or item.Name == "Basket" then
							spawn(function() tweenItemColors(item) end)
							highlight.FillColor = Color3.fromRGB(140, 255, 140)
							createBillboardGui(item, displayText, Color3.fromRGB(140, 255, 140))
						elseif shouldTween then
							spawn(function() tweenItemColors(item) end)
							highlight.FillColor = Color3.fromRGB(140, 255, 140)
							createBillboardGui(item, displayText, Color3.fromRGB(140, 255, 140))
						else
							highlight.FillColor = Color3.fromRGB(0, 255, 0)
							createBillboardGui(item, displayText, Color3.fromRGB(0, 255, 0))
						end


						highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
						highlight.Enabled = highlightVisible
						highlight.Parent = item
					end
				end
			end
		end
	end

	-- Player highlighting
	if highlightTypes.Players then
		for _, player in pairs(noxious["players"]:GetPlayers()) do
			if player ~= noxious["local player"] and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local highlight = player.Character:FindFirstChildOfClass("Highlight")
				if not highlight then
					highlight = Instance.new("Highlight")
					-- Safe color assignment
					highlight.FillColor = getHighlightColor("Player")
					highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
					highlight.Enabled = highlightVisible
					highlight.Parent = player.Character

					local billboardText
					if simpleesp == true then
							billboardText = player.DisplayName
						else
							billboardText = "(@" .. player.Name .. ")\n" .. player.DisplayName
						end
					end

					createBillboardGui(player.Character, billboardText, getHighlightColor("Player"))
				end
			end
		end
	end

	local function roundToInteger(num)
		return math.floor(num + 0.5)
	end

	-- Machine highlighting
	if highlightTypes.Machines and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local generatorsFolder = model:FindFirstChild("Generators")                
			if generatorsFolder then
				for _, generator in pairs(generatorsFolder:GetChildren()) do
					if generator:IsA("Model") and not generator:FindFirstChildOfClass("Highlight") then
						local highlight = Instance.new("Highlight")                            
						local textColor = getHighlightColor("Machine")
						local fillColor = getHighlightColor("Machine")
						local statsFolder = generator:FindFirstChild("Stats")                            
						local completed = statsFolder and statsFolder:FindFirstChild("Completed")                            
						local currentAmount = statsFolder and statsFolder:FindFirstChild("CurrentAmount")                            
						local requiredAmount = statsFolder and statsFolder:FindFirstChild("RequiredAmount")                            
						local connie = statsFolder and statsFolder:FindFirstChild("Connie")

						local function updateGeneratorAppearance()
							if connie and connie.Value == true then
								fillColor = getHighlightColor("PosessedMachine")
								textColor = getHighlightColor("PosessedMachine")
							elseif completed and completed.Value == true then
								fillColor = getHighlightColor("CompletedMachine")
								textColor = getHighlightColor("CompletedMachine")
							else
								fillColor = getHighlightColor("Machine")
								textColor = getHighlightColor("Machine")
							end

							highlight.FillColor = fillColor
							local billboard = generator:FindFirstChild("EspBillboardGUIName")                                
							if billboard then
								local label = billboard:FindFirstChildOfClass("TextLabel")                                    
								if label then
									label.TextColor3 = textColor
									local generatorName = generator.Name
									if connie and connie.Value == true then
										generatorName = generatorName .. " (Possessed)"
									end
									label.Text = generatorName .. "\n(" .. (currentAmount and roundToInteger(currentAmount.Value) or 0) .. " / " .. (requiredAmount and requiredAmount.Value or 0) .. ")"
								end
							end
						end

						updateGeneratorAppearance()

						-- Connect change events (same as before)
						if connie then
							connie:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if completed then
							completed:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if currentAmount then
							currentAmount:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if requiredAmount then
							requiredAmount:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
						highlight.Enabled = highlightVisible
						highlight.Parent = generator

						createBillboardGui(generator, generator.Name, textColor, {
							CurrentAmount = currentAmount and roundToInteger(currentAmount.Value) or 0,
							RequiredAmount = requiredAmount and requiredAmount.Value or 0
						})
					end
				end
			end
		end
	end

function removeHighlights()
	local currentRoom = workspace:FindFirstChild"CurrentRoom"

	if currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			-- Remove highlights for Monsters, Items, and Generators
			for _, folderName in pairs{"Monsters", "Items", "Generators"} do
				local folder = model:FindFirstChild(folderName)
				if folder then
					for _, obj in pairs(folder:GetChildren()) do
						local highlight = obj:FindFirstChildOfClass"Highlight"							
						if highlight then
							highlight:Destroy()
						end
						local billboard = obj:FindFirstChild"EspBillboardGUIName"							
						if billboard then
							billboard:Destroy()
						end
					end
				end
			end

			-- Remove highlights for FakeElevator
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				local fakeElevator = freeArea:FindFirstChild("FakeElevator")
				if fakeElevator and fakeElevator:IsA("Model") then
					local highlight = fakeElevator:FindFirstChildOfClass"Highlight"
					if highlight then
						highlight:Destroy()
					end
					local billboard = fakeElevator:FindFirstChild"EspBillboardGUIName"
					if billboard then
						billboard:Destroy()
					end
				end
			end
		end
	end

	-- Remove highlights for Players
	for _, player in pairs(noxious["players"]:GetPlayers()) do
		if player.Character then
			local highlight = player.Character:FindFirstChildOfClass"Highlight"				
			if highlight then
				highlight:Destroy()
			end
			local billboard = player.Character:FindFirstChild"EspBillboardGUIName"				
			if billboard then
				billboard:Destroy()
			end
		end
	end
end

function startHighlightLoop()
	if highlightLoopRunning then return end
	highlightLoopRunning = true

	noxious["run service"].Stepped:Connect(function()
		if highlightLoopRunning then
			addHighlights()
		end
	end)
end

function stopHighlightLoop()
	highlightLoopRunning = false
	removeHighlights()
end

function enableEsp(type)
	highlightTypes[type] = true
	startHighlightLoop()
end

function disableEsp(type)
	highlightTypes[type] = false

	local allDisabled = true
	for _, isEnabled in pairs(highlightTypes) do
		if isEnabled then
			allDisabled = false
			break
		end
	end

	if allDisabled then
		stopHighlightLoop()
	else
		removeHighlights()
	end
end

function hideesptext()
	toggleBillboardTextVisibility(false)
	toggleHighlightVisibility(true)
end

function showesptext()
	toggleBillboardTextVisibility(true)
	if toggleHighlightVisibility(true) then
		toggleBillboardTextVisibility(false)
	end
end

function hideesp()
	toggleHighlightVisibility(false)
	toggleBillboardTextVisibility(true)
end

function showesp()
	toggleHighlightVisibility(true)
	if toggleBillboardTextVisibility(true) then
		toggleHighlightVisibility(false)
	end
end

function enableAllEsp()
	for type in pairs(highlightTypes) do
		highlightTypes[type] = true
	end
	startHighlightLoop()
end

function disableAllEsp()
	for type in pairs(highlightTypes) do
		highlightTypes[type] = false
	end
	stopHighlightLoop()
end

-------------------------------------------------------------------------------------------------------------------------------

-- Tracer Settings
local tracerEnabled = true
local tracerGui = nil
local tracerLines = {}

local tracerTypes = {
	Players = true,
	Monsters = true,
	Items = true,
	Machines = true,
	FakeElevator = true
}

-- Tracer Settings
local tracerEnabled = true
local tracerGui = nil
local tracerLines = {}
local tracerLastUpdate = 0
local updateInterval = 0.01

-- Function to get model center
function getModelCenter(model)
	if not model or not model:IsA("Model") then return nil end

	local parts = {}
	for _, part in pairs(model:GetDescendants()) do
		if part:IsA("BasePart") then
			table.insert(parts, part)
		end
	end
	if #parts == 0 then return nil end

	local totalPosition = Vector3.new(0, 0, 0)
	for _, part in pairs(parts) do
		totalPosition = totalPosition + part.Position
	end
	return totalPosition / #parts
end

-- Function to set up tracer GUI
function setupTracerGui()
	if tracerGui then return end
	tracerGui = Instance.new("ScreenGui")
	tracerGui.Name = "TracerGui"
	tracerGui.ResetOnSpawn = false
	tracerGui.Parent = noxious["local player"]:FindFirstChild("PlayerGui") or noxious["local player"]:WaitForChild("PlayerGui")
end

-- Update the getHighlightColor function to match tween colors
function getHighlightColor2(type, monsterName, objectName)
	local tweenProgress = math.abs(math.sin(tick() * 1.3)) -- Oscillates between 0 and 1

	-- Special monsters (Group 1 - Red to Black)
	local redBlackMonsters = {"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}
	if monsterName and table.find(redBlackMonsters, monsterName) then
		return Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
	end

	-- Special monsters (Group 2 - Light Green to Light Pink)
	local eventMonsters = {"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster"}
	if monsterName and table.find(eventMonsters, monsterName) then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	end

	-- Fake Elevator (Yellow to Black)
	if type == "FakeElevator" then
		return Color3.fromRGB(255, 255, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
	end

	-- Items that should use light green to light pink tween
	local tweenItems = {
		"HolidayCollectibleItem",
		"Holiday Collectible Item", 
		"Basket",
		"ResearchCapsule"
	}

	if objectName and table.find(tweenItems, objectName) then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	end

	-- Default cases
	if type == "Monster" then
		return Color3.new(1, 0, 0) -- Default red for other monsters
	elseif type == "FakeElevator" then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	elseif type == "Player" then
		return Color3.fromRGB(0, 162, 255) -- Blue for players
	elseif type == "Machine" then
		return Color3.fromRGB(150, 150, 150) -- Gray for machines
	elseif type == "PosessedMachine" then
		return Color3.fromRGB(0, 255, 255) -- Cyan for possessed
	elseif type == "CompletedMachine" then
		return Color3.fromRGB(255, 0, 255) -- Magenta for completed
	elseif type == "Heals" then
		return Color3.fromRGB(176, 38, 255) -- Purple for health items
	elseif type == "ExtractionItems" then
		return Color3.fromRGB(255, 100, 0) -- Orange for extraction items
	elseif type == "FakeCapsule" then
		return Color3.fromRGB(255, 255, 0) -- Yellow for fake capsules
	else
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress) -- Default tween
	end
end

-- Update the tracer color functions to use the same tween
function getGeneratorColor(generator)
	if not generator then return getHighlightColor("Machine") end
	local statsFolder = generator:FindFirstChild("Stats")
	if not statsFolder then return getHighlightColor("Machine") end

	local completed = statsFolder:FindFirstChild("Completed")
	local connie = statsFolder:FindFirstChild("Connie")

	if connie and connie.Value == true then
		return getHighlightColor("PosessedMachine")
	elseif completed and completed.Value == true then
		return getHighlightColor("CompletedMachine")
	else
		return getHighlightColor("Machine")
	end
end

-- Update the getHighlightColor function to match tween colors
function getItemColor(type, monsterName, objectName)
	local tweenProgress = math.abs(math.sin(tick() * 1.3)) -- Oscillates between 0 and 1

	-- Special monsters (Group 1 - Red to Black)
	local redBlackMonsters = {"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}
	if monsterName and table.find(redBlackMonsters, monsterName) then
		return Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
	end

	-- Special monsters (Group 2 - Light Green to Light Pink)
	local eventMonsters = {"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster"}
	if monsterName and table.find(eventMonsters, monsterName) then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	end

	-- Fake Elevator (Yellow to Black)
	if type == "FakeElevator" then
		return Color3.fromRGB(255, 255, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
	end

	-- Items that should use light green to light pink tween
	local tweenItems = {
		"HolidayCollectibleItem",
		"Holiday Collectible Item", 
		"Basket"
	}

	-- Only apply tween to ResearchCapsule if it's from specific monsters
	if objectName == "ResearchCapsule" then
		local monsterName = fetchMonsterName()
		if monsterName and (
			string.find(monsterName, "Eggson") or
				string.find(monsterName, "Cocoa") or
				string.find(monsterName, "Bassie") or
				string.find(monsterName, "Flyte")
			) then
			return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
		else
			-- Default color for other ResearchCapsules
			return Color3.fromRGB(0, 0, 255) -- Orange like ExtractionItems
		end
	elseif objectName and table.find(tweenItems, objectName) then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	end

	-- Default cases
	if type == "Monster" then
		return Color3.new(1, 0, 0) -- Default red for other monsters
	elseif type == "FakeElevator" then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	elseif type == "Player" then
		return Color3.fromRGB(0, 162, 255) -- Blue for players
	elseif type == "Machine" then
		return Color3.fromRGB(150, 150, 150) -- Gray for machines
	elseif type == "PosessedMachine" then
		return Color3.fromRGB(0, 255, 255) -- Cyan for possessed
	elseif type == "CompletedMachine" then
		return Color3.fromRGB(255, 0, 255) -- Magenta for completed
	elseif type == "Heals" then
		return Color3.fromRGB(176, 38, 255) -- Purple for health items
	elseif type == "ExtractionItems" then
		return Color3.fromRGB(255, 100, 0) -- Orange for extraction items
	elseif type == "FakeCapsule" then
		return Color3.fromRGB(255, 255, 0) -- Yellow for fake capsules
	else
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress) -- Default tween
	end
end

local function fetchMonsterName(item)
	local prompt = item:FindFirstChild("Prompt")
	if prompt then
		local monsterString = prompt:FindFirstChild("Monster")
		if monsterString and monsterString:IsA("StringValue") then
			local monsterName = monsterString.Value
			if monsterName == "RazzleDazzleMonster" then
				if simpleesp then 
					monsterName = "R&D"
				else 
					monsterName = "Razzle & Dazzle"
				end
			end

			monsterName = monsterName:gsub("Monster", "")
			monsterName = monsterName:match("^%s*(.-)%s*$")

			if simpleesp then
				return "T. " .. monsterName
			else
				return "Twisted " .. monsterName
			end
		end
	end
	return nil
end

-- Update the updateTracers function to use these color functions
function updateTracers()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if tick() - tracerLastUpdate < updateInterval then return end
	tracerLastUpdate = tick()

	if not tracerEnabled then return end
	setupTracerGui()

	local targets = {}

	-- Add players (only target noxious["players"].Players)
	if tracerTypes.Players then
		for _, player in pairs(noxious["players"]:GetPlayers()) do
			if player ~= noxious["local player"] then
				local character = player.Character
				if character then
					local center = getModelCenter(character)
					if center then
						local screenPoint, onScreen = noxious["current camera"]:WorldToScreenPoint(center)
						if onScreen then
							table.insert(targets, {
								position = Vector2.new(screenPoint.X, screenPoint.Y),
								color = getHighlightColor2("Player") -- Blue for players
							})
						end
					end
				end
			end
		end
	end

	-- Monsters with all special cases preserved
	if tracerTypes.Monsters and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local monstersFolder = model:FindFirstChild("Monsters")
			if monstersFolder then
				for _, monster in pairs(monstersFolder:GetChildren()) do
					if monster:IsA("Model") then
						local center = getModelCenter(monster)
						if center then
							local screenPoint, onScreen = noxious["current camera"]:WorldToScreenPoint(center)
							if onScreen then
								local color
								local monsterName = monster.Name

								-- Group 1: Red to Black monsters
								if table.find({"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}, monsterName) then
									local tweenProgress = math.abs(math.sin(tick() * 1.3))
									color = Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)

									-- Group 2: Light Green to Light Pink monsters
								elseif table.find({"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster"}, monsterName) then
									local tweenProgress = math.abs(math.sin(tick() * 1.3))
									color = Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)

									-- Default monster color
								else
									color = Color3.new(1, 0, 0) -- Solid red
								end

								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = color
								})
							end
						end
					end
				end
			end
		end
	end

	function getItemColor(item)
		if not item then 
			local tweenProgress = math.abs(math.sin(tick() * 1.4))
			return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
		end

		local tweenItems = {
			"HolidayCollectibleItem",
			"Holiday Collectible Item",
			"Basket",
		}

		-- Check if it's a ResearchCapsule with specific monsters
		if item.Name == "ResearchCapsule" then
			local prompt = item:FindFirstChild("Prompt")
			if prompt then
				local monsterString = prompt:FindFirstChild("Monster")
				if monsterString and monsterString:IsA("StringValue") then
					local monsterName = monsterString.Value
					monsterName = monsterName:gsub("Monster", ""):match("^%s*(.-)%s*$") -- Clean it up

					if monsterName == "Eggson" or monsterName == "Cocoa" or monsterName == "Bassie" or monsterName == "Flyte" then
						local tweenProgress = math.abs(math.sin(tick() * 1.4))
						return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
					end
				end
			end
		end

		-- Normal tweened items
		if table.find(tweenItems, item.Name) then
			local tweenProgress = math.abs(math.sin(tick() * 1.4))
			return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
		end

		-- Static colored items
		local itemColors = {
			FakeCapsule = Color3.fromRGB(255, 255, 0), -- Yellow
			HealthKit = Color3.fromRGB(176, 38, 255), -- Purple
			Bandage = Color3.fromRGB(176, 38, 255), -- Purple
			JumperCable = Color3.fromRGB(255, 100, 0), -- Orange
			Valve = Color3.fromRGB(255, 100, 0) -- Orange
		}

		return itemColors[item.Name] or Color3.fromRGB(0, 255, 0) -- Default green
	end

	-- Updated item tracer section to use getItemColor
	if tracerTypes.Items and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local itemsFolder = model:FindFirstChild("Items")
			if itemsFolder then
				for _, item in pairs(itemsFolder:GetChildren()) do
					if item:IsA("Model") then
						local center = getModelCenter(item)
						if center then
							local screenPoint, onScreen = noxious["current camera"]:WorldToScreenPoint(center)
							if onScreen then
								-- This will now return the exact same tween colors as the highlights
								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = getItemColor(item)
								})
							end
						end
					end
				end
			end
		end
	end

	-- Add machines (generators) from CurrentRoom.Generators folder
	if tracerTypes.Machines and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local generatorsFolder = model:FindFirstChild("Generators")
			if generatorsFolder then
				for _, generator in pairs(generatorsFolder:GetChildren()) do
					if generator:IsA("Model") then
						local center = getModelCenter(generator)
						if center then
							local screenPoint, onScreen = noxious["current camera"]:WorldToScreenPoint(center)
							if onScreen then
								local color = getGeneratorColor(generator) -- Get generator-specific color
								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = color
								})
							end
						end
					end
				end
			end
		end
	end

	-- Fake Elevator (now with yellow to black tween)
	if tracerTypes.FakeElevator and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				local fakeElevator = freeArea:FindFirstChild("FakeElevator")
				if fakeElevator and fakeElevator:IsA("Model") then
					local center = getModelCenter(fakeElevator)
					if center then
						local screenPoint, onScreen = noxious["current camera"]:WorldToScreenPoint(center)
						if onScreen then
							local tweenProgress = math.abs(math.sin(tick() * 1.4))
							local color = Color3.fromRGB(255, 255, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
							table.insert(targets, {
								position = Vector2.new(screenPoint.X, screenPoint.Y),
								color = color
							})
						end
					end
				end
			end
		end
	end

	if #targets > #tracerLines then
		for i = #tracerLines + 1, #targets do
			local line = Instance.new("Frame")
			line.Name = "TracerLine"
			line.AnchorPoint = Vector2.new(0.5, 0.5)
			line.BackgroundTransparency = 0.3
			line.BackgroundColor3 = Color3.new(1, 1, 1)
			line.BorderSizePixel = 1
			line.BorderColor3 = Color3.new(1, 1, 1)
			line.Parent = tracerGui
			table.insert(tracerLines, line)
		end
	end

	-- Update existing lines
	for i, line in pairs(tracerLines) do
		local target = targets[i]
		if not target then
			line:Destroy()
			table.remove(tracerLines, i)
		else
			local origin = Vector2.new(noxious["current camera"].ViewportSize.X / 2, noxious["current camera"].ViewportSize.Y * 0.9)
			local destination = target.position

			local position = (origin + destination) / 2
			line.Position = UDim2.new(0, position.X, 0, position.Y)

			local length = (origin - destination).Magnitude
			line.Size = UDim2.new(0, length, 0, 1) -- Line width

			line.Rotation = math.deg(math.atan2(destination.Y - origin.Y, destination.X - origin.X))
			line.BackgroundColor3 = target.color

			line.BackgroundTransparency = 0.3 -- Reset to default transparency
		end
	end
end

-- Function to enable tracers
function enableTracer(type)
	if tracerTypes[type] ~= nil then
		tracerTypes[type] = true
		tracerEnabled = true
	end
end

-- Function to disable tracers
function disableTracer(type)
	if tracerTypes[type] ~= nil then
		tracerTypes[type] = false
	end
end

-- Function to toggle tracers
function toggleTracers(enabled)
	tracerEnabled = enabled
	if not enabled then
		for _, line in pairs(tracerLines) do
			line:Destroy()
		end
		tracerLines = {}
	end
end

-- Connect to RenderStepped to update tracers every frame (with optimized update rate)
noxious["run service"].Heartbeat:Connect(updateTracers)

disableTracer("Monsters")
disableTracer("FakeElevator")
disableTracer("Machines")
disableTracer("Items")
disableTracer("Players")

toggleTracers(false)

-------------------------------------------------------------------------------------------------------------------------------

local visualizervisibilitysettings = {
	KillRadius = true,
	InstantRadius = true,
	VisionRadius = true,
	HearingRadius = true
}

-- Store active monster visualizations
local activeVisualizations = {}

-- Function to create a sphere in Workspace
function createsphere(radius, color, name)
	local sphere = Instance.new("Part")
	sphere.Name = name
	sphere.Shape = Enum.PartType.Ball
	sphere.Size = Vector3.new(radius * 2, radius * 2, radius * 2)
	sphere.Transparency = 0
	sphere.Color = color
	sphere.Material = Enum.Material.ForceField
	sphere.CanCollide = false
	sphere.Anchored = true
	sphere.CastShadow = false
	sphere.Parent = workspace
	return sphere
end

function getAnchorPart(monster)
	return monster:FindFirstChild("HumanoidRootPart") 
		or monster.PrimaryPart 
		or monster:FindFirstChildWhichIsA("BasePart")
end

function updsv(monster)
	local visData = activeVisualizations[monster]
	if not visData then return end

	for radiusType, sphere in pairs(visData.spheres) do
		if visualizervisibilitysettings[radiusType] ~= nil then
			sphere.Transparency = visualizervisibilitysettings[radiusType] and 0 or 1
		end
	end
end

function showradius(radiusType)
	if visualizervisibilitysettings[radiusType] ~= nil then
		visualizervisibilitysettings[radiusType] = true
		for monster, _ in pairs(activeVisualizations) do
			if monster:IsDescendantOf(game) then
				updsv(monster)
			end
		end
		return true
	end
	return false
end

function hideRadius(radiusType)
	if visualizervisibilitysettings[radiusType] ~= nil then
		visualizervisibilitysettings[radiusType] = false
		for monster, _ in pairs(activeVisualizations) do
			if monster:IsDescendantOf(game) then
				updsv(monster)
			end
		end
		return true
	end
	return false
end

function cleanupVisualization(monster)
	local visData = activeVisualizations[monster]
	if visData then
		-- Disconnect all connections
		for _, conn in ipairs(visData.connections) do
			conn:Disconnect()
		end

		-- Destroy all spheres
		for _, sphere in pairs(visData.spheres) do
			sphere:Destroy()
		end

		activeVisualizations[monster] = nil
	end
end

function visualizemonsterradii(monster)
	-- Clean up any existing visualization first
	cleanupVisualization(monster)

	local chaser = monster:FindFirstChild("Chaser")
	if not chaser then return end

	local killRadius = chaser:FindFirstChild("KillRadius")
	local instantRadius = chaser:FindFirstChild("InstantRadius")
	local visionRadius = chaser:FindFirstChild("VisionRadius")
	local hearingRadius = chaser:FindFirstChild("HearingRadius")

	local anchorPart = getAnchorPart(monster)
	if not anchorPart then return end

	-- Create visualization data
	local visData = {
		spheres = {},
		connections = {},
		anchorPart = anchorPart
	}
	activeVisualizations[monster] = visData

	-- Create spheres in Workspace
	if killRadius then
		visData.spheres.KillRadius = createsphere(killRadius.Value, Color3.new(1, 0, 0), monster.Name.."_KillRadiusSphere")
	end
	if instantRadius then
		visData.spheres.InstantRadius = createsphere(instantRadius.Value, Color3.new(1, 0.5, 0), monster.Name.."_InstantRadiusSphere")
	end
	if visionRadius then
		visData.spheres.VisionRadius = createsphere(visionRadius.Value, Color3.new(1, 1, 0), monster.Name.."_VisionRadiusSphere")
	end
	if hearingRadius then
		visData.spheres.HearingRadius = createsphere(hearingRadius.Value, Color3.new(0, 1, 0), monster.Name.."_HearingRadiusSphere")
	end

	-- Update sphere positions
	local function updatePositions()
		for _, sphere in pairs(visData.spheres) do
			if sphere and sphere.Parent then
				sphere.Position = anchorPart.Position
			end
		end
	end

	-- Heartbeat connection for position updates
	table.insert(visData.connections, noxious["run service"].Heartbeat:Connect(updatePositions))

	-- Clean up if monster is destroyed
	table.insert(visData.connections, monster.AncestryChanged:Connect(function(_, parent)
		if not monster:IsDescendantOf(game) then
			cleanupVisualization(monster)
		end
	end))

	-- Initial update
	updsv(monster)
	updatePositions()
end

-- Main initialization
if game.PlaceId == noxious["dandy's world run"] then
	-- Handle existing monsters
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local monstersFolder = model:FindFirstChild("Monsters")
			if monstersFolder then
				for _, monster in pairs(monstersFolder:GetChildren()) do
					if monster:IsA("Model") then
						task.spawn(visualizemonsterradii, monster)
					end
				end
			end
		end
	end

	-- Monitor for new monsters
	workspace.DescendantAdded:Connect(function(descendant)
		if descendant.Name == "Monsters" and descendant:IsA("Folder") then
			descendant.ChildAdded:Connect(function(monster)
				if monster:IsA("Model") then
					task.wait(0.2) -- Allow time for Chaser to be added
					visualizemonsterradii(monster)
				end
			end)
		end
	end)

	-- Initial hide all
	hideRadius("KillRadius")
	hideRadius("InstantRadius")
	hideRadius("VisionRadius")
	hideRadius("HearingRadius")
end

-------------------------------------------------------------------------------------------------------------------------------

function deleteDeveloperDoors()
	workspace.DevDoor:Destroy()
	workspace.DevDoor2:Destroy()
end

-------------------------------------------------------------------------------------------------------------------------------

function becomeDandy()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Boxten") and (not characterName or characterName ~= "Boxten") then
		notify("You need to be Boxten to enable this.", 5, "error")
		return
	end

	local Dandy, DHAir
	if game.PlaceId == noxious["dandy's world run"] then
		Dandy = workspace.Elevators.Elevator.DandyStore.DandyShop
		DHAir = Dandy.Hair
	elseif game.PlaceId == noxious["dandy's world lobby"] then
		Dandy = workspace.DandyStore
		DHAir = workspace.DandyStore.Hair
	end

	local CHAir = character:FindFirstChild"Hair"		
	for _, partA in ipairs(Dandy:GetDescendants()) do
		local partB = character:FindFirstChild(partA.Name, true)
		if partB then
			DHAir.Parent = character
			DHAir.Joint.Part0 = character.Head
			wait(0.01)

			character.Animate.idle.Animation1.AnimationId = "rbxassetid://16496520991"
			character.Animate.idle.Animation2.AnimationId = "rbxassetid://16496520991"
			character.Animate.run.RunAnim.AnimationId = "rbxassetid://16496812530"
			character.Config.NormalTexture.Texture = "rbxassetid://16496414911"
			character.Config.HurtTexture.Texture = "rbxassetid://17561468145"

			if CHAir then
				CHAir:Destroy()
			end
			wait(0.01)

			if partA:IsA"MeshPart"and partB:IsA"MeshPart"then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId

				local tempTextureId = partA.TextureID
				partA.TextureID = partB.TextureID
				partB.TextureID = tempTextureId
			elseif partA:IsA"SpecialMesh"and partB:IsA"SpecialMesh"then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function unablius()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Boxten") and (not characterName or characterName ~= "Boxten") then
		notify("You need to be Boxten to enable this.", 5, "error")
		return
	end

	local Dandy, DHAir
	if game.PlaceId == noxious["dandy's world run"] then
		Dandy = workspace.Elevators.Elevator.DandyStore.DandyShop
		DHAir = Dandy.Hair
	elseif game.PlaceId == noxious["dandy's world lobby"] then
		Dandy = workspace.DandyStore
		DHAir = workspace.DandyStore.Hair
	end

	local CHAir = character.Hair

	for _, partA in ipairs(Dandy:GetDescendants()) do
		local partB = character:FindFirstChild(partA.Name, true)
		if partB then
			DHAir.Parent = character
			DHAir.Joint.Part0 = character.Head
			wait(0.01)
			character.Animate.idle.Animation1.AnimationId = "rbxassetid://16496520991"
			character.Animate.idle.Animation2.AnimationId = "rbxassetid://16496520991"
			character.Animate.run.RunAnim.AnimationId = "rbxassetid://16496812530"
			character.Config.NormalTexture.Texture = "rbxassetid://16496414911"
			character.Config.HurtTexture.Texture = "rbxassetid://17561468145"

			CHAir:Destroy()
			wait(0.01)
			if partA:IsA("MeshPart") and partB:IsA("MeshPart") then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId
				local tempTextureId = partA.TextureID
				partA.TextureID = partB.TextureID
				partB.TextureID = tempTextureId


			end
			if partA:IsA("SpecialMesh") and partB:IsA("SpecialMesh") then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local isfullbrightlooping = false
local fullbrightloopconnection
local originalSettings = {}

function saveOriginalSettings()
	local Lighting = game:GetService"Lighting"		
	originalSettings.Brightness = Lighting.Brightness
	originalSettings.ClockTime = Lighting.ClockTime
	originalSettings.FogEnd = Lighting.FogEnd
	originalSettings.GlobalShadows = Lighting.GlobalShadows
	originalSettings.OutdoorAmbient = Lighting.OutdoorAmbient
end

function restoreOriginalSettings()
	local Lighting = game:GetService"Lighting"		
	Lighting.Brightness = originalSettings.Brightness
	Lighting.ClockTime = originalSettings.ClockTime
	Lighting.FogEnd = originalSettings.FogEnd
	Lighting.GlobalShadows = originalSettings.GlobalShadows
	Lighting.OutdoorAmbient = originalSettings.OutdoorAmbient
end

function fullBright()
	local Lighting = game:GetService"Lighting"		
	Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end

function enableFullBright()
	if not isfullbrightlooping then
		isfullbrightlooping = true
		saveOriginalSettings()
		fullbrightloopconnection = noxious["run service"].RenderStepped:Connect(function()
			fullBright()
		end)
	end
end

function disableFullBright()
	if isfullbrightlooping then
		isfullbrightlooping = false
		if fullbrightloopconnection then
			fullbrightloopconnection:Disconnect()
			fullbrightloopconnection = nil
		end
		restoreOriginalSettings()
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local alternativeFullBrightEnabled = false
local fullBrightLoop

function enablealternativefullbright()
	if alternativeFullBrightEnabled then return end
	alternativeFullBrightEnabled = true

	spawn(function() disableFullBright() end)
	spawn(function() saveOriginalSettings() end)

	fullBrightLoop = noxious["run service"].RenderStepped:Connect(function()
		if alternativeFullBrightEnabled then
			game.Lighting.Brightness = 2
			game.Lighting.FogEnd = 100000
			game.Lighting.GlobalShadows = false
			game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		end
	end)
end

function disablealternativefullbright()
	if not alternativeFullBrightEnabled then return end
	alternativeFullBrightEnabled = false

	spawn(function() disableFullBright() end)
	spawn(function() restoreOriginalSettings() end)

	-- Stop the loop
	if fullBrightLoop then
		fullBrightLoop:Disconnect()
		fullBrightLoop = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local player = noxious["local player"]
local humanoid
local animationTracks = {}
local loopStates = {}
local config
local character

-- Function to continuously scan for character in both locations
function monitorCharacter()
	while true do
		-- First check InGamePlayers
		local inGameFolder = workspace:FindFirstChild("InGamePlayers")
		if inGameFolder then
			local inGameChar = inGameFolder:FindFirstChild(player.Name)
			if inGameChar then
				character = inGameChar
				break
			end
		end

		-- Then check regular character
		if player.Character then
			character = player.Character
			break
		end

		-- Wait a short time before checking again
		task.wait(0.5)
	end

	-- Once character is found, set up humanoid and animations
	humanoid = character:WaitForChild("Humanoid")

	if game.PlaceId ~= noxious["test game"] then
		-- Continuously check for animations config
		while true do
			config = character:FindFirstChild("Animations")
			if config then
				-- Register animations
				for _, anim in ipairs(config:GetChildren()) do
					if anim:IsA("Animation") then
						local track = humanoid:LoadAnimation(anim)
						animationTracks[anim.Name] = track
						loopStates[anim.Name] = false
					end
				end
				break
			end
			task.wait(0.25)
		end
	end
end

-- Start monitoring in the background
task.spawn(monitorCharacter)

-- Animation control functions (unchanged)
function enableAnimationLoop(animName)
	local track = animationTracks[animName]
	if track and not loopStates[animName] then
		track.Looped = true
		track:Play()
		loopStates[animName] = true
	end
end

function disableAnimationLoop(animName)
	local track = animationTracks[animName]
	if track and loopStates[animName] then
		track.Looped = false
		track:Stop()
		loopStates[animName] = false
	end
end

function disableAllAnimationLoops()
	for animName, track in pairs(animationTracks) do
		if loopStates[animName] then
			track.Looped = false
			track:Stop()
			loopStates[animName] = false
		end
	end
end

-- Specific animation control functions (unchanged)
function enableextractinganimationloop()
	enableAnimationLoop("Decode")
end

function disableextractinganimationloop()
	disableAnimationLoop("Decode")
end

function enableabilityanimationloop()
	enableAnimationLoop("Ability")
end

function disableeabilityanimationloop()
	disableAnimationLoop("Ability")
end

function enableidleanimationloop()
	enableAnimationLoop("Idle")
end

function disableidleanimationloop()
	disableAnimationLoop("Idle")
end

function enablequirkanimationloop()
	enableAnimationLoop("Quirk")
end

function disablequirkanimationloop()
	disableAnimationLoop("Quirk")
end

function enablerunninganimationloop()
	enableAnimationLoop("Run")
end

function disablerunninganimationloop()
	disableAnimationLoop("Run")
end

function enablewalkinganimationloop()
	enableAnimationLoop("Walk")
end

function disablewalkinganimationloop()
	disableAnimationLoop("Walk")
end

-------------------------------------------------------------------------------------------------------------------------------

local teleportConnections = {}
local currentAnimationTracks = {}

function playAnimation(character, animationId, connectionKey)
	local Anim = Instance.new"Animation"		
	Anim.AnimationId = "rbxassetid://" .. animationId

	local humanoid = character:FindFirstChild"Humanoid"		
	if humanoid then
		currentAnimationTracks[connectionKey] = humanoid:LoadAnimation(Anim)
		currentAnimationTracks[connectionKey]:Play()
		currentAnimationTracks[connectionKey]:AdjustWeight(999)
		currentAnimationTracks[connectionKey].Looped = true
	end
end

function isAnimationPlaying(character, animationId)
	local humanoid = character:FindFirstChild"Humanoid"		
	if humanoid then
		for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
			if track.Animation.AnimationId == "rbxassetid://" .. animationId then
				return true
			end
		end
	end
	return false
end

function teleportBehindTarget(player, targetPlayer, baseOffset, connectionKey)
	local character = player.Character
	local targetCharacter = targetPlayer.Character
	if character and targetCharacter then
		local targetRoot = targetCharacter:FindFirstChild"HumanoidRootPart"			
		local playerRoot = character:FindFirstChild"HumanoidRootPart"			
		if targetRoot and playerRoot then
			local offset = baseOffset

			-- Apply randomized Y offset only for "hsit" and "hjump"
			if (connectionKey == "hsit" or connectionKey == "hjump") and isAnimationPlaying(targetCharacter, "16873659196") then
				local yOffset = 3.7 -- Y-axis offset
				offset = CFrame.new(baseOffset.X, yOffset, baseOffset.Z)
			end

			playerRoot.CFrame = targetRoot.CFrame * offset
		end
	end
end

function findPlayerByPartialName(partialName)
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		if player.Name:lower():sub(1, #partialName) == partialName:lower() then
			return player
		end
	end
	return nil
end

function handleTeleportCommand(command, player, animationId, offset, connectionKey)
	local targetName = command:match("^" .. connectionKey .. "%s+(%S+)$")
	local targetPlayer

	if targetName then
		if targetName:lower() == "random" then
			local players = noxious["players"]:GetPlayers()
			if #players > 0 then
				targetPlayer = players[math.random(1, #players)]
			end
		else
			targetPlayer = findPlayerByPartialName(targetName)
		end
	end

	if targetPlayer then
		workspace.Gravity = 0
		playAnimation(player.Character, animationId, connectionKey)

		if teleportConnections[connectionKey] then
			teleportConnections[connectionKey]:Disconnect()
		end
		teleportConnections[connectionKey] = noxious["run service"].Heartbeat:Connect(function()
			if not targetPlayer.Character or not player.Character then
				teleportConnections[connectionKey]:Disconnect()
				teleportConnections[connectionKey] = nil
				return
			end
			teleportBehindTarget(player, targetPlayer, offset, connectionKey)
		end)
	end
end

function handleStopCommand(connectionKey)
	workspace.Gravity = 196.2
	if teleportConnections[connectionKey] then
		teleportConnections[connectionKey]:Disconnect()
		teleportConnections[connectionKey] = nil
	end

	if currentAnimationTracks[connectionKey] then
		currentAnimationTracks[connectionKey]:Stop()
		currentAnimationTracks[connectionKey] = nil
	end

	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoid = character:WaitForChild"Humanoid"

	local animate = character:FindFirstChild"Animate"		
	if animate then
		animate.Disabled = true
		for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
			track:Stop()
		end
		animate.Disabled = false
	end
end

function dwbang(command, player)
	handleTeleportCommand(command, player, "18213671382", CFrame.new(0, 0, 0.8), "bang")
end

function dwunbang()
	handleStopCommand"bang"	
end

function dwhead(command, player)
	handleTeleportCommand(command, player, "17098030743", CFrame.new(0, -0.35, -1.75) * CFrame.Angles(0, math.pi, 0), "head")
end

function dwunhead()
	handleStopCommand"head"	
end

function dwhsit(command, player)
	handleTeleportCommand(command, player, "16873659196", CFrame.new(0, 4.65, -0.3), "hsit")
end

function dwunhsit()
	handleStopCommand"hsit"	
end

function dwhsit2(command, player)
	handleTeleportCommand(command, player, "75597599641198", CFrame.new(0, 4.65, -0.3), "hsit2")
end

function dwunhsit2()
	handleStopCommand"hsit2"	
end

function dwhjump(command, player)
	handleTeleportCommand(command, player, "16909854575", CFrame.new(0, 4.65, -0.3), "hjump")
end

function dwunhjsit()
	handleStopCommand"hjump"	
end

function bottombang(command, player)
	handleTeleportCommand(command, player, "91029796934547", CFrame.new(0, -0.2, -0.9), "bbang")
end

function unbottombang()
	handleStopCommand"bbang"	
end

-------------------------------------------------------------------------------------------------------------------------------

local currentAnimationTrack 	
local inputConnection

local BarrelRollAnim = Instance.new"Animation"	
BarrelRollAnim.AnimationId = "rbxassetid://18226927388"

local WaveAnim = Instance.new"Animation"	
WaveAnim.AnimationId = "rbxassetid://17059625743"

local TwirlAnim = Instance.new"Animation"	
TwirlAnim.AnimationId = "rbxassetid://17630950280"

local Twirl2Anim = Instance.new"Animation"	
Twirl2Anim.AnimationId = "rbxassetid://18998583113"

local CheerAnim = Instance.new"Animation"	
CheerAnim.AnimationId = "rbxassetid://18199893624"

local ShimmyAnim = Instance.new"Animation"	
ShimmyAnim.AnimationId = "rbxassetid://18155419600"

local JumpAnim = Instance.new"Animation"	
JumpAnim.AnimationId = "rbxassetid://17295478127"

local FacepalmAnim = Instance.new"Animation"	
FacepalmAnim.AnimationId = "rbxassetid://73742913578970"

local PounceAnim = Instance.new"Animation"	
PounceAnim.AnimationId = "rbxassetid://17617839395"

local DiveAnim = Instance.new"Animation"	
DiveAnim.AnimationId = "rbxassetid://17175061517"

function playEmote(animation)
	if currentAnimationTrack then
		currentAnimationTrack:Stop()
	end
	currentAnimationTrack = humanoid:LoadAnimation(animation)
	currentAnimationTrack:Play()
	currentAnimationTrack:AdjustWeight(999)
end

function dwbarrelroll() playEmote(BarrelRollAnim) end
function dwwave() playEmote(WaveAnim) end
function dwtwirl() playEmote(TwirlAnim) end
function dwtwirl2() playEmote(Twirl2Anim) end
function dwcheer() playEmote(CheerAnim) end
function dwshimmy() playEmote(ShimmyAnim) end
function dwjump() playEmote(JumpAnim) end
function dwfacepalm() playEmote(FacepalmAnim) end
function dwdive() playEmote(DiveAnim) end

function disableAnimation()
	if inputConnection then
		inputConnection:Disconnect()
		inputConnection = nil
	end
end

function enableAnimation(animationFunction)
	disableAnimation()
	inputConnection = noxious["user input service"].InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			animationFunction()
		end
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

function dwhbang(command)

	local HeadbangAnim = Instance.new"Animation"		
	HeadbangAnim.AnimationId = "rbxassetid://17561277632"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(HeadbangAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwdance(command)

	local DanceAnim = Instance.new"Animation"		
	DanceAnim.AnimationId = "rbxassetid://17516071317"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(DanceAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwcrawl(command)

	local TherianAnim = Instance.new"Animation"		
	TherianAnim.AnimationId = "rbxassetid://91029796934547"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(TherianAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwtherian(command)

	local TherianAnim = Instance.new"Animation"		
	TherianAnim.AnimationId = "rbxassetid://17649190982"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(TherianAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwsit(command)

	local SitAnim = Instance.new"Animation"		
	SitAnim.AnimationId = "rbxassetid://18989418012"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(SitAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwpounce(command)

	local PounceAnim = Instance.new"Animation"		
	PounceAnim.AnimationId = "rbxassetid://17617839395"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(PounceAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwsit2(command)

	local Sit2Anim = Instance.new"Animation"		
	Sit2Anim.AnimationId = "rbxassetid://16873659196"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(Sit2Anim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwunhbang(command)
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwunsit2(command)
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwundance(command)
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwuncrawl(command)
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwuntherian(command)
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["local player"].CharacterAdded:Connect(updateCharacterReferences)

function dwunsit(command)
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function breakstats()
	local inGamePlayersFolder = workspace:FindFirstChild"InGamePlayers"

	if inGamePlayersFolder then
		for _, playerFolder in pairs(inGamePlayersFolder:GetChildren()) do
			local statsFolder = playerFolder:FindFirstChild"Stats"

			if statsFolder then
				for _, stat in pairs(statsFolder:GetChildren()) do
					if stat:IsA"NumberValue"then
						stat.Value = "nan"
					end
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local teleportEnabled = true
local hasTeleported = false
local heartbeatConnection
local lastPanicState = false

function dweatpte()            
	local infoFolder = workspace:FindFirstChild("Info")

	if infoFolder then
		local panicBool = infoFolder:FindFirstChild("Panic")            
		if panicBool and panicBool:IsA("BoolValue") then
			if not heartbeatConnection or not heartbeatConnection.Connected then
				heartbeatConnection = noxious["run service"].Heartbeat:Connect(function()
					-- Check if panic state changed
					if lastPanicState ~= panicBool.Value then
						lastPanicState = panicBool.Value
						-- Reset hasTeleported when panic is disabled
						if not panicBool.Value then
							hasTeleported = false
						end
					end

					if teleportEnabled and panicBool.Value == true and not hasTeleported then
						local elevatorsFolder = workspace:FindFirstChild("Elevators")                            
						if elevatorsFolder then
							local elevatorModel = elevatorsFolder:FindFirstChildWhichIsA("Model")                                
							if elevatorModel then
								local monsterBlocker = elevatorModel:FindFirstChild("MonsterBlocker")                                    
								if monsterBlocker and monsterBlocker:IsA("Part") then
									local character = noxious["local player"].Character
									if character and character:FindFirstChild("HumanoidRootPart") then
										local offsetCFrame = monsterBlocker.CFrame * CFrame.new(0, -10.5, 0)
										character.HumanoidRootPart.CFrame = offsetCFrame
										hasTeleported = true -- only teleport once
									end
								end
							end
						end
					end
				end)
			end
		end
	end
end

function dwdatpte()
	teleportEnabled = false
	hasTeleported = false
	if heartbeatConnection then
		heartbeatConnection:Disconnect()
		heartbeatConnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function dwtpte()
	local elevatorsFolder = workspace:FindFirstChild"Elevators"

	if elevatorsFolder then
		local elevatorModel = elevatorsFolder:FindFirstChildWhichIsA"Model"

		if elevatorModel then
			local monsterBlocker = elevatorModel:FindFirstChild"MonsterBlocker"

			if monsterBlocker and monsterBlocker:IsA"Part"then
				local character = noxious["local player"].Character
				if character and character:FindFirstChild"HumanoidRootPart"then
					-- Apply the offset to the CFrame
					local offsetCFrame = monsterBlocker.CFrame * CFrame.new(0, -10.5, 0)
					character.HumanoidRootPart.CFrame = offsetCFrame
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function bacondwscript()
	pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Dandy's%20World"))("t.me/arceusxscripts")		
	end)
end

function bobbydwscript()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/BobJunior1/Sup/refs/heads/main/Bobhub"))()
end

function tdh()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RodeStriker/TheDandyHelper/refs/heads/main/MainScript", true))()
end

function egashub()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Amo1224gus/iriska/refs/heads/main/egashub.lua"))();
end

function g0bbydwscript()
	loadstring(game:HttpGet("https://pastebin.com/raw/FBRnb7S7"))()
end

function poltergeist()
	loadstring(game:HttpGet('https://pastebin.com/raw/VQnHXGLC'))()
end

function rodestrikerdwscript()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RodeStriker/TheDandyHelper/refs/heads/main/GAC")() 
end

function zyradwscript()
	loadstring(game:HttpGet"https://pastefy.app/lY7xd0Ks/raw")();
end

function spooksdwscript()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ApparentlySpooks/dandysworldspookshub/refs/heads/main/obfuscated%20spooks%20hub%20dandys%20world.lua'))()
end

function moxdwscript()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ApparentlySpooks/moxhubV3/refs/heads/main/dandys%20world.txt'))()
end

function yiwdwscript()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\83\53\101\70\69\52\55\104\34\41\41\40\41")()
end

function soupdwscript()
	loadstring(game:HttpGet("https://pastebin.com/raw/jjTq76Sp"))()
end

function mobilekeyboard()
	loadstring(game:HttpGet"https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr")()
end

function darkdex()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end

function riddance()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/riddance-club/script/refs/heads/main/loader.lua"))()
end

function bsgui()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxten-Keyes/box-01/refs/heads/main/box%23%5Bboxten%20sex%20gui%5D/box%23%5Bmain%5D.lua"))()
end

function flyscript()
	loadstring(game:HttpGet"https://pastebin.com/raw/PDdkDsgy")()
end

function ffj()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
end

-------------------------------------------------------------------------------------------------------------------------------

function test()
	local function test2(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA"Decal"and v.Texture ~= "rbxassetid://117458353677051" then
				v.Parent = nil
			elseif v:IsA"BasePart"then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://117458353677051"
				Two.Texture = "rbxassetid://117458353677051"
				Three.Texture = "rbxassetid://117458353677051"
				Four.Texture = "rbxassetid://117458353677051"
				Five.Texture = "rbxassetid://117458353677051"
				Six.Texture = "rbxassetid://117458353677051"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			test2(v)
		end
	end
	local function test3(root)
		for _, v in pairs(root:GetChildren()) do
			test3(v)
		end
	end
	test2(workspace)
	test3(workspace)

	local function replaceTextInGui(guiObject)
		if guiObject:IsA"TextLabel"or guiObject:IsA"TextButton"then
			guiObject.Text = "unable says hi :3"
		end
	end

	local function replaceTextInWorkspace()
		for _, obj in pairs(workspace:GetDescendants()) do
			if obj:IsA"BillboardGui"or obj:IsA"SurfaceGui"then
				for _, child in pairs(obj:GetDescendants()) do
					replaceTextInGui(child)
				end
			end
		end
	end

	replaceTextInWorkspace()

	for _, gui in pairs(noxious["local player"].PlayerGui:GetDescendants()) do
		replaceTextInGui(gui)
	end

	local imageId = "rbxassetid://117458353677051"

	local function createBillboardGui(part)
		if part:FindFirstChildOfClass"BillboardGui"then return end

		local billboardGui = Instance.new"BillboardGui"			
		billboardGui.Size = UDim2.new(3, 0, 3, 0)
		billboardGui.AlwaysOnTop = true
		billboardGui.Parent = part
		billboardGui.Adornee = part

		local imageLabel = Instance.new"ImageLabel"			
		imageLabel.Size = UDim2.new(1, 0, 1, 0)
		imageLabel.Image = imageId
		imageLabel.BackgroundTransparency = 1
		imageLabel.Parent = billboardGui
	end

	local function addBillboardGuis()
		for _, descendant in pairs(workspace:GetDescendants()) do
			if descendant:IsA"BasePart"then
				createBillboardGui(descendant)
			end
		end

		workspace.DescendantAdded:Connect(function(newDescendant)
			if newDescendant:IsA"BasePart"then
				createBillboardGui(newDescendant)
			end
		end)
	end

	addBillboardGuis()

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass"Sky"or Instance.new"Sky"

	sky.SkyboxBk = "rbxassetid://117458353677051"
	sky.SkyboxDn = "rbxassetid://117458353677051"
	sky.SkyboxFt = "rbxassetid://117458353677051"
	sky.SkyboxLf = "rbxassetid://117458353677051"
	sky.SkyboxRt = "rbxassetid://117458353677051"
	sky.SkyboxUp = "rbxassetid://117458353677051"

	sky.Parent = lighting
end

-------------------------------------------------------------------------------------------------------------------------------

function tptoadminroom()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-43, 21, 24)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end

-------------------------------------------------------------------------------------------------------------------------------

function tptobedroom()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-175, 8, 49)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end

-------------------------------------------------------------------------------------------------------------------------------

function tptodandysshop()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-19, 21, 17)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end

-------------------------------------------------------------------------------------------------------------------------------

function tptostage()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-3, 33, 492)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end

-------------------------------------------------------------------------------------------------------------------------------

function tptoboxofdoom()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-215, 3, -215)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end

-------------------------------------------------------------------------------------------------------------------------------

function showadminpanel()

	if game.PlaceId == noxious["dandy's world lobby"] then

		local devframe = game.ReplicatedStorage.Admin.DevFrame
		devframe.Frame.Visible = true
		devframe.Frame.Parent = noxious["local player"].PlayerGui.MainGui
	end

	if game.PlaceId == noxious["dandy's world run"] then

		local function showgui(parent)
			for _, child in ipairs(parent:GetChildren()) do
				if child:IsA"GuiObject"then
					child.Visible = true
				end
				showgui(child)
			end
		end

		if noxious["local player"] and noxious["local player"]:FindFirstChild"PlayerGui"then
			for _, screenGui in ipairs(noxious["local player"].PlayerGui:GetChildren()) do
				if screenGui:IsA"ScreenGui"then
					local devFrame = screenGui:FindFirstChild"DevFrame"						
					if devFrame and devFrame:IsA"Frame"then
						devFrame.Visible = true
						showgui(devFrame)
					end
				end
			end
		end
	end
end

function hideadminpanel()

	if game.PlaceId == noxious["dandy's world lobby"] then

		local devframe = noxious["local player"].PlayerGui.MainGui
		devframe.Frame.Visible = false
		devframe.Frame.Parent = game.ReplicatedStorage.Admin.DevFrame
	end

	if game.PlaceId == noxious["dandy's world run"] then

		local function hidegui(parent)
			for _, child in ipairs(parent:GetChildren()) do
				if child:IsA"GuiObject"then
					child.Visible = false
				end
				hidegui(child)
			end
		end

		if noxious["local player"] and noxious["local player"]:FindFirstChild"PlayerGui"then
			for _, screenGui in ipairs(noxious["local player"].PlayerGui:GetChildren()) do
				if screenGui:IsA"ScreenGui"then
					local devFrame = screenGui:FindFirstChild"DevFrame"						
					if devFrame and devFrame:IsA"Frame"then
						devFrame.Visible = false
						hidegui(devFrame)
					end
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local dibloop = false

function deleteinvisborders()
	dibloop = true
end

-- Function to delete invisible borders
function dib()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")

	if currentRoom then
		local model = currentRoom:FindFirstChildOfClass("Model")

		if model then
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				for _, child in ipairs(freeArea:GetChildren()) do
					if child:IsA("Part") and (child.Name == "InvisBorder" or child.Name == "InvisibleWall") then
						child:Destroy()
					end
				end
			end

			local generatedBorders = model:FindFirstChild("GeneratedBorders")
			if generatedBorders then
				generatedBorders:Destroy()
			end

			local borders = model:FindFirstChild("Borders")
			if borders then
				borders:Destroy()
			end

			local walls = model:FindFirstChild("Walls")
			if walls then
				for _, child in ipairs(walls:GetChildren()) do
					if child:IsA("Part") and child.Name == "InvisibleWall" then
						child:Destroy()
					end
				end
			end
		end
	end
end

if dibloop == true then
	local floorActiveValue = workspace:WaitForChild("Info"):WaitForChild("FloorActive")

	-- Ensure only **one** event connection is created
	local function onFloorActiveChanged()
		dib()
	end

	floorActiveValue.Changed:Connect(onFloorActiveChanged)
end

-------------------------------------------------------------------------------------------------------------------------------

function antipopups()
	local popup = noxious["local player"].PlayerGui.ScreenGui:FindFirstChild"PopUp"

	if popup then
		popup:Destroy()
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local handlingEnabled = true

function toggleHandling(state)
	handlingEnabled = state
end

function handleSkillCheck()
	local VIM = game:GetService'VirtualInputManager'		
	local tl = 5
	local screengui = noxious["local player"].PlayerGui:FindFirstChild"ScreenGui"		
	if not screengui then
		return
	end

	local menu = screengui:FindFirstChild"Menu"		
	if not menu then
		return
	end

	local skillcheckframe = menu:FindFirstChild"SkillCheckFrame"		
	if not skillcheckframe then
		return
	end

	local function visibledisrupt()
		if handlingEnabled and skillcheckframe.Visible then
			local marker = skillcheckframe:FindFirstChild"Marker"				
			local goldarea = skillcheckframe:FindFirstChild"GoldArea"

			if marker and goldarea then
				local markerPosition = marker.AbsolutePosition
				local goldAreaPosition = goldarea.AbsolutePosition
				local goldAreaSize = goldarea.AbsoluteSize

				if markerPosition.X >= goldAreaPosition.X and markerPosition.X <= (goldAreaPosition.X + goldAreaSize.X) + tl then
					-- Send spacebar press event
					VIM:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
				end
			end
		end
	end

	skillcheckframe.Changed:Connect(function(property)
		if property == "Visible" then
			visibledisrupt()
		end
	end)

	local marker = skillcheckframe:FindFirstChild"Marker"		
	local goldarea = skillcheckframe:FindFirstChild"GoldArea"

	if marker then
		marker.Changed:Connect(function(property)
			if property == "AbsolutePosition" then
				visibledisrupt()
			end
		end)
	end

	if goldarea then
		goldarea.Changed:Connect(function(property)
			if property == "AbsolutePosition" or property == "AbsoluteSize" then
				visibledisrupt()
			end
		end)
	end
end

handleSkillCheck()
toggleHandling(false)

-------------------------------------------------------------------------------------------------------------------------------

function tptool()	
	local speaker = noxious["local player"]
	local IYMouse = noxious["local player"]:GetMouse()
	local TpTool = Instance.new"Tool"

	TpTool.Name = "teleport tool"
	TpTool.RequiresHandle = false
	TpTool.Parent = speaker.Backpack
	TpTool.Activated:Connect(function()
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local HRP = Char and Char:FindFirstChild"HumanoidRootPart"			
		HRP.CFrame = CFrame.new(IYMouse.Hit.X, IYMouse.Hit.Y + 3, IYMouse.Hit.Z, select(4, HRP.CFrame:components()))
	end)

	game:GetService"StarterGui":SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
end

-------------------------------------------------------------------------------------------------------------------------------

function enablejumping()
	spawn(function()
		local touchGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"TouchGui"		
		local touchControlFrame = touchGui:FindFirstChild"TouchControlFrame"		
		local jumpButton = touchControlFrame and touchControlFrame:FindFirstChild"JumpButton"

		local touchGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"TouchGui"
		touchGui:WaitForChild"TouchControlFrame"

		local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"			
		local menu = mainGui:WaitForChild"Menu"			
		local inviteButton = menu:WaitForChild"InviteButton"			
		local infoButton = menu:WaitForChild"InfoButton"			
		local settingsButton = menu:WaitForChild"SettingsButton"

		jumpButton.Visible = true
		inviteButton.Visible = false
		infoButton.Visible = false
		settingsButton.Visible = false
	end)

	spawn(function()
		local humanoid = character:WaitForChild"Humanoid"		
		humanoid.JumpPower = 50.145
		humanoid.JumpHeight = 7.2

		noxious["local player"].CharacterAdded:Connect(function(newCharacter)
			local newHumanoid = newCharacter:WaitForChild"Humanoid"			
			newHumanoid.JumpPower = 50.145
			newHumanoid.JumpHeight = 7.2
		end)
	end)

	notify("Spam jumping can trigger anticheat.", 5, "warning")
end

function disablejumping()
	spawn(function()
		local touchGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"TouchGui"		
		local touchControlFrame = touchGui:FindFirstChild"TouchControlFrame"		
		local jumpButton = touchControlFrame and touchControlFrame:FindFirstChild"JumpButton"

		local touchGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"TouchGui"
		touchGui:WaitForChild"TouchControlFrame"
		local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"			
		local menu = mainGui:WaitForChild"Menu"			
		local inviteButton = menu:WaitForChild"InviteButton"			
		local infoButton = menu:WaitForChild"InfoButton"			
		local settingsButton = menu:WaitForChild"SettingsButton"

		jumpButton.Visible = false
		inviteButton.Visible = true
		infoButton.Visible = true
		settingsButton.Visible = true
	end)

	spawn(function()
		local humanoid = character:WaitForChild"Humanoid"		
		humanoid.JumpPower = 0
		humanoid.JumpHeight = 0

		noxious["local player"].CharacterAdded:Connect(function(newCharacter)
			local newHumanoid = newCharacter:WaitForChild"Humanoid"			
			newHumanoid.JumpPower = 0
			newHumanoid.JumpHeight = 0
		end)
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

local scriptEnabled = false

function enableglitchednametag()
	local playerName = noxious["local player"].Name

	local playersFolder = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"		
	local playerModel = playersFolder and playersFolder:FindFirstChild(playerName)

	if game.PlaceId == not noxious["test game"] then
		noxious["core gui"].Noxious.mainframe:WaitForChild"TopFrame"		
	end

	local welcome = noxious["top frame"]:WaitForChild("welcome")		
	local welcome2 = noxious["top frame"]:WaitForChild("welcome2")

	-- If playersFolder and playerModel exist, proceed to replace NameTag text
	if playersFolder and playerModel then
		local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"			
		local nameTag = humanoidRootPart:WaitForChild"NameTag"			
		local frame = nameTag:WaitForChild"Frame"

		local displayNameLabel = frame:WaitForChild"DisplayName"			
		local userNameLabel = frame:WaitForChild"UserName"
		-- Save original NameTag text

		savedDisplayName = displayNameLabel.Text
		savedUserName = userNameLabel.Text
	end

	scriptEnabled = true
	while scriptEnabled do
		local randomText = generateRandomString(16)

		-- Update welcome labels
		welcome.Text = "Welcome, " .. randomText .. "!"
		welcome2.Text = "(@" .. randomText .. ")"

		-- Update NameTag labels if applicable
		if playersFolder and playerModel then
			local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"				
			local nameTag = humanoidRootPart:WaitForChild"NameTag"				
			local frame = nameTag:WaitForChild"Frame"

			local displayNameLabel = frame:WaitForChild"DisplayName"				
			local userNameLabel = frame:WaitForChild"UserName"

			displayNameLabel.Text = randomText
			userNameLabel.Text = "(@" .. randomText .. ")"
		end

		wait(0)
	end
end

function disableglitchednametag()
	scriptEnabled = false	

	local playerName = noxious["local player"].Name

	local playersFolder = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"		
	local playerModel = playersFolder and playersFolder:FindFirstChild(playerName)

	noxious["core gui"].Noxious.mainframe:WaitForChild"TopFrame"		

	local welcome = noxious["top frame"]:WaitForChild"welcome"		
	local welcome2 = noxious["top frame"]:WaitForChild"welcome2"

	welcome.Text = welcometxt
	welcome2.Text = welcome2txt

	-- Restore NameTag labels if applicable
	if playersFolder and playerModel then
		local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"			
		local nameTag = humanoidRootPart:WaitForChild"NameTag"			
		local frame = nameTag:WaitForChild"Frame"

		local displayNameLabel = frame:WaitForChild"DisplayName"			
		local userNameLabel = frame:WaitForChild"UserName"

		if savedDisplayName and savedUserName then
			displayNameLabel.Text = savedDisplayName
			userNameLabel.Text = savedUserName
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local scriptEnabled2 = false

function enableglitchedrpname()
	scriptEnabled2 = true
	while scriptEnabled2 do
		local randomText = generateRandomString(16)

		-- Invoke the server to change the name
		local args = {
			[1] = randomText,
			[2] = 0
		}

		local character = noxious["local player"].Character
		if character and character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart:FindFirstChild("NameTag") then
			local nameTag = character.HumanoidRootPart.NameTag
			if nameTag:FindFirstChild("ChangeName") then
				nameTag.ChangeName:InvokeServer(unpack(args))
			end
		end

		wait(0)
	end
end

function disableglitchedrpname()
	scriptEnabled2 = false

	-- Restore original name using server invocation
	local character = noxious["local player"].Character
	if character and character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart:FindFirstChild("NameTag") then
		local nameTag = character.HumanoidRootPart.NameTag
		if nameTag:FindFirstChild("ChangeName") then
			local args = {
				[1] = noxious["local player"].DisplayName, -- Original Display Name
				[2] = 0
			}
			nameTag.ChangeName:InvokeServer(unpack(args))
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to change the Coin value
function changeCoinValue(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"Coin"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.Coin.Value = value
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function fakeblackouts(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"Blackouts"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.Blackouts.Value = value
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function fakedandyitemspurchased(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"DandyItemsPurchased"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.DandyItemsPurchased.Value = value
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function fakefloorstraveled(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"FloorsTraveled"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.FloorsTraveled.Value = value
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function fakemachinescompleted(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"GeneratorsCompleted"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.GeneratorsCompleted.Value = value
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function fakefurthestfloor(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"HighestFloor"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.HighestFloor.Value = value
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function fakeitemspickedup(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"ItemsPickedUp"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.ItemsPickedUp.Value = value
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function unlockalltoons()
	local player = noxious["local player"].UserId
	local folder = game.ReplicatedStorage.PlayerData:FindFirstChild(player).Towers
	for _, name in pairs(names) do
		local toon = Instance.new("StringValue", folder)
		toon.Name = name
		toon.Value = "Default"
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function unlockalltrinkets()
	local player = noxious["local player"].UserId
	local folder = game.ReplicatedStorage.PlayerData:FindFirstChild(player).Trinkets
	local names = { "EggRadar", "WhisperingFlower", "GlazedFondantBag", "Scrapbook", "PartyPopper", "FestiveLights", "Coal", "ToyKit", "PeppermintIcing", "BlushyBat", "Alarm", "Cardboard'Armor'", "CoinPurse", "Megaphone", "PopPack", "PullToy", "SpeedyShoes", "Speedometer", "Thermos", "ThinkingCap", "WaterCooler", "Wrench", " Brick", "BlueBandana", "Bone", "CrayonSet", "DandyPlush", "DogPlush", " FriendshipBracelet", "MachineManual", "Magnifying Glass", "NightCap", "PinkBow", " RibbonSpool", "SpareBulb", "VeeRemote", "ClownHorn", "GhostSnakes"}
	for _, name in pairs(names) do
		local trinket = Instance.new("StringValue", folder)
		trinket.Name = name
		trinket.Value = "Default"
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function opendandysshop()
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local dandyframe = mainGui:WaitForChild"DandyFrame"
	dandyframe.Visible = true
end

-------------------------------------------------------------------------------------------------------------------------------

function opentoonlicenseshop()
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local storeFrame = mainGui:WaitForChild"StoreFrame"
	storeFrame.Visible = true
end

-------------------------------------------------------------------------------------------------------------------------------

function opentrinketshop()
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local trinketstoreframe = mainGui:WaitForChild"TrinketStoreFrame"
	trinketstoreframe.Visible = true
end

-------------------------------------------------------------------------------------------------------------------------------

function openskinchanger()	
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skinframe = mainGui:WaitForChild"SkinFrame"
	skinframe.Visible = true
end

-------------------------------------------------------------------------------------------------------------------------------

function openskincollection()
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skincollectionframe = mainGui:WaitForChild"SkinCollectionFrame"
	skincollectionframe.Visible = true
end

-------------------------------------------------------------------------------------------------------------------------------

function openskinstore()
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skinstoreframe = mainGui:WaitForChild"SkinStoreFrame"
	skinstoreframe.Visible = true
end

-------------------------------------------------------------------------------------------------------------------------------

function openmerchstore()
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local merchframe = mainGui:WaitForChild"MerchFrame"
	merchframe.Visible = true
end

-------------------------------------------------------------------------------------------------------------------------------

-- anti skillcheck
function antiskillcheck()
	local skillCheckFrame = player.PlayerGui.ScreenGui.Menu:FindFirstChild"SkillCheckFrame"
	if skillCheckFrame then
		skillCheckFrame:Destroy()
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local updateEnabled, updateEnabled2 = true, true
local updateLoop, updateLoop2

function looprunspeed()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local sprinting = character.Stats.Sprinting
	if not updateLoop then
		updateLoop = coroutine.create(function()
			while updateEnabled do
				character:WaitForChild"Humanoid".WalkSpeed = noxious["local player"]:GetAttribute("KM_MAX_PLAYER_SPEED")
				sprinting.Value = true
				task.wait()
			end
		end)
		coroutine.resume(updateLoop)
	end
end

function loopmaxspeed()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local sprinting = character.Stats.Sprinting
	if not updateLoop2 then
		updateLoop2 = coroutine.create(function()
			while updateEnabled2 do
				character:WaitForChild"Humanoid".WalkSpeed = noxious["local player"]:GetAttribute("KM_MAX_PLAYER_SPEED") * 1.25
				sprinting.Value = true
				task.wait()
			end
		end)
		coroutine.resume(updateLoop2)
	end
end


function disablelooprunspeed()
	if updateLoop then
		updateEnabled = false  -- Stop the loop
		updateLoop = nil  -- Reset the loop reference
	end
end

function disableloopmaxspeed()
	if updateLoop2 then
		updateEnabled2 = false  -- Stop the loop
		updateLoop2 = nil  -- Reset the loop reference
	end
end

function enablelooprunspeed()
	if not updateLoop then
		updateEnabled = true  -- Allow the loop to run again
		looprunspeed()  -- Start the loop again
	end
end

function enableloopmaxspeed()
	if not updateLoop2 then
		updateEnabled2 = true  -- Allow the loop to run again
		loopmaxspeed()  -- Start the loop again
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function changeDisplayName(newName)
	spawn(function()
		local playerName = noxious["local player"].Name

		-- Check for "Players" folder; if not found, look for "InGamePlayers"
		local playersFolder = workspace:FindFirstChild("Players") or workspace:WaitForChild("InGamePlayers")
		local playerModel = playersFolder:WaitForChild(playerName)

		local humanoidRootPart = playerModel:WaitForChild("HumanoidRootPart")
		local nameTag = humanoidRootPart:WaitForChild("NameTag")
		local frame = nameTag:WaitForChild("Frame")

		local displaynamelabel = frame:WaitForChild("DisplayName")
		displaynamelabel.Text = newName
	end)

	-- Access the 'welcome' labels
	local topFrame = noxious["core gui"].Noxious.mainframe:WaitForChild("TopFrame")

	local welcome = topFrame:WaitForChild("welcome")  -- Displayname
	welcome.Text = newName  -- Update the 'welcome' label with the new display name
end

-------------------------------------------------------------------------------------------------------------------------------

function changeUserName(newName)
	spawn(function()
		local playerName = noxious["local player"].Name

		-- Check for "Players" folder; if not found, look for "InGamePlayers"
		local playersFolder = workspace:FindFirstChild("Players") or workspace:WaitForChild("InGamePlayers")
		local playerModel = playersFolder:WaitForChild(playerName)

		local humanoidRootPart = playerModel:WaitForChild("HumanoidRootPart")
		local nameTag = humanoidRootPart:WaitForChild("NameTag")
		local frame = nameTag:WaitForChild("Frame")

		local usernamelabel = frame:WaitForChild("UserName")
		usernamelabel.Text = "(@" .. newName .. ")"  -- Update the username label
	end)

	-- Access the 'welcome2' label (for username)
	local topFrame = noxious["core gui"].Noxious.mainframe:WaitForChild("TopFrame")

	local welcome2 = topFrame:WaitForChild("welcome2")  -- Username
	welcome2.Text = "(@" .. newName .. ")"  -- Update the 'welcome2' label with the new username
end

-------------------------------------------------------------------------------------------------------------------------------

function changeOwnerTagText(newName)
	local playerName = noxious["local player"].Name

	local playersFolder = workspace:FindFirstChild"Players"or workspace:WaitForChild"InGamePlayers"		
	local playerModel = playersFolder:WaitForChild(playerName)

	local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"		
	local nameTag = humanoidRootPart:WaitForChild"NameTag"		
	local frame = nameTag:WaitForChild"Frame"

	local ownerlabel = frame:WaitForChild"GroupRank"		
	ownerlabel.Text = "[" .. newName .. "]"
end

-------------------------------------------------------------------------------------------------------------------------------

local flying = false
local speed = 20
local flightConnection

-- Function to start flying
function startFlying(flySpeed)
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild"Humanoid"		
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		

	if flying then return end -- Prevent multiple starts
	flying = true
	humanoidRootPart.Anchored = false
	speed = flySpeed or 20 -- Set the speed to the provided value or default to 20

	-- Start flight loop
	flightConnection = noxious["run service"].RenderStepped:Connect(function()
		if flying then
			local moveDirection = humanoid.MoveDirection
			if moveDirection.Magnitude > 0 then
				local cameraDirection = noxious["current camera"].CFrame.LookVector

				if humanoidRootPart.Anchored then
					humanoidRootPart.Anchored = false
				end

				-- Combine movement with camera Y direction for flight control
				local combinedDirection = (moveDirection * Vector3.new(1, 0, 1)) + Vector3.new(0, cameraDirection.Y, 0)
				combinedDirection = combinedDirection.Unit
				local lookAt = humanoidRootPart.Position + Vector3.new(cameraDirection.X, 0, cameraDirection.Z)
				humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, lookAt)
				humanoidRootPart.Velocity = combinedDirection * speed
			else
				humanoidRootPart.Anchored = true -- Hover in place if no movement
				humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
			end
		end
	end)
end

-- Function to stop flying
function stopFlying()
	if not flying then return end -- Prevent stopping if already stopped

	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	flying = false
	humanoidRootPart.Anchored = false
	humanoidRootPart.Velocity = Vector3.new(0, 0, 0)

	-- Disconnect flight loop
	if flightConnection then
		flightConnection:Disconnect()
		flightConnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to teleport the player behind another player (or themselves)
function teleportBehindPlayer(targetName)
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local targetPlayer
	if targetName:lower() == "random" then
		local players = noxious["players"]:GetPlayers()
		if #players > 0 then
			targetPlayer = players[math.random(1, #players)]
		end
	else
		targetPlayer = findPlayerByPartialName(targetName)
	end

	if targetPlayer then
		local targetCharacter = targetPlayer.Character
		if targetCharacter and targetCharacter:FindFirstChild"HumanoidRootPart"then
			local targetRootPart = targetCharacter.HumanoidRootPart

			-- Calculate the position 3 studs behind the target
			local behindPosition = targetRootPart.CFrame * CFrame.new(0, 0, 3)
			humanoidRootPart.CFrame = behindPosition
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function checkIfShelly()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"
	-- Check for ToonName

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"
	-- Fallback to Config.CharacterName if ToonName is not found

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	-- Notify error if neither ToonName nor CharacterName matches "Shelly"
	if (not toonName or toonName.Value ~= "Shelly") and (not characterName or characterName ~= "Shelly") then
		notify("You need to be Shelly to enable this.", 5, "error") -- Display notification
		return false
	end

	return true
end

-------------------------------------------------------------------------------------------------------------------------------

local running = true  -- Flag to control the loop
local loopConnection

-- Function to invoke the ability event
function invokeAbilityEvent()
	local args = {
		[1] = game:GetService"Players".LocalPlayer.Character,
		[2] = CFrame.new(-65.78115844726563, 145.7693634033203, 86.53424072265625) * CFrame.Angles(4.413669e-9, 2.9576959e-16, 5.3380848e-8),
		[3] = false
	}
	game:GetService"ReplicatedStorage".Events.AbilityEvent:InvokeServer(unpack(args))
end

-- Function to start the loop
function enableautouseactiveability()
	if running then
		loopConnection = noxious["run service"].Heartbeat:Connect(function()
			invokeAbilityEvent()  -- Call the ability event
			wait(0)  -- Wait 0.3 seconds before invoking again
		end)
	end
end

-- Function to stop the loop
function disableautouseactiveability()
	if loopConnection then
		loopConnection:Disconnect()  -- Disconnect the loop
		loopConnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Updated gatherresearch function
function gatherresearch()
	spawn(function()
		enableItemAura()
	end)

	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local originalPosition = humanoidRootPart.CFrame

	local currentRoom = workspace:FindFirstChild"CurrentRoom"		
	if currentRoom then
		-- Set gravity to 0 for the duration of the loop
		workspace.Gravity = 0

		local visitedRazzleDazzle = false -- Flag to track RazzleDazzleMonster

		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA"Model"then
				local monstersFolder = model:FindFirstChild"Monsters"					
				if monstersFolder then
					for _, monster in ipairs(monstersFolder:GetChildren()) do
						if monster:IsA"Model"then
							-- Determine Y offset based on monster name
							local yOffset = 12 -- Default offset
							if monster.Name == "RodgerMonster" then
								yOffset = 5 -- Custom offset for RodgerMonster
							elseif monster.Name == "RazzleDazzleMonster" and not visitedRazzleDazzle then
								-- Handle RazzleDazzleMonster specifically
								visitedRazzleDazzle = true -- Mark as visited
								yOffset = 0
								humanoidRootPart.CFrame = monster:GetModelCFrame() + Vector3.new(0, yOffset, 0)
								workspace.Gravity = 196.2
								local VirtualInputManager = game:GetService"VirtualInputManager"									
								VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.W, false, game)
								wait(0.5) -- Wait for a brief moment
								VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.W, false, game)
								workspace.Gravity = 0
							end

							-- Teleport to each monster's position with the determined offset
							if monster.Name ~= "RazzleDazzleMonster" or not visitedRazzleDazzle then
								humanoidRootPart.CFrame = monster:GetModelCFrame() + Vector3.new(0, yOffset, 0)
								task.wait(0.5)
							end
						end
					end
				end
			end
		end

		-- Return to the original position
		humanoidRootPart.CFrame = originalPosition

		-- Wait briefly before restoring gravity
		task.wait(0.2)

		-- Restore original gravity
		workspace.Gravity = 196.2

		originalPosition = nil
	end

	spawn(function()
		disableItemAura()
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

local isautouseitemslooprunning = true 

function invokeItemEvent(slot)
	local ReplicatedStorage = game:GetService"ReplicatedStorage"		
	local Character = noxious["local player"].Character
	local Inventory = Character.Inventory
	local args = {
		[1] = Character,
		[2] = Inventory:FindFirstChild(slot)
	}

	if args[2] then
		ReplicatedStorage.Events.ItemEvent:InvokeServer(unpack(args))
	end
end

-- Function to start the loop
function startautouseitemsloop()
	while isautouseitemslooprunning do
		spawn(function()
			invokeItemEvent"Slot1"			
		end)

		spawn(function()
			invokeItemEvent"Slot2"			
		end)

		spawn(function()
			invokeItemEvent"Slot3"			
		end)

		wait(0)
	end
end

-- Function to stop the loop
function disableautouseitemsloop()
	isautouseitemslooprunning = false
end

-- Function to restart the loop
function enableautouseitemsloop()
	isautouseitemslooprunning = true
	startautouseitemsloop()  -- Restart the loop if it was stopped
end

-------------------------------------------------------------------------------------------------------------------------------

local iatogglestate = false
local pprange = 30

function interactWithPrompt(prompt)
	if prompt.HoldDuration == 0 then
		prompt:InputHoldBegin()
		prompt:InputHoldEnd()
	else
		prompt:InputHoldBegin()
		wait(prompt.HoldDuration)
		prompt:InputHoldEnd()
	end
end

function checkForProximityPrompts()
	if iatogglestate then
		local character = noxious["local player"].Character
		if character then
			local humanoidRootPart = character:FindFirstChild"HumanoidRootPart"				
			if humanoidRootPart then
				local currentRoomFolder = workspace:FindFirstChild"CurrentRoom"					
				if currentRoomFolder then
					for _, model in pairs(currentRoomFolder:GetChildren()) do
						local itemsFolder = model:FindFirstChild"Items"							
						if itemsFolder then
							for _, item in pairs(itemsFolder:GetChildren()) do
								local promptPart = item:FindFirstChild"Prompt"									
								if promptPart then
									local proximityPrompt = promptPart:FindFirstChild"ProximityPrompt"										
									if proximityPrompt and proximityPrompt.Enabled then
										local distance = (promptPart.Position - humanoidRootPart.Position).Magnitude
										if distance <= pprange then
											interactWithPrompt(proximityPrompt)
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

function enableItemAura()
	if not iatogglestate then
		iatogglestate = true
		while iatogglestate do
			checkForProximityPrompts()
			wait(0.05)
		end
	end
end

function disableItemAura()
	if iatogglestate then
		iatogglestate = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local gatogglestate = false

function checkForgeneratorProximityPrompts()
	if iatogglestate then
		local character = noxious["local player"].Character
		if character then
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
			if humanoidRootPart then
				local currentRoomFolder = workspace:FindFirstChild("CurrentRoom")
				if currentRoomFolder then
					for _, model in pairs(currentRoomFolder:GetChildren()) do
						local itemsFolder = model:FindFirstChild("Generators")
						if itemsFolder then
							for _, item in pairs(itemsFolder:GetChildren()) do
								for _, descendant in pairs(item:GetDescendants()) do
									if descendant:IsA("ProximityPrompt") and descendant.Enabled then
										local promptPart = descendant.Parent
										if promptPart and promptPart:IsA("BasePart") then
											local distance = (promptPart.Position - humanoidRootPart.Position).Magnitude
											if distance <= pprange then
												interactWithPrompt(descendant)
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

function enablegeneratoraura()
	if not iatogglestate then
		iatogglestate = true
		while iatogglestate do
			checkForProximityPrompts()
			wait(0.05)
		end
	end
end

function disablegeneratoraura()
	if iatogglestate then
		iatogglestate = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Main function
function pickupallitems()
	spawn(function() disableNoclip() end)
	spawn(function() enableNoclip() end)
	spawn(function() enableItemAura() end)
	spawn(function() bringplayerdown() end)
	wait(0.2)

	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder and #itemsFolder:GetChildren() > 0 then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") then
							-- Add a -3.3 stud offset on the Y-axis
							local itemCFrame = item:GetModelCFrame() * CFrame.new(0, -3.3, 0)

							-- Tween the player to the item's position
							tweenplr(itemCFrame, 30) -- Adjust duration as needed

						end
					end
				end
			end
		end
	end

	-- Tween back to the original position
	tweenplr(originalPosition, 30) -- Adjust duration as needed

	task.wait(0.1)

	originalPosition = nil
	wait(0.2)
	spawn(function() bringplayerup() end)
	spawn(function() disableItemAura() end)
	spawn(function() disableNoclip() end)
end

-------------------------------------------------------------------------------------------------------------------------------

function pickupallresearchcapsules()
	spawn(function() disableNoclip() end)
	spawn(function() enableNoclip() end)
	spawn(function() enableItemAura() end)
	spawn(function() bringplayerdown() end)
	wait(0.2)
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local originalPosition = humanoidRootPart.CFrame

	local currentRoom = workspace:FindFirstChild"CurrentRoom"		
	if currentRoom then
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA"Model"then
				local itemsFolder = model:FindFirstChild"Items"					
				if itemsFolder and #itemsFolder:GetChildren() > 0 then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Only pick up items named "ResearchCapsule"
						if item:IsA"Model"and item.Name == "ResearchCapsule" then
							local itemCFrame = item:GetModelCFrame() * CFrame.new(0, -3.3, 0)

							tweenplr(itemCFrame, 30)

						end
					end
				end
			end
		end
	end

	tweenplr(originalPosition, 30)

	task.wait(0.1)

	originalPosition = nil
	wait(0.2)
	spawn(function() bringplayerup() end)
	spawn(function() disableItemAura() end)
	spawn(function() disableNoclip() end)
end

-------------------------------------------------------------------------------------------------------------------------------

function pickupalltapes()
	spawn(function() disableNoclip() end)
	spawn(function() enableNoclip() end)
	spawn(function() enableItemAura() end)
	spawn(function() bringplayerdown() end)
	wait(0.2)
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local originalPosition = humanoidRootPart.CFrame

	local currentRoom = workspace:FindFirstChild"CurrentRoom"		
	if currentRoom then
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA"Model"then
				local itemsFolder = model:FindFirstChild"Items"					
				if itemsFolder and #itemsFolder:GetChildren() > 0 then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Only pick up items named "ResearchCapsule"
						if item:IsA"Model"and item.Name == "Tape" then
							local itemCFrame = item:GetModelCFrame() * CFrame.new(0, -3.3, 0)

							tweenplr(itemCFrame, 30)

						end
					end
				end
			end
		end
	end

	tweenplr(originalPosition, 30)

	task.wait(0.1)

	originalPosition = nil
	wait(0.2)
	spawn(function() bringplayerup() end)
	spawn(function() disableItemAura() end)
	spawn(function() disableNoclip() end)
end

-------------------------------------------------------------------------------------------------------------------------------

function pickupallheals()
	spawn(function() disableNoclip() end)
	spawn(function() enableNoclip() end)
	spawn(function() enableItemAura() end)
	spawn(function() bringplayerdown() end)
	wait(0.2)
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local originalPosition = humanoidRootPart.CFrame

	local currentRoom = workspace:FindFirstChild"CurrentRoom"		
	if currentRoom then
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA"Model"then
				local itemsFolder = model:FindFirstChild"Items"					
				if itemsFolder and #itemsFolder:GetChildren() > 0 then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Only pick up items named "ResearchCapsule"
						if item:IsA"Model"and item.Name == "Bandage" or item.Name == "HealthKit" then
							local itemCFrame = item:GetModelCFrame() * CFrame.new(0, -3.3, 0)

							tweenplr(itemCFrame, 30)

						end
					end
				end
			end
		end
	end

	tweenplr(originalPosition, 30)

	task.wait(0.1)

	originalPosition = nil
	wait(0.2)
	spawn(function() bringplayerup() end)
	spawn(function() disableItemAura() end)
	spawn(function() disableNoclip() end)
end

-------------------------------------------------------------------------------------------------------------------------------

function pickupallextractionitems()
	spawn(function() disableNoclip() end)
	spawn(function() enableNoclip() end)
	spawn(function() enableItemAura() end)
	spawn(function() bringplayerdown() end)
	wait(0.2)
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local originalPosition = humanoidRootPart.CFrame

	local currentRoom = workspace:FindFirstChild"CurrentRoom"		
	if currentRoom then
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA"Model"then
				local itemsFolder = model:FindFirstChild"Items"					
				if itemsFolder and #itemsFolder:GetChildren() > 0 then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Only pick up items named "ResearchCapsule"
						if item:IsA"Model"and item.Name == "JumperCable" or item.Name == "Valve" then
							local itemCFrame = item:GetModelCFrame() * CFrame.new(0, -3.3, 0)

							tweenplr(itemCFrame, 30)

						end
					end
				end
			end
		end
	end

	tweenplr(originalPosition, 30)

	task.wait(0.1)

	originalPosition = nil
	wait(0.2)
	spawn(function() bringplayerup() end)
	spawn(function() disableItemAura() end)
	spawn(function() disableNoclip() end)
end

-------------------------------------------------------------------------------------------------------------------------------

function pickupallbaskets()
	spawn(function() disableNoclip() end)
	spawn(function() enableNoclip() end)
	spawn(function() enableItemAura() end)
	spawn(function() bringplayerdown() end)
	wait(0.2)
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local originalPosition = humanoidRootPart.CFrame

	local currentRoom = workspace:FindFirstChild"CurrentRoom"		
	if currentRoom then
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA"Model"then
				local itemsFolder = model:FindFirstChild"Items"					
				if itemsFolder and #itemsFolder:GetChildren() > 0 then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Only pick up items named "ResearchCapsule"
						if item:IsA"Model" and item.Name == "HolidayCollectibleItem" or item.Name == "Holiday Collectible Item" then
							local itemCFrame = item:GetModelCFrame() * CFrame.new(0, -3.3, 0)

							tweenplr(itemCFrame, 30)

						end
					end
				end
			end
		end
	end

	tweenplr(originalPosition, 30)

	task.wait(0.1)

	originalPosition = nil
	wait(0.2)
	spawn(function() bringplayerup() end)
	spawn(function() disableItemAura() end)
	spawn(function() disableNoclip() end)
end

-------------------------------------------------------------------------------------------------------------------------------

local istposeloopenabled = false
local tposeloopconnection

function pauseAnimations()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoid = character:WaitForChild"Humanoid"		
	local animator = humanoid:WaitForChild"Animator"		
	for _, track in pairs(animator:GetPlayingAnimationTracks()) do
		track:Stop()
	end
end

function tpose()
	if istposeloopenabled then return end
	istposeloopenabled = true

	tposeloopconnection = noxious["run service"].Heartbeat:Connect(function()
		if istposeloopenabled then
			pauseAnimations()
		end
	end)
end

function untpose()
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end

	if not istposeloopenabled then return end
	istposeloopenabled = false

	if tposeloopconnection then
		tposeloopconnection:Disconnect()
		tposeloopconnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function capitalizeName(name)
	if not name or #name == 0 then return name end
	return name:sub(1, 1):upper() .. name:sub(2):lower()
end

-------------------------------------------------------------------------------------------------------------------------------

-- Store original properties for resetting
local originalProperties = {}

-- Function to store the original properties
function storeOriginalProperties(character)
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA"BasePart"then
			originalProperties[part] = {
				Color = part.Color,
				Transparency = part.Transparency,
				Material = part.Material,
				TextureID = part:IsA"MeshPart"and part.TextureID or nil,
			}
		end
	end
end

-- Function to reset character to original properties
function resetCharacter(character)
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA"BasePart"then
			local originalProp = originalProperties[part]

			if originalProp then
				part.Color = originalProp.Color
				part.Transparency = originalProp.Transparency
				part.Material = originalProp.Material

				if part:IsA"MeshPart"then
					part.TextureID = originalProp.TextureID or ""
				end
			end
		end
	end
end

-- Stop the rainbow color loop
local rainbowLoopRunning = false
local rainbowLoopCoroutine

-- Function to stop the rainbow color loop
function stopRainbowLoop()
	if rainbowLoopRunning then
		rainbowLoopRunning = false
		if rainbowLoopCoroutine then
			coroutine.close(rainbowLoopCoroutine) -- Stop the coroutine
		end
	end
end

-- Function to start the rainbow color loop
function createRainbowLoop(character)
	rainbowLoopRunning = true
	rainbowLoopCoroutine = coroutine.create(function()
		while rainbowLoopRunning do
			local time = tick()

			for _, part in pairs(character:GetDescendants()) do
				if part:IsA"BasePart"then
					local hue = (time % 10) / 10
					local color = Color3.fromHSV(hue, 1, 1)

					part.Color = color
				end
			end

			wait(0)
		end
	end)
	coroutine.resume(rainbowLoopCoroutine)
end

function rainbowghostcharacter()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	-- Store original properties before any modifications
	storeOriginalProperties(character)

	local function removeTexturesAndChangeAppearance(character)
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA"BasePart"then
				for _, descendant in pairs(part:GetDescendants()) do
					if descendant:IsA"Decal"or descendant:IsA"Texture"then
						descendant:Destroy()
					end
				end

				if part:IsA"MeshPart"then
					part.TextureID = ""
				end

				part.Material = Enum.Material.ForceField

				if part.Name ~= "HumanoidRootPart" then
					part.Transparency = 0
				else
					part.Transparency = 1
				end
			end
		end
	end

	-- Remove textures and change appearance to ghost
	removeTexturesAndChangeAppearance(character)

	-- Start the rainbow loop
	createRainbowLoop(character)
end

-------------------------------------------------------------------------------------------------------------------------------

-- Predefined color map
local colorMap = {
	red = Color3.fromRGB(255, 0, 0), r = Color3.fromRGB(255, 0, 0),
	orange = Color3.fromRGB(255, 100, 0), o = Color3.fromRGB(255, 100, 0),
	yellow = Color3.fromRGB(255, 255, 0), y = Color3.fromRGB(255, 255, 0),
	green = Color3.fromRGB(0, 255, 0), gn = Color3.fromRGB(0, 255, 0),
	cyan = Color3.fromRGB(0, 255, 255),	c = Color3.fromRGB(0, 255, 255),
	blue = Color3.fromRGB(0, 0, 255), be = Color3.fromRGB(0, 0, 255),
	purple = Color3.fromRGB(176, 38, 255), pe = Color3.fromRGB(176, 38, 255),
	pink = Color3.fromRGB(255, 0, 255),	pk = Color3.fromRGB(255, 0, 255),
	brown = Color3.fromRGB(137,81,41), bn = Color3.fromRGB(137,81,41),
	white = Color3.fromRGB(255, 255, 255), w = Color3.fromRGB(255, 255, 255),
	gray = Color3.fromRGB(110, 110, 110), gy = Color3.fromRGB(110, 110, 110),
	black = Color3.new(0, 0, 0), bk = Color3.new(0, 0, 0),
}

-- Function to change the character's appearance to a ghost with the specified color
function ghostCharacter(color)
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	storeOriginalProperties(character)

	local function removeTexturesAndChangeAppearance(character)
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA"BasePart"then
				for _, descendant in pairs(part:GetDescendants()) do
					if descendant:IsA"Decal"or descendant:IsA"Texture"then
						descendant:Destroy()
					end
				end

				if part:IsA"MeshPart"then
					part.TextureID = ""
				end

				part.Material = Enum.Material.ForceField

				if part.Name ~= "HumanoidRootPart" then
					part.Transparency = 0
				else
					part.Transparency = 1
				end

				part.Color = color
			end
		end
	end

	removeTexturesAndChangeAppearance(character)
end

-------------------------------------------------------------------------------------------------------------------------------

function isConnieActive(generator)
	local statsFolder = generator:FindFirstChild("Stats")
	local connie = statsFolder and statsFolder:FindFirstChild("Connie")
	if connie and connie:IsA("BoolValue") and connie.Value then
		return true
	end
	return false
end

function dwtptg()
	spawn(function() disableNoclip() end)
	spawn(function() enableNoclip() end)
	spawn(function() bringplayerdown() end)
	wait(0.2)

	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, item in pairs(currentRoom:GetChildren()) do
			if item:IsA("Model") then
				local generatorsFolder = item:FindFirstChild("Generators")
				if generatorsFolder then
					local generators = {}
					for _, generator in pairs(generatorsFolder:GetChildren()) do
						if generator:IsA("Model") and generator.PrimaryPart then
							local statsFolder = generator:FindFirstChild("Stats")
							if statsFolder then
								local completedValue = statsFolder:FindFirstChild("Completed")
								if completedValue and completedValue:IsA("BoolValue") and not completedValue.Value then
									if not isConnieActive(generator) then
										table.insert(generators, generator)
									end
								end
							end
						end
					end

					if #generators > 0 then
						local randomGenerator = generators[math.random(1, #generators)]
						local generatorCFrame = randomGenerator:GetPrimaryPartCFrame()
						local forwardPosition = generatorCFrame.Position + generatorCFrame.LookVector * 4
						local targetCFrame = CFrame.new(forwardPosition, generatorCFrame.Position) * CFrame.new(0, -3.3, 0)

						-- Tween the player to the target position
						tweenplr(targetCFrame, 30) -- Adjust duration as needed
						wait(0.2)
						spawn(function() bringplayerup() end)
						spawn(function() disableNoclip() end)
					end
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Example usage to reset the character
function resetCharacterAppearance()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	-- Stop the rainbow loop and reset the character appearance
	stopRainbowLoop()
	if not stopRainbowLoop() then
		resetCharacter(character)
	end

	spawn(function()
		noxious["local player"].Character.ArmL.Transparency = 0
		noxious["local player"].Character.ArmL2.Transparency = 0
		noxious["local player"].Character.ArmR.Transparency = 0
		noxious["local player"].Character.ArmR2.Transparency = 0
		noxious["local player"].Character.Hair.Transparency = 0
		noxious["local player"].Character.HandL.Transparency = 0
		noxious["local player"].Character.HandR.Transparency = 0
		noxious["local player"].Character.Head.Transparency = 0
		noxious["local player"].Character.LegL.Transparency = 0
		noxious["local player"].Character.LegL2.Transparency = 0
		noxious["local player"].Character.LegR.Transparency = 0
		noxious["local player"].Character.LegR2.Transparency = 0
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

function spawnshrimpo()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://78124401415554"
	meshPart.TextureID = "rbxassetid://88850093113717"

	meshPart.Parent = workspace
end

-------------------------------------------------------------------------------------------------------------------------------

function spawndandy()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://107019721797906"
	meshPart.TextureID = "rbxassetid://109038384710517"

	meshPart.Parent = workspace
end

-------------------------------------------------------------------------------------------------------------------------------

function spawnveeshead()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://105769252421064"
	meshPart.TextureID = "rbxassetid://132807616662124"

	meshPart.Parent = workspace
end

-------------------------------------------------------------------------------------------------------------------------------

function spawntwisteddandy()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://131467007179018"
	meshPart.TextureID = "rbxassetid://104745646981650"

	meshPart.Parent = workspace
end

-------------------------------------------------------------------------------------------------------------------------------

function spawnfishbowl()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://86862554628040"
	meshPart.TextureID = "rbxassetid://86891402494139"

	meshPart.Parent = workspace
end

-------------------------------------------------------------------------------------------------------------------------------

function openconsole()
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/console"		
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to handle spinning
function startSpinning(speed)
	local character = noxious["local player"].Character
	if character then
		-- Remove any previous spinning effect (destroy BodyAngularVelocity)
		for _, v in pairs(character:WaitForChild"HumanoidRootPart":GetChildren()) do
			if v.Name == "Spinning" then
				v:Destroy()
			end
		end

		-- Create and apply BodyAngularVelocity for spinning
		local spin = Instance.new"BodyAngularVelocity"			
		spin.Name = "Spinning"
		spin.Parent = character:WaitForChild"HumanoidRootPart"			
		spin.MaxTorque = Vector3.new(0, math.huge, 0)  -- Allow rotation only on Y-axis
		spin.AngularVelocity = Vector3.new(0, speed, 0) -- Spin around the Y-axis


	end
end

-- Function to stop spinning
function stopSpinning()
	local character = noxious["local player"].Character
	if character then
		-- Remove the spinning effect (BodyAngularVelocity)
		for _, v in pairs(character:WaitForChild"HumanoidRootPart":GetChildren()) do
			if v.Name == "Spinning" then
				v:Destroy()
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function iy()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")()
end

-------------------------------------------------------------------------------------------------------------------------------

function joinlobby()
	local TeleportService = game:GetService"TeleportService"

	TeleportService:Teleport(noxious["dandy's world lobby"], noxious["local player"])
end

function joinrpserver()
	local TeleportService = game:GetService"TeleportService"

	TeleportService:Teleport(noxious["dandy's world roleplay server"], noxious["local player"])
end

function attemptjoinrun()
	local TeleportService = game:GetService"TeleportService"

	TeleportService:Teleport(noxious["dandy's world run"], noxious["local player"])
end

-------------------------------------------------------------------------------------------------------------------------------

function showalltooncards()
	local scrollingFrame = noxious["local player"]:WaitForChild"PlayerGui"			
		:WaitForChild"ScreenGui"			
		:WaitForChild"SelectionFrame"			
		:WaitForChild"ScrollingFrame"
	-- Loop through all children of the ScrollingFrame

	for _, child in pairs(scrollingFrame:GetChildren()) do
		-- Check if the child is a TextButton and its name is not "Template"
		if child:IsA"TextButton"and child.Name ~= "Template" then
			child.Visible = true  -- Set visibility to true
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Variables to manage the teleportation process
local atptg2tpconnection = nil
local atptg2decodingconnection = nil
local atptg2tpdelay = 1 -- Delay in seconds before teleporting after decoding starts
local atptg2ismonitoring = false -- Track if we're currently monitoring
local hastpdtoagen = false -- Track if we've already teleported during this decoding session

function atptg2ismonsterneargen(generator, radius)
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local monstersFolder = model:FindFirstChild("Monsters")
				if monstersFolder then
					for _, monster in pairs(monstersFolder:GetChildren()) do
						if monster:IsA("Model") and monster.PrimaryPart then
							local distance = (monster.PrimaryPart.Position - generator.PrimaryPart.Position).Magnitude
							if distance <= radius then
								return true
							end
						end
					end
				end
			end
		end
	end
	return false
end

function tptg()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, item in pairs(currentRoom:GetChildren()) do
			if item:IsA("Model") then
				local generatorsFolder = item:FindFirstChild("Generators")
				if generatorsFolder then
					local generators = {}
					for _, generator in pairs(generatorsFolder:GetChildren()) do
						if generator:IsA("Model") and generator.PrimaryPart then
							local statsFolder = generator:FindFirstChild("Stats")
							if statsFolder then
								local completedValue = statsFolder:FindFirstChild("Completed")
								if completedValue and completedValue:IsA("BoolValue") and not completedValue.Value then
									if not atptg2ismonsterneargen(generator, 20) and not isConnieActive(generator) then
										table.insert(generators, generator)
									end
								end
							end
						end
					end

					if #generators > 0 then
						local randomGenerator = generators[math.random(1, #generators)]
						local generatorCFrame = randomGenerator:GetPrimaryPartCFrame()
						local forwardPosition = generatorCFrame.Position + generatorCFrame.LookVector * 4
						local targetCFrame = CFrame.new(forwardPosition, generatorCFrame.Position) * CFrame.new(0, 2.3, 0)
						character:SetPrimaryPartCFrame(targetCFrame)
						hastpdtoagen = true -- Mark that we've teleported
					end
				end
			end
		end
	end
end

-- Function to handle the decoding state changes
function atptg2decodstat(deconvalue)
	-- Clean up any existing teleport connections
	if atptg2tpconnection then
		atptg2tpconnection:Disconnect()
		atptg2tpconnection = nil
	end

	if deconvalue and atptg2ismonitoring and not hastpdtoagen then
		atptg2tpconnection = noxious["run service"].Heartbeat:Connect(function(dt)
			atptg2tpdelay = atptg2tpdelay - dt
			if atptg2tpdelay <= 0 then
				atptg2tpconnection:Disconnect()
				atptg2tpconnection = nil
				tptg() -- Only teleport once
			end
		end)
	elseif not deconvalue then
		hastpdtoagen = false -- Reset teleport flag when decoding stops
	end
end

-- Make the functions global instead of returning them
function atptg2startmonitoring()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local inGamePlayerModel = workspace:FindFirstChild("InGamePlayers"):FindFirstChild(player.Name)

	local decodingObject = inGamePlayerModel:FindFirstChild("Decoding")
	if atptg2ismonitoring then return end -- Already monitoring

	atptg2ismonitoring = true
	hastpdtoagen = false -- Reset teleport flag when starting monitoring

	-- Connect to decoding changes
	atptg2decodingconnection = decodingObject.Changed:Connect(function(newValue)
		-- Reset the delay timer whenever decoding state changes
		atptg2tpdelay = 1
		atptg2decodstat(newValue ~= nil)
	end)

	-- Initial check
	atptg2decodstat(decodingObject.Value ~= nil)
end

function atptg2stopmonitoring()
	if not atptg2ismonitoring then return end -- Not monitoring

	atptg2ismonitoring = false
	hastpdtoagen = false -- Reset teleport flag when stopping monitoring

	-- Disconnect all connections
	if atptg2decodingconnection then
		atptg2decodingconnection:Disconnect()
		atptg2decodingconnection = nil
	end

	if atptg2tpconnection then
		atptg2tpconnection:Disconnect()
		atptg2tpconnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function removeanticheat()
	local ReplicatedStorage = game:GetService"ReplicatedStorage"		
	local eventsFolder = ReplicatedStorage:FindFirstChild"Events"

	if eventsFolder then
		local antiCheatTrigger = eventsFolder:FindFirstChild"AntiCheatTrigger"			
		if antiCheatTrigger then
			antiCheatTrigger:Destroy()
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to enable the visibility of the GroupRank TextLabel
function enableGroupRankVisibility()
	local groupRankLabel = character:WaitForChild"HumanoidRootPart":WaitForChild"NameTag":WaitForChild"Frame":WaitForChild"GroupRank"		
	if groupRankLabel then
		groupRankLabel.Visible = true
	end
end

-- Function to disable the visibility of the GroupRank TextLabel
function disableGroupRankVisibility()
	local groupRankLabel = character:WaitForChild"HumanoidRootPart":WaitForChild"NameTag":WaitForChild"Frame":WaitForChild"GroupRank"		
	if groupRankLabel then
		groupRankLabel.Visible = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function notifyversion()
	notify("The current version is: " .. noxious["version"], 5)
end

-------------------------------------------------------------------------------------------------------------------------------

function copydandybinlink()
	toClipboard"https://discord.com/invite/dandysworldexploits"	
end

function copyzyralink()
	toClipboard"https://discord.gg/QnkQ9q4P"	
end

function copybclink()
	toClipboard"https://discord.gg/blushcrunch"	
end

function copybklink()
	toClipboard"https://discord.gg/hbHEv8QvE9"	
end

function copynoxiouslink()
	toClipboard"https://discord.gg/p63HPpj5G4"	
end

function copygobbylink()
	toClipboard"https://discord.gg/acwaBYnSJM"	
end

-------------------------------------------------------------------------------------------------------------------------------

local callCount2 = 0

function destroynoxious()

	callCount2 += 1

	if callCount2 == 2 then
		callCount2 = 0
		noxious["toggle interface visibility button"]:Destroy()
		mainframe:Destroy()
	else
		notify("Type command again to confirm.", 5)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local maxDistanceEnabled = false

-- Function to set MaxDistance for a player's NameTag
function updateMaxDistance(player, distance)
	local function onCharacterAdded(character)
		local HRP = character:WaitForChild("HumanoidRootPart", 5)
		if HRP then
			local nameTag = HRP:FindFirstChild"NameTag"				
			if nameTag and nameTag:IsA"BillboardGui"then
				nameTag.MaxDistance = distance
			end
		end
	end

	if player.Character then
		onCharacterAdded(player.Character)
	end
	player.CharacterAdded:Connect(onCharacterAdded)
end

-- Function to update all players' NameTags with the given distance
function applyMaxDistanceToAll(distance)
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		updateMaxDistance(player, distance)
	end

	noxious["players"].PlayerAdded:Connect(function(player)
		updateMaxDistance(player, distance)
	end)
end

-- Functions to enable and disable MaxDistance
function enableMaxDistance()
	if not maxDistanceEnabled then
		maxDistanceEnabled = true
		applyMaxDistanceToAll(math.huge)
	end
end

function disableMaxDistance()
	if maxDistanceEnabled then
		maxDistanceEnabled = false
		applyMaxDistanceToAll(30) -- Set to a reasonable distance or default value
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local autosk2 = false

function skillcheck2()
	noxious["run service"].Heartbeat:Connect(function()
		if autosk2 == true then
			game.ReplicatedStorage.Events.SkillcheckUpdate.OnClientInvoke = function() return "supercomplete" end
		end
	end)
end

function enableautoskillcheck2()
	autosk2 = true
end

function disableautoskillcheck2()
	autosk2 = false
end

-------------------------------------------------------------------------------------------------------------------------------

function enablegodmode()
	local axis = 0

	game.ReplicatedStorage.Events.GetCharacterPosition.OnClientInvoke = function() 
		axis += 1
		local axisVec = Vector3.new(0,0,0)
		if axis == 1 then
			axisVec = Vector3.fromAxis(Enum.Axis.Front)
		elseif axis == 2 then
			axisVec = Vector3.fromAxis(Enum.Axis.Back)
		elseif axis == 3 then
			axisVec = Vector3.fromAxis(Enum.Axis.Left)
		elseif axis == 4 then
			axisVec = Vector3.fromAxis(Enum.Axis.Right)
		elseif axis == 5 then
			axisVec = -Vector3.fromAxis(Enum.Axis.Front)
		elseif axis == 6 then
			axisVec = -Vector3.fromAxis(Enum.Axis.Back)
		elseif axis == 7 then
			axisVec = -Vector3.fromAxis(Enum.Axis.Left)
		elseif axis == 8 then
			axisVec = -Vector3.fromAxis(Enum.Axis.Right)
			axis = 0
		end

		return axisVec * 5000
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to perform the fling action
function fling(user)
	local Targets = {user} -- target

	local AllBool = false

	local GetPlayer = function(Name)
		Name = Name:lower()
		if Name == "all" or Name == "others" then
			AllBool = true
			return
		elseif Name == "random" then
			local GetPlayers = noxious["players"]:GetPlayers()
			if table.find(GetPlayers, noxious["local player"]) then table.remove(GetPlayers, table.find(GetPlayers, noxious["local player"])) end
			return GetPlayers[math.random(#GetPlayers)]
		elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
			for _, x in next, noxious["players"]:GetPlayers() do
				if x ~= noxious["local player"] then
					if x.Name:lower():match("^" .. Name) then
						return x
					elseif x.DisplayName:lower():match("^" .. Name) then
						return x
					end
				end
			end
		else
			return
		end
	end

	local Message = function(_Title, _Text, Time)
		game:GetService("StarterGui"):SetCore("SendNotification", { Title = _Title, Text = _Text, Duration = Time })
	end

	local SkidFling = function(TargetPlayer)
		local Character = noxious["local player"].Character
		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
		local RootPart = Humanoid and Humanoid.RootPart

		local TCharacter = TargetPlayer.Character
		local THumanoid
		local TRootPart
		local THead
		local Accessory
		local Handle

		if TCharacter:FindFirstChildOfClass("Humanoid") then
			THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
		end
		if THumanoid and THumanoid.RootPart then
			TRootPart = THumanoid.RootPart
		end
		if TCharacter:FindFirstChild("Head") then
			THead = TCharacter.Head
		end
		if TCharacter:FindFirstChildOfClass("Accessory") then
			Accessory = TCharacter:FindFirstChildOfClass("Accessory")
		end
		if Accessory and Accessory:FindFirstChild("Handle") then
			Handle = Accessory.Handle
		end

		if Character and Humanoid and RootPart then
			if RootPart.Velocity.Magnitude < 50 then
				getgenv().OldPos = RootPart.CFrame
			end
			if THumanoid and THumanoid.Sit and not AllBool then
			end
			if THead then
				noxious["current camera"].CameraSubject = THead
			elseif not THead and Handle then
				noxious["current camera"].CameraSubject = Handle
			elseif THumanoid and TRootPart then
				noxious["current camera"].CameraSubject = THumanoid
			end
			if not TCharacter:FindFirstChildWhichIsA("BasePart") then
				return
			end

			local FPos = function(BasePart, Pos, Ang)
				RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
				Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
				RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
				RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
			end

			local SFBasePart = function(BasePart)
				local TimeToWait = 2
				local Time = tick()
				local Angle = 0

				repeat
					if RootPart and THumanoid then
						if BasePart.Velocity.Magnitude < 50 then
							Angle = Angle + 100

							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
						else
							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()
						end
					else
						break
					end
				until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
			end

			workspace.FallenPartsDestroyHeight = 0 / 0

			local BV = Instance.new("BodyVelocity")
			BV.Name = "EpixVel"
			BV.Parent = RootPart
			BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
			BV.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)

			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

			if TRootPart then
				SFBasePart(TRootPart)
			elseif THead then
				SFBasePart(THead)
			elseif Accessory and Handle then
				SFBasePart(Handle)
			end

			BV:Destroy()
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			noxious["current camera"].CameraSubject = Humanoid

			repeat
				RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
				Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
				Humanoid:ChangeState("GettingUp")
				table.foreach(Character:GetChildren(), function(_, x)
					if x:IsA("BasePart") then
						x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
					end
				end)
				task.wait()
			until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
			workspace.FallenPartsDestroyHeight = getgenv().FPDH
		end
	end

	getgenv().Welcome = true
	if Targets[1] then
		for _, x in next, Targets do
			GetPlayer(x)
		end
	else
		return
	end

	if AllBool then
		for _, x in next, noxious["players"]:GetPlayers() do
			SkidFling(x)
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- List of texture IDs and their respective wait times
local textureSequence = {
	{textureId = "rbxassetid://111525026642180", waitTime = 0.3},
	{textureId = "rbxassetid://131115976292268", waitTime = 0.2},
	{textureId = "rbxassetid://70596614839666", waitTime = 0.3},
	{textureId = "rbxassetid://17230708611", waitTime = 0}
}

local isRunning = false -- Flag to control whether the texture-changing process is active

-- Function to change the texture of the head in sequence
function changeHeadTextures()
	local head = character:WaitForChild"Head"		
	while isRunning do
		for _, texture in ipairs(textureSequence) do
			head.TextureID = texture.textureId  -- Change the TextureID
			wait(texture.waitTime)  -- Wait for the specified amount of time
		end
		local interval = math.random(5, 10) -- Random delay between 5 and 10 seconds
		wait(interval)
	end
end

-- Function to enable the texture-changing process
function enableTextureChange()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"
	-- Check for ToonName

	local toonName = playerModel and playerModel:FindFirstChild(noxious["local player"].Name) and playerModel[noxious["local player"].Name]:FindFirstChild"ToonName"
	-- Fallback to Config.CharacterName if ToonName is not found

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(noxious["local player"].Name) and playerModel[noxious["local player"].Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	-- Notify error if neither ToonName nor CharacterName matches "Goob"
	if (not toonName or toonName.Value ~= "Goob") and (not characterName or characterName ~= "Goob") then
		notify("You need to be Goob to enable this.", 5, "error") -- Display notification
		return
	end

	if not isRunning then
		isRunning = true
		task.spawn(changeHeadTextures) -- Run the texture-changing process in a separate thread
	end
end

-- Function to disable the texture-changing process
function disableTextureChange()
	isRunning = false
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to change the max zoom distance
function changeMaxZoomDistance(distance)
	if typeof(distance) == "number" and distance >= 0 then
		noxious["local player"].CameraMaxZoomDistance = distance
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to handle the tpwalk command
local tpwalking = false  -- Flag to control the teleport walking
local currentSpeed = 10  -- Default speed

function tpwalk(speaker, speed)
	tpwalking = true
	local chr = speaker.Character
	local hum = chr and chr:FindFirstChildWhichIsA"Humanoid"		
	local hb = noxious["run service"].Heartbeat

	-- Continuously teleport the character while tpwalking is true
	while tpwalking and chr and hum and hum.Parent do
		local delta = hb:Wait()
		if hum.MoveDirection.Magnitude > 0 then
			if speed and tonumber(speed) then
				currentSpeed = tonumber(speed) -- Update the speed if a valid number is provided
			end
			chr:TranslateBy(hum.MoveDirection * currentSpeed * delta * 10)
		end
	end
end

function untpwalk()
	tpwalking = false
end

-------------------------------------------------------------------------------------------------------------------------------

-- Variables for CF Fly
local CFloop
local CFspeed = 50 -- Default speed for Clip Frame Fly

-- Function to enable Clip Frame Fly
function enableClipFrameFly(speed)
	local character = noxious["local player"].Character
	if not character then return end

	local humanoid = character:FindFirstChildOfClass"Humanoid"		
	local head = character:WaitForChild"Head"

	if humanoid and head then
		humanoid.PlatformStand = true
		head.Anchored = true

		-- Disconnect existing loop if any
		if CFloop then CFloop:Disconnect() end

		-- Connect the Clip Frame Fly loop
		CFloop = noxious["run service"].Heartbeat:Connect(function(deltaTime)
			local moveDirection = humanoid.MoveDirection * (speed * deltaTime)
			local headCFrame = head.CFrame
			local cameraCFrame = noxious["current camera"].CFrame
			local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position

			cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
			local cameraPosition = cameraCFrame.Position
			local headPosition = headCFrame.Position

			local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
			head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
		end)
	end
end

-- Function to disable Clip Frame Fly
function disableClipFrameFly()
	local character = noxious["local player"].Character
	if not character then return end

	local humanoid = character:FindFirstChildOfClass"Humanoid"		
	local head = character:FindFirstChild"Head"

	if CFloop then CFloop:Disconnect() end -- Disconnect the loop
	if humanoid then humanoid.PlatformStand = false end
	if head then head.Anchored = false end
end

-------------------------------------------------------------------------------------------------------------------------------

function bypassanticheat()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/Next1x/Nextix./main/UniversalACBypass")()
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to hide the BillboardGui for all players
function hidedeveloperlabel()	
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		local character = player.Character
		if character then
			local HRP = character:FindFirstChild"HumanoidRootPart"				
			if HRP then
				local billboardGui = HRP:FindFirstChild"UserImageBillboard"					
				if billboardGui then
					billboardGui.Size = UDim2.new(0, 0, 0, 0) -- Hides the BillboardGui
				end
			end
		end
	end
end

-- Function to show the BillboardGui for all players
function showdeveloperlabel()	
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		local character = player.Character
		if character then
			local HRP = character:FindFirstChild"HumanoidRootPart"				
			if HRP then
				local billboardGui = HRP:FindFirstChild"UserImageBillboard"					
				if billboardGui then
					billboardGui.Size = UDim2.new(2.5, 0, 2.5, 0) -- Shows the BillboardGui
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Toggle state
local healthFrameVisibilityEnabled = false
local connection -- Variable to hold the connection

function updateLoadoutFrames(visibility, maxDistance)
	local playersFolder = workspace:FindFirstChild"InGamePlayers"		
	if not playersFolder then
		return false -- Stop if the folder is not found
	end

	for _, playerModel in ipairs(playersFolder:GetChildren()) do
		if playerModel:IsA"Model"then
			local loadoutFrame = playerModel:FindFirstChild"LoadoutFrame"				
			if loadoutFrame then
				-- Update MaxDistance
				if loadoutFrame:IsA"BillboardGui"then
					loadoutFrame.MaxDistance = maxDistance
				end

				local frame = loadoutFrame:FindFirstChild"Frame"					
				if frame then
					local healthFrame = frame:FindFirstChild"HealthFrame"						
					if healthFrame then
						healthFrame.Visible = visibility
					end
				end
			end
		end
	end

	return true -- Continue if the folder is found
end

function disableHealthFrameVisibility()
	if healthFrameVisibilityEnabled then
		healthFrameVisibilityEnabled = false
		-- Set visibility to false and reset MaxDistance to 30
		updateLoadoutFrames(false, 30)
		if connection then
			connection:Disconnect()
			connection = nil
		end
	end
end

function enableHealthFrameVisibility()
	if not healthFrameVisibilityEnabled then
		healthFrameVisibilityEnabled = true
		connection = noxious["run service"].Heartbeat:Connect(function()
			local playersFolderExists = updateLoadoutFrames(true, math.huge)
			if not playersFolderExists then
				disableHealthFrameVisibility() -- Stop the loop
			end
		end)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local isrunofs30znametagenabled = false -- Control variable to enable/disable the script

function runofs30znametag()
	local playerName = noxious["local player"].Name

	-- Locate player model and NameTag
	local playersFolder = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"		
	local playerModel = playersFolder and playersFolder:FindFirstChild(playerName)

	noxious["top frame"] = noxious["core gui"].Noxious.mainframe:WaitForChild"TopFrame"		

	local welcome = noxious["top frame"]:WaitForChild"welcome"		
	local welcome2 = noxious["top frame"]:WaitForChild"welcome2"
	-- Check for NameTag labels

	local displayNameLabel, userNameLabel
	if playerModel then
		local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"			
		local nameTag = humanoidRootPart:WaitForChild"NameTag"			
		local frame = nameTag:WaitForChild"Frame"

		displayNameLabel = frame:WaitForChild"DisplayName"			
		userNameLabel = frame:WaitForChild"UserName"		
	end

	-- Message sequence with individual delays
	local messages = {
		{display = "Sempiterna", user = "(@Sempiterna)", welcome = "Welcome, Sempiterna!", welcome2 = "(@Sempiterna)", delay = 0.55},
		{display = "Sempiterna sit", user = "(@Sempiterna sit)", welcome = "Welcome, Sempiterna sit!", welcome2 = "(@Sempiterna sit)", delay = 0.15},
		{display = "Sempiterna sit beatae,", user = "(@Sempiterna sit beatae,)", welcome = "Welcome, Sempiterna sit beatae!", welcome2 = "(@Sempiterna sit beatae,)", delay = 0.7},
		{display = "Sempiterna sit beatae, trinitati", user = "(@Sempiterna sit beatae, trinitati)", welcome = "Welcome, Sempiterna sit beatae, trinitati!", welcome2 = "(@Sempiterna sit beatae, trinitati)", delay = 0.7},
		{display = "Sempiterna sit beatae, trinitati gloria.", user = "(@Sempiterna sit beatae, trinitati gloria.)", welcome = "Welcome, Sempiterna sit beatae, trinitati gloria!", welcome2 = "(@Sempiterna sit beatae, trinitati gloria.)", delay = 0.7},
		{display = "Aequa", user = "(@Aequa)", welcome = "Welcome, Aequa!", welcome2 = "(@Aequa)", delay = 0.2},
		{display = "Aequa patri", user = "(@Aequa patri)", welcome = "Welcome, Aequa patri!", welcome2 = "(@Aequa patri)", delay = 0.4},
		{display = "Aequa patri filioque,", user = "(@Aequa patri filioque,)", welcome = "Welcome, Aequa patri filioque!", welcome2 = "(@Aequa patri filioque,)", delay = 0.7},
		{display = "Aequa patri filioque, par", user = "(@Aequa patri filioque, par)", welcome = "Welcome, Aequa patri filioque, par!", welcome2 = "(@Aequa patri filioque, par)", delay = 0.2},
		{display = "Aequa patri filioque, par decus", user = "(@Aequa patri filioque, par decus)", welcome = "Welcome, Aequa patri filioque, par decus!", welcome2 = "(@Aequa patri filioque, par decus)", delay = 0.3},
		{display = "Aequa patri filioque, par decus paraclito.", user = "(@Aequa patri filioque, par decus paraclito.)", welcome = "Welcome, Aequa patri filioque, par decus paraclito!", welcome2 = "(@Aequa patri filioque, par decus paraclito.)", delay = 0.77}
	}

	-- Main loop
	while isrunofs30znametagenabled do
		for _, message in ipairs(messages) do
			if not isrunofs30znametagenabled then return end

			-- Update NameTag labels if detected
			if displayNameLabel and userNameLabel then
				displayNameLabel.Text = message.display
				userNameLabel.Text = message.user
				welcome.Text = message.welcome
				welcome2.Text = message.welcome2
			end

			-- Update welcome labels
			if welcome then welcome.Text = message.welcome end
			if welcome2 then welcome2.Text = message.welcome2 end

			wait(message.delay)
		end
	end
end

function enablerunofs30znametag()
	isrunofs30znametagenabled = true
	runofs30znametag()
end

function disablerunofs30znametag()
	isrunofs30znametagenabled = false

	local playersFolder = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"		
	local playerModel = playersFolder and playersFolder:FindFirstChild(noxious["local player"].Name)

	-- Restore NameTag text
	if playerModel then
		local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"			
		local nameTag = humanoidRootPart:WaitForChild"NameTag"			
		local frame = nameTag:WaitForChild"Frame"

		local displayNameLabel = frame:WaitForChild"DisplayName"			
		local userNameLabel = frame:WaitForChild"UserName"

		displayNameLabel.Text = noxious["local player"].DisplayName
		userNameLabel.Text = "(@" .. noxious["local player"].Name .. ")"
	end

	-- Restore welcome text
	if noxious["top frame"] then
		local welcome = noxious["top frame"]:FindFirstChild"welcome"			
		local welcome2 = noxious["top frame"]:FindFirstChild"welcome2"

		if welcome then welcome.Text = "Welcome, " .. noxious["local player"].DisplayName .. "!" end
		if welcome2 then welcome2.Text = "(@" .. noxious["local player"].Name .. ")" end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local isrunofs30rpnameenabled = false -- Control variable to enable/disable the script

function runofs30zrpname()
	local character = noxious["local player"].Character
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end

	local nameTag = humanoidRootPart:FindFirstChild("NameTag")
	if not nameTag then return end

	local changeNameRemote = nameTag:FindFirstChild("ChangeName")
	if not changeNameRemote then return end

	-- Message sequence with individual delays
	local messages = {
		{display = "Sempiterna", delay = 0.55},
		{display = "Sempiterna sit", delay = 0.15},
		{display = "Sempiterna sit beatae,", delay = 0.7},
		{display = "Trinitati", delay = 0.7},
		{display = "Trinitati gloria.", delay = 0.7},
		{display = "Aequa", delay = 0.2},
		{display = "Aequa patri", delay = 0.4},
		{display = "Aequa patri filioque,", delay = 0.7},
		{display = "Par", delay = 0.2},
		{display = "Par decus", delay = 0.3},
		{display = "Par decus paraclito.", delay = 0.77}
	}

	-- Main loop
	while isrunofs30rpnameenabled do
		for _, message in ipairs(messages) do
			if not isrunofs30rpnameenabled then return end

			-- Send the updated name to the server
			local args = {
				[1] = message.display,
				[2] = 0
			}
			changeNameRemote:InvokeServer(unpack(args))

			wait(message.delay)
		end
	end
end

function enablerunofs30zrpname()
	isrunofs30rpnameenabled = true
	runofs30zrpname()
end

function disablerunofs30zrpname()
	isrunofs30rpnameenabled = false

	-- Restore the original name using the server
	local character = noxious["local player"].Character
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end

	local nameTag = humanoidRootPart:FindFirstChild("NameTag")
	if not nameTag then return end

	local changeNameRemote = nameTag:FindFirstChild("ChangeName")
	if not changeNameRemote then return end

	local args = {
		[1] = noxious["local player"].DisplayName, -- Original Display Name
		[2] = 0
	}
	changeNameRemote:InvokeServer(unpack(args))
end

-------------------------------------------------------------------------------------------------------------------------------

local isCheckingGates = false -- Controls whether the gate checking is active
local checkGatesConnection -- Stores the RenderStepped connection

function TP(Target)
	workspace.Gravity = 0
	local Character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	if typeof(Target) == "Instance" and Target:IsA"BasePart"then
		Character:SetPrimaryPartCFrame(Target.CFrame)
	end
	workspace.Gravity = 196.2
end

function checkGates()
	for _, model in ipairs(workspace:GetChildren()) do
		if model:IsA"Model"and model.Name:lower() == "gate" then
			local guiPart = model:FindFirstChild"GuiPart"				
			if guiPart and guiPart:IsA"BasePart"then
				local surfaceGui = guiPart:FindFirstChild"SurfaceGui"					
				if surfaceGui then
					local frame = surfaceGui:FindFirstChild"Frame"						
					if frame then
						local playersTextLabel = frame:FindFirstChild"players"							
						if playersTextLabel and playersTextLabel:IsA"TextLabel"then
							local textValue = playersTextLabel.Text

							if textValue == "7/8" or textValue == "7 / 8" or textValue == "7/ 8" or textValue == "7 /8" then
								TP(guiPart)
								return
							end
						end
					end
				end
			end
		end
	end
end

-- Function to start checking gates
function StartCheckingGates()
	if not isCheckingGates then
		isCheckingGates = true
		checkGatesConnection = noxious["run service"].RenderStepped:Connect(function()
			checkGates()
		end)
	end
end

-- Function to stop checking gates
function StopCheckingGates()
	if isCheckingGates then
		isCheckingGates = false
		if checkGatesConnection then
			checkGatesConnection:Disconnect()
			checkGatesConnection = nil
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function reloadnoxious()
	getgenv().dswdnoxiousloaded = false
	closeAllNotifications()
	stoprunningconnections()

	spawn(function()
		noxious["toggle interface visibility button"].Visible = false
		mainframe.Visible = false
		wait(6)
		noxious["toggle interface visibility button"]:Destroy()
		mainframe:Destroy()
	end)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/riddance-club/noxious-hub-revival/refs/heads/main/script.lua"))()
end

local reloadcommandcallcount = 0

function reloadnoxiouscommand()

	reloadcommandcallcount += 1

	if reloadcommandcallcount == 1 then
		notify("Type command again to confirm.", 5)
	end
	if reloadcommandcallcount == 2 then
		reloadnoxious()
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local healthChatConnection2 -- Holds the connection for the monitoring loop
local chatnotifiedPlayers2 = {} -- Table to track players already chatted about

-- Helper function to chat the low health message
function lowhealthchatnotifying(username, characterName)
	notify(username .. " (" .. characterName .. ") is at 1 heart.", 5)
end

-- Function to start monitoring
function enableHealthNotifier()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if healthChatConnection2 or not inGamePlayers then
		return -- Already monitoring or folder not found
	end

	healthChatConnection2 = noxious["run service"].RenderStepped:Connect(function()
		for _, model in ipairs(inGamePlayers:GetChildren()) do
			-- Check if the child is a valid player model (including local player)
			if model:IsA("Model") then
				-- Find the Humanoid within the model
				local humanoid = model:FindFirstChildOfClass("Humanoid")
				local config = model:FindFirstChild("Config")
				local characterName = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"

				if humanoid and humanoid.Health == 1 and not chatnotifiedPlayers2[model.Name] then
					-- Chat and mark the player as chatted about
					lowhealthchatguiding(model.Name, characterName)
					chatnotifiedPlayers2[model.Name] = true
				elseif humanoid and humanoid.Health > 1 then
					-- Reset notification if the player's health increases
					chatnotifiedPlayers2[model.Name] = nil
				end
			end
		end
	end)
end

-- Function to stop monitoring
function disableHealthNotifier()
	if healthChatConnection2 then
		healthChatConnection2:Disconnect()
		healthChatConnection2 = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local healthChatConnection -- Holds the connection for the monitoring loop
local chatnotifiedPlayers = {} -- Table to track players already chatted about

-- Helper function to chat the low health message
function lowhealthchatguiding(username, characterName)
	local ChatService = game:GetService("TextChatService")
	local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")
	if channel then
		channel:SendAsync(username .. " (" .. characterName .. ") is at 1 heart.")
	end
end

-- Function to start monitoring
function enableHealthChatMonitor()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if healthChatConnection or not inGamePlayers then
		return -- Already monitoring or folder not found
	end

	healthChatConnection = noxious["run service"].RenderStepped:Connect(function()
		for _, model in ipairs(inGamePlayers:GetChildren()) do
			-- Check if the child is a valid player model (including local player)
			if model:IsA("Model") then
				-- Find the Humanoid within the model
				local humanoid = model:FindFirstChildOfClass("Humanoid")
				local config = model:FindFirstChild("Config")
				local characterName = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"

				if humanoid and humanoid.Health == 1 and not chatnotifiedPlayers[model.Name] then
					-- Chat and mark the player as chatted about
					lowhealthchatguiding(model.Name, characterName)
					chatnotifiedPlayers[model.Name] = true
				elseif humanoid and humanoid.Health > 1 then
					-- Reset notification if the player's health increases
					chatnotifiedPlayers[model.Name] = nil
				end
			end
		end
	end)
end

-- Function to stop monitoring
function disableHealthChatMonitor()
	if healthChatConnection then
		healthChatConnection:Disconnect()
		healthChatConnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local deadChatConnection2 -- Holds the connection for the monitoring loop
local trackedPlayers2 = {} -- Table to track players and their character names
local playerCharacterNames2 = {} -- Table to track the saved character names for players

-- Helper function to chat the player removal message
function deadnotifier(username, characterName)
	notify(username .. " (" .. characterName .. ") died or left the game.", 5)
end

-- Function to start monitoring
function enableDeadnotifier()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if deadChatConnection2 or not inGamePlayers then
		return -- Already monitoring or folder not found
	end

	deadChatConnection2 = noxious["run service"].RenderStepped:Connect(function()
		local currentPlayers2 = {}

		-- Track all players currently in the folder
		for _, model in ipairs(inGamePlayers:GetChildren()) do
			if model:IsA("Model") then
				local config = model:FindFirstChild("Config")
				local characterName = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"
				currentPlayers2[model.Name] = characterName

				-- Save the character name if it's a new player or hasn't been saved yet
				if not playerCharacterNames2[model.Name] then
					playerCharacterNames2[model.Name] = characterName
				end
			end
		end

		-- Check for players who have been removed
		for username, characterName in pairs(playerCharacterNames2) do
			if not currentPlayers2[username] then
				-- Chat the removal message with the saved character name and remove from tracking
				deadnotifier(username, characterName)
				playerCharacterNames2[username] = nil -- Remove the character name after the player is removed
			end
		end
	end)
end

-- Function to stop monitoring
function disableDeadNotifier()
	if deadChatConnection2 then
		deadChatConnection2:Disconnect()
		deadChatConnection2 = nil
		playerCharacterNames2 = {} -- Clear the saved character names
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local deadChatConnection -- Holds the connection for the monitoring loop
local trackedPlayers = {} -- Table to track players and their character names
local playerCharacterNames = {} -- Table to track the saved character names for players

-- Helper function to chat the player removal message
function deadchatguiding(username, characterName)
	local ChatService = game:GetService("TextChatService")
	local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")
	if channel then
		channel:SendAsync(username .. " (" .. characterName .. ") died or left the game.")
	end
end

-- Function to start monitoring
function enableDeadChatMonitor()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if deadChatConnection or not inGamePlayers then
		return -- Already monitoring or folder not found
	end

	deadChatConnection = noxious["run service"].RenderStepped:Connect(function()
		local currentPlayers = {}

		-- Track all players currently in the folder
		for _, model in ipairs(inGamePlayers:GetChildren()) do
			if model:IsA("Model") then
				local config = model:FindFirstChild("Config")
				local characterName = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"
				currentPlayers[model.Name] = characterName

				-- Save the character name if it's a new player or hasn't been saved yet
				if not playerCharacterNames[model.Name] then
					playerCharacterNames[model.Name] = characterName
				end
			end
		end

		-- Check for players who have been removed
		for username, characterName in pairs(playerCharacterNames) do
			if not currentPlayers[username] then
				-- Chat the removal message with the saved character name and remove from tracking
				deadchatguiding(username, characterName)
				playerCharacterNames[username] = nil -- Remove the character name after the player is removed
			end
		end
	end)
end

-- Function to stop monitoring
function disableDeadChatMonitor()
	if deadChatConnection then
		deadChatConnection:Disconnect()
		deadChatConnection = nil
		playerCharacterNames = {} -- Clear the saved character names
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local notifiedTwisteds2 = {}
local notifyTwistedsEnabled2 = false -- Flag to control the loop
local twistedsMessageSent2 = false -- Flag to track if the Twisteds message has been sent
local lastModelTimestamp2 = tick() -- Timestamp for tracking when the last model was added
local modelGenerationCooldown2 = 0.5 -- Time threshold in seconds (0.5 seconds)

-- Helper function to remove "Monster" from the monster name
function cleanMonsterName(name)
	-- Special handling for "RazzleDazzle"
	if name == "RazzleDazzleMonster" then
		return "Razzle & Dazzle"
	end
	return name:gsub("Monster", "") -- Removes the word "Monster" from the name
end

-- Function to start monitoring Twisteds
function startTwistedsNotifierLoop()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	-- Loop to check for Twisteds
	while notifyTwistedsEnabled2 do
		local newTwisteds2 = {} -- Store new Twisteds for this cycle
		local totalMonsters2 = 0 -- Count the total number of monsters
		local newModelsGenerated2 = false -- Flag to track if new models have been generated in this cycle

		-- Check if CurrentRoom is empty
		if #currentRoom:GetChildren() == 0 then
			notifiedTwisteds2 = {} -- Reset notifiedTwisteds when CurrentRoom is empty
			twistedsMessageSent2 = false -- Reset the message sent flag
		else
			-- Collect all Twisteds
			for _, model in ipairs(currentRoom:GetChildren()) do
				if model:IsA("Model") then
					local monstersFolder = model:FindFirstChild("Monsters")
					if monstersFolder then
						for _, monster in ipairs(monstersFolder:GetChildren()) do
							totalMonsters2 += 1 -- Increment the count of monsters
							local cleanedName = cleanMonsterName(monster.Name) -- Clean the name

							-- If it's a new Twisted, add it to the list and mark it as notified
							if not notifiedTwisteds2[cleanedName] then
								table.insert(newTwisteds2, cleanedName)
								notifiedTwisteds2[cleanedName] = true
								newModelsGenerated2 = true -- New model has been generated in this cycle
								lastModelTimestamp2 = tick() -- Update the timestamp when a new model is generated
							end
						end
					end
				end
			end
		end

		-- If there are more than one monster and the message hasn't been sent yet
		if totalMonsters2 > 1 and #newTwisteds2 > 0 and not twistedsMessageSent2 then
			-- Send the list of new Twisteds only once
			wait(0.5)
			notify("Twisteds: " .. table.concat(newTwisteds2, ", "), 5)
			wait(0.5)
			twistedsMessageSent2 = true -- Mark the message as sent
		end

		-- If no monsters are found, reset the twistedsMessageSent flag
		if totalMonsters2 == 0 then
			twistedsMessageSent2 = false
		end

		-- Cleanup Twisteds that no longer exist in the room
		for twistedName2, _ in pairs(notifiedTwisteds2) do
			local stillExists = false
			for _, model in ipairs(currentRoom:GetChildren()) do
				local monstersFolder = model:FindFirstChild("Monsters")
				if monstersFolder and monstersFolder:FindFirstChild(twistedName2) then
					stillExists = true
					break
				end
			end
			if not stillExists then
				notifiedTwisteds2[twistedName2] = nil -- Remove from the list if no longer present
			end
		end

		task.wait(0.1) -- Small delay between checks
	end
end

-- Function to enable the loop
function enableTwistedsNotifier()
	if notifyTwistedsEnabled2 then return end -- Prevent starting the loop if already running
	notifyTwistedsEnabled2 = true
	twistedsMessageSent2 = false -- Reset the flag when the loop is enabled
	task.spawn(startTwistedsNotifierLoop) -- Use task.spawn to run the loop asynchronously
end

-- Function to disable the loop
function disableTwistedsNotifier()
	notifyTwistedsEnabled2 = false
end

-------------------------------------------------------------------------------------------------------------------------------

local notifiedTwisteds = {}
local notifyTwistedsEnabled = false -- Flag to control the loop
local twistedsMessageSent = false -- Flag to track if the Twisteds message has been sent
local lastModelTimestamp = tick() -- Timestamp for tracking when the last model was added
local modelGenerationCooldown = 0.5 -- Time threshold in seconds (0.5 seconds)

-- Function to start monitoring Twisteds
function startTwistedsNotifyLoop()
	local ChatService = game:GetService("TextChatService")
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	-- Loop to check for Twisteds
	while notifyTwistedsEnabled do
		local newTwisteds = {} -- Store new Twisteds for this cycle
		local totalMonsters = 0 -- Count the total number of monsters
		local newModelsGenerated = false -- Flag to track if new models have been generated in this cycle

		-- Check if CurrentRoom is empty
		if #currentRoom:GetChildren() == 0 then
			notifiedTwisteds = {} -- Reset notifiedTwisteds when CurrentRoom is empty
			twistedsMessageSent = false -- Reset the message sent flag
		else
			-- Collect all Twisteds
			for _, model in ipairs(currentRoom:GetChildren()) do
				if model:IsA("Model") then
					local monstersFolder = model:FindFirstChild("Monsters")
					if monstersFolder then
						for _, monster in ipairs(monstersFolder:GetChildren()) do
							totalMonsters += 1 -- Increment the count of monsters
							local cleanedName = cleanMonsterName(monster.Name) -- Clean the name

							-- If it's a new Twisted, add it to the list and mark it as notified
							if not notifiedTwisteds[cleanedName] then
								table.insert(newTwisteds, cleanedName)
								notifiedTwisteds[cleanedName] = true
								newModelsGenerated = true -- New model has been generated in this cycle
								lastModelTimestamp = tick() -- Update the timestamp when a new model is generated
							end
						end
					end
				end
			end
		end

		-- If there are more than one monster and the message hasn't been sent yet
		if totalMonsters > 1 and #newTwisteds > 0 and not twistedsMessageSent then
			local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")
			if channel then
				-- Send the list of new Twisteds only once
				wait(0.5)
				channel:SendAsync("Twisteds: " .. table.concat(newTwisteds, ", "))
				wait(0.5)
				twistedsMessageSent = true -- Mark the message as sent
			end
		end

		-- If no monsters are found, reset the twistedsMessageSent flag
		if totalMonsters == 0 then
			twistedsMessageSent = false
		end

		-- Cleanup Twisteds that no longer exist in the room
		for twistedName, _ in pairs(notifiedTwisteds) do
			local stillExists = false
			for _, model in ipairs(currentRoom:GetChildren()) do
				local monstersFolder = model:FindFirstChild("Monsters")
				if monstersFolder and monstersFolder:FindFirstChild(twistedName) then
					stillExists = true
					break
				end
			end
			if not stillExists then
				notifiedTwisteds[twistedName] = nil -- Remove from the list if no longer present
			end
		end

		task.wait(0.1) -- Small delay between checks
	end
end

-- Function to enable the loop
function enableTwistedsChatGuider()
	if notifyTwistedsEnabled then return end -- Prevent starting the loop if already running
	notifyTwistedsEnabled = true
	twistedsMessageSent = false -- Reset the flag when the loop is enabled
	task.spawn(startTwistedsNotifyLoop) -- Use task.spawn to run the loop asynchronously
end

-- Function to disable the loop
function disableTwistedsChatGuider()
	notifyTwistedsEnabled = false
end

-------------------------------------------------------------------------------------------------------------------------------

local chattedItems2 = {}

local targetItems2 = {
	"Bandage",
	"HealthKit",
	"SmokeBomb",
	"EjectButton",
	"Valve",
	"Box chocolates",
	"AirHorn",
	"EnigmaCandy",
	"JumperCable",
	"PopBottle"
}

local itemNameMapping = {
	["HealthKit"] = "Medkit",
	["SmokeBomb"] = "Smoke bomb",
	["EjectButton"] = "Eject button",
	["ChocolateBox"] = "Box of chocolates",
	["AirHorn"] = "Air horn",
	["EnigmaCandy"] = "Enigma candy",
	["JumperCable"] = "Jumper cable",
	["PopBottle"] = "Bottle of pop",
}

local chatItemsLoopEnabled2 = false -- Flag to control the loop

function startNotifyItemsLoop()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	-- Start the loop to check for items
	while chatItemsLoopEnabled2 do
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					local itemsFound2 = {}
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Check if the item is in the targetItems table and hasn't been chatted about yet
						if table.find(targetItems2, item.Name) and not chattedItems2[item.Name] then
							table.insert(itemsFound2, item.Name)
							chattedItems2[item.Name] = true
						end
					end

					-- Chat out detected items
					if #itemsFound2 > 0 then
						-- Replace item names based on the mapping (HealthKit -> Medkit)
						for i, itemName2 in ipairs(itemsFound2) do
							if itemNameMapping[itemName2] then
								itemsFound2[i] = itemNameMapping[itemName2]
							end
						end

						-- Send chat message
						wait(0.5)
						notify(table.concat(itemsFound2, ", ") .. " has been detected.", 5)
					end
				end
			end
		end

		-- Cleanup items that no longer exist in the room
		for itemName2, _ in pairs(chattedItems2) do
			local stillExists2 = false
			for _, model in ipairs(currentRoom:GetChildren()) do
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder and itemsFolder:FindFirstChild(itemName2) then
					stillExists2 = true
					break
				end
			end
			if not stillExists2 then
				chattedItems2[itemName2] = nil
			end
		end

		task.wait(0.1) -- Small delay between checks
	end
end

-- Function to enable the loop
function enableRareItemsNotifier()
	if chatItemsLoopEnabled2 then return end -- Prevent starting the loop if it's already running
	chatItemsLoopEnabled2 = true
	task.spawn(startNotifyItemsLoop) -- Use task.spawn to run the loop asynchronously
end

-- Function to disable the loop
function disableRareItemsNotifier()
	chatItemsLoopEnabled2 = false
end

-------------------------------------------------------------------------------------------------------------------------------

local chattedItems = {}

local targetItems = {
	"Bandage",
	"HealthKit",
	"SmokeBomb",
	"EjectButton",
	"Valve",
	"Box chocolates",
	"AirHorn",
	"EnigmaCandy",
	"JumperCable",
	"PopBottle"
}

local chatItemsLoopEnabled = false -- Flag to control the loop

function startChatItemsLoop()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	-- Start the loop to check for items
	while chatItemsLoopEnabled do
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					local itemsFound = {}
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Check if the item is in the targetItems table and hasn't been chatted about yet
						if table.find(targetItems, item.Name) and not chattedItems[item.Name] then
							table.insert(itemsFound, item.Name)
							chattedItems[item.Name] = true
						end
					end

					-- Chat out detected items
					if #itemsFound > 0 then
						local ChatService = game:GetService("TextChatService")
						local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")
						if channel then
							-- Replace item names based on the mapping (HealthKit -> Medkit)
							for i, itemName in ipairs(itemsFound) do
								if itemNameMapping[itemName] then
									itemsFound[i] = itemNameMapping[itemName]
								end
							end

							-- Send chat message
							wait(0.5)
							channel:SendAsync(table.concat(itemsFound, ", ") .. " has been detected.")
						end
					end
				end
			end
		end

		-- Cleanup items that no longer exist in the room
		for itemName, _ in pairs(chattedItems) do
			local stillExists = false
			for _, model in ipairs(currentRoom:GetChildren()) do
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder and itemsFolder:FindFirstChild(itemName) then
					stillExists = true
					break
				end
			end
			if not stillExists then
				chattedItems[itemName] = nil
			end
		end

		task.wait(0.1) -- Small delay between checks
	end
end

-- Function to enable the loop
function enableRareItemsChatGuider()
	if chatItemsLoopEnabled then return end -- Prevent starting the loop if it's already running
	chatItemsLoopEnabled = true
	task.spawn(startChatItemsLoop) -- Use task.spawn to run the loop asynchronously
end

-- Function to disable the loop
function disableRareItemsChatGuider()
	chatItemsLoopEnabled = false
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to find a player by partial username or select a random player
function findPlayer(name)
	local players = noxious["players"]:GetPlayers()

	if name == "random" then
		return players[math.random(1, #players)]
	end

	for _, player in ipairs(players) do
		if player.Name:lower():sub(1, #name) == name:lower() then
			return player
		end
	end

	return nil
end

-- Function to run active ability for a specified target
function runActiveAbility(targetName)
	local localPlayer = game:GetService("Players").LocalPlayer
	local targetPlayer = findPlayer(targetName)

	if not targetPlayer then
		return
	end

	if not targetPlayer.Character then
		return
	end

	local args = {
		[1] = localPlayer.Character,
		[2] = CFrame.new(-85.81144714355469, 146.0568084716797, 4.6407670974731445) 
			* CFrame.Angles(1.1656561582640279e-07, -0.4113893210887909, -2.73472409162423e-08),
		[3] = targetPlayer.Character
	}

	local success, err = pcall(function()
		game:GetService("ReplicatedStorage").Events.AbilityEvent:InvokeServer(unpack(args))
	end)

	if success then
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local activeConnections = {}

-- Function to set collisions for a character
function setCollisions(character, canCollide)
	for _, descendant in ipairs(character:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant.CanCollide = canCollide
		end
	end
end

-- Function to disable collisions for a character
function disableCollisions(character)
	setCollisions(character, false)
end

-- Function to enable collisions for a character
function enableCollisions(character)
	setCollisions(character, true)
end

-- Function to set up anti-fling for a player
function setupPlayerAntiFling(player)
	if player == noxious["local player"] then
		return
	end

	-- Disconnect previous connection if it exists
	if activeConnections[player] then
		activeConnections[player]:Disconnect()
		activeConnections[player] = nil
	end

	-- Monitor the player's character
	local function monitorCharacter()
		if player.Character then
			disableCollisions(player.Character)

			-- Listen for new parts being added
			activeConnections[player] = player.Character.DescendantAdded:Connect(function(descendant)
				if descendant:IsA("BasePart") then
					descendant.CanCollide = false
				end
			end)
		end
	end

	-- Handle existing and future character changes
	player.CharacterAdded:Connect(monitorCharacter)
	monitorCharacter()
end

-- Function to clean up a player's anti-fling setup
function cleanupPlayerAntiFling(player)
	if activeConnections[player] then
		activeConnections[player]:Disconnect()
		activeConnections[player] = nil
	end
	if player.Character then
		enableCollisions(player.Character)
	end
end

-- Enable anti-fling
function antifling()
	-- Set up anti-fling for all current players
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		setupPlayerAntiFling(player)
	end

	-- Monitor new players joining
	noxious["players"].PlayerAdded:Connect(setupPlayerAntiFling)
	noxious["players"].PlayerRemoving:Connect(cleanupPlayerAntiFling)
end

-- Disable anti-fling
function unantifling()
	-- Restore collisions for all players
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		cleanupPlayerAntiFling(player)
	end

	-- Clear all active connections
	activeConnections = {}
end

-------------------------------------------------------------------------------------------------------------------------------

local walkflinging = false

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function disablewalkfling()
	walkflinging = false
end

function enablewalkfling()
	local humanoid = noxious["local player"].Character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		humanoid.Died:Connect(function()
			disablewalkfling()
		end)
	end

	local walkflinging = true
	repeat noxious["run service"].Heartbeat:Wait()
		local character = noxious["local player"].Character
		local root = getRoot(character)
		local vel, movel = nil, 0.1

		while not (character and character.Parent and root and root.Parent) do
			noxious["run service"].Heartbeat:Wait()
			character = noxious["local player"].Character
			root = getRoot(character)
		end

		vel = root.Velocity
		root.Velocity = vel * 1000000 + Vector3.new(0, 1000000, 0)

		noxious["run service"].RenderStepped:Wait()
		if character and character.Parent and root and root.Parent then
			root.Velocity = vel
		end

		noxious["run service"].Stepped:Wait()
		if character and character.Parent and root and root.Parent then
			root.Velocity = vel + Vector3.new(0, movel, 0)
			movel = movel * -1
		end
	until walkflinging == false
end

-------------------------------------------------------------------------------------------------------------------------------

function view(target)
	local camera = noxious["current camera"]

	-- Resolve the target player
	local function getTargetPlayer(target)
		if target == "me" then
			return noxious["local player"]
		elseif target == "random" then
			local allPlayers = noxious["players"]:GetPlayers()
			if #allPlayers > 0 then
				return allPlayers[math.random(1, #allPlayers)]
			end
		elseif target == "others" then
			return nil
		elseif target == "all" then
			return nil -- Invalid for this command
		else
			-- Find player by partial name
			for _, player in ipairs(noxious["players"]:GetPlayers()) do
				if player.Name:lower():find(target:lower(), 1, true) then
					return player
				end
			end
		end
		return nil
	end

	local targetPlayer = getTargetPlayer(target)

	if not targetPlayer or targetPlayer == noxious["local player"] then
		return
	end

	-- Find the target's head
	local targetCharacter = targetPlayer.Character
	if targetCharacter and targetCharacter:FindFirstChild("Head") then
		camera.CameraSubject = targetCharacter.Head
	end
end

function unview()
	local camera = noxious["current camera"]

	-- Ensure the local player exists and has a head
	local character = noxious["local player"].Character
	if character and character:FindFirstChild("Head") then
		camera.CameraSubject = character.Head
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function changeresearch(monsterName, newValue)
	local function capitalizeName(name)
		if not name or #name == 0 then return name end
		return name:sub(1, 1):upper() .. name:sub(2):lower()
	end

	local replicatedStorage = game:GetService("ReplicatedStorage")
	local localPlayer = noxious["local player"]

	-- Format the monster name
	local formattedMonsterName = capitalizeName(monsterName) .. "Monster"

	-- Validate the newValue as a number
	newValue = tonumber(newValue)

	-- Navigate to the player's data file in ReplicatedStorage
	local playerDataFolder = replicatedStorage:FindFirstChild("PlayerData")

	local playerFile = playerDataFolder:FindFirstChild(tostring(localPlayer.UserId))

	local researchFolder = playerFile:FindFirstChild("Research")

	local monster = researchFolder:FindFirstChild(formattedMonsterName)

	-- Change the monster's value
	monster.Value = newValue
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to change the player's camera FOV
function changeCameraFOV(fov)
	local playerCamera = noxious["current camera"]
	if playerCamera then
		playerCamera.FieldOfView = fov
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function sproutcutout()
	noxious["local player"].Character.Body.MeshId = "rbxassetid://14685582359"
	noxious["local player"].Character.Body.TextureID = "rbxassetid://14685585037"
	noxious["local player"].Character.ArmL.Transparency = 1
	noxious["local player"].Character.ArmL2.Transparency = 1
	noxious["local player"].Character.ArmR.Transparency = 1
	noxious["local player"].Character.ArmR2.Transparency = 1
	noxious["local player"].Character.Hair.Transparency = 1
	noxious["local player"].Character.HandL.Transparency = 1
	noxious["local player"].Character.HandR.Transparency = 1
	noxious["local player"].Character.Head.Transparency = 1
	noxious["local player"].Character.LegL.Transparency = 1
	noxious["local player"].Character.LegL2.Transparency = 1
	noxious["local player"].Character.LegR.Transparency = 1
	noxious["local player"].Character.LegR2.Transparency = 1
end

function dandycutout()
	noxious["local player"].Character.Body.MeshId = "rbxassetid://14685044008"
	noxious["local player"].Character.Body.TextureID = "rbxassetid://14685046783"
	noxious["local player"].Character.ArmL.Transparency = 1
	noxious["local player"].Character.ArmL2.Transparency = 1
	noxious["local player"].Character.ArmR.Transparency = 1
	noxious["local player"].Character.ArmR2.Transparency = 1
	noxious["local player"].Character.Hair.Transparency = 1
	noxious["local player"].Character.HandL.Transparency = 1
	noxious["local player"].Character.HandR.Transparency = 1
	noxious["local player"].Character.Head.Transparency = 1
	noxious["local player"].Character.LegL.Transparency = 1
	noxious["local player"].Character.LegL2.Transparency = 1
	noxious["local player"].Character.LegR.Transparency = 1
	noxious["local player"].Character.LegR2.Transparency = 1
end

function shellycutout()
	noxious["local player"].Character.Body.MeshId = "rbxassetid://14687965432"
	noxious["local player"].Character.Body.TextureID = "rbxassetid://14687967976"
	noxious["local player"].Character.ArmL.Transparency = 1
	noxious["local player"].Character.ArmL2.Transparency = 1
	noxious["local player"].Character.ArmR.Transparency = 1
	noxious["local player"].Character.ArmR2.Transparency = 1
	noxious["local player"].Character.Hair.Transparency = 1
	noxious["local player"].Character.HandL.Transparency = 1
	noxious["local player"].Character.HandR.Transparency = 1
	noxious["local player"].Character.Head.Transparency = 1
	noxious["local player"].Character.LegL.Transparency = 1
	noxious["local player"].Character.LegL2.Transparency = 1
	noxious["local player"].Character.LegR.Transparency = 1
	noxious["local player"].Character.LegR2.Transparency = 1
end

function pebblecutout()
	noxious["local player"].Character.Body.MeshId = "rbxassetid://14685339427"
	noxious["local player"].Character.Body.TextureID = "rbxassetid://14685341892"
	noxious["local player"].Character.ArmL.Transparency = 1
	noxious["local player"].Character.ArmL2.Transparency = 1
	noxious["local player"].Character.ArmR.Transparency = 1
	noxious["local player"].Character.ArmR2.Transparency = 1
	noxious["local player"].Character.Hair.Transparency = 1
	noxious["local player"].Character.HandL.Transparency = 1
	noxious["local player"].Character.HandR.Transparency = 1
	noxious["local player"].Character.Head.Transparency = 1
	noxious["local player"].Character.LegL.Transparency = 1
	noxious["local player"].Character.LegL2.Transparency = 1
	noxious["local player"].Character.LegR.Transparency = 1
	noxious["local player"].Character.LegR2.Transparency = 1
end

function astrocutout()
	noxious["local player"].Character.Body.MeshId = "rbxassetid://14688397977"
	noxious["local player"].Character.Body.TextureID = "rbxassetid://14688394959"
	noxious["local player"].Character.ArmL.Transparency = 1
	noxious["local player"].Character.ArmL2.Transparency = 1
	noxious["local player"].Character.ArmR.Transparency = 1
	noxious["local player"].Character.ArmR2.Transparency = 1
	noxious["local player"].Character.Hair.Transparency = 1
	noxious["local player"].Character.HandL.Transparency = 1
	noxious["local player"].Character.HandR.Transparency = 1
	noxious["local player"].Character.Head.Transparency = 1
	noxious["local player"].Character.LegL.Transparency = 1
	noxious["local player"].Character.LegL2.Transparency = 1
	noxious["local player"].Character.LegR.Transparency = 1
	noxious["local player"].Character.LegR2.Transparency = 1
end

function veecutout()
	noxious["local player"].Character.Body.MeshId = "rbxassetid://14687687688"
	noxious["local player"].Character.Body.TextureID = "rbxassetid://14687691668"
	noxious["local player"].Character.ArmL.Transparency = 1
	noxious["local player"].Character.ArmL2.Transparency = 1
	noxious["local player"].Character.ArmR.Transparency = 1
	noxious["local player"].Character.ArmR2.Transparency = 1
	noxious["local player"].Character.Hair.Transparency = 1
	noxious["local player"].Character.HandL.Transparency = 1
	noxious["local player"].Character.HandR.Transparency = 1
	noxious["local player"].Character.Head.Transparency = 1
	noxious["local player"].Character.LegL.Transparency = 1
	noxious["local player"].Character.LegL2.Transparency = 1
	noxious["local player"].Character.LegR.Transparency = 1
	noxious["local player"].Character.LegR2.Transparency = 1
end

-------------------------------------------------------------------------------------------------------------------------------

function valentinesshelly()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(noxious["local player"].Name) and playerModel[noxious["local player"].Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(noxious["local player"].Name) and playerModel[noxious["local player"].Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Shelly") and (not characterName or characterName ~= "Shelly") then
		notify("You need to be Shelly to enable this.", 5, "error")
		return
	end
	spawn(function() notify("Textures made by @gigi_hilton on Discord.", 5) end)
	spawn(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/scripts/refs/heads/main/Protected_4193210726309669.txt"))() end)

	while wait() do
		local playerModel = workspace.Players:FindFirstChild(noxious["local player"].Name)
		if playerModel then
			local head = playerModel:FindFirstChild("Head")
			if head and head:IsA("MeshPart") then
				if head.TextureID == "rbxassetid://18199044961" then
					head.TextureID = "rbxassetid://78001174238814"
				end
			end
		end
	end
end

function valentinesgigi()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(noxious["local player"].Name) and playerModel[noxious["local player"].Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(noxious["local player"].Name) and playerModel[noxious["local player"].Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Gigi") and (not characterName or characterName ~= "Gigi") then
		notify("You need to be Gigi to enable this.", 5, "error")
		return
	end
	spawn(function() notify("Textures made by @gigi_hilton on Discord.", 5) end)
	spawn(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/scripts/refs/heads/main/Protected_9863293693457255.txt"))() end)

	while wait() do
		local playerModel = workspace.Players:FindFirstChild(noxious["local player"].Name)
		if playerModel then
			local head = playerModel:FindFirstChild("Head")
			if head and head:IsA("MeshPart") then
				if head.TextureID == "rbxassetid://83540766287737" then
					head.TextureID = "rbxassetid://116185337235882"
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function twistedpoppy()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(noxious["local player"].Name) and playerModel[noxious["local player"].Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(noxious["local player"].Name) and playerModel[noxious["local player"].Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Poppy") and (not characterName or characterName ~= "Poppy") then
		notify("You need to be Poppy to enable this.", 5, "error")
		return
	end
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/scripts/refs/heads/main/Protected_8863153958472817.txt"))()
end

-------------------------------------------------------------------------------------------------------------------------------

function headless()
	spawn(function() noxious["local player"].Character.Hair.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.Head.Transparency = 1 end)
end

function unheadless()
	spawn(function() noxious["local player"].Character.Hair.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.Head.Transparency = 0 end)
end

-------------------------------------------------------------------------------------------------------------------------------

function bodiless()
	spawn(function() noxious["local player"].Character.ArmL.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.ArmL2.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.ArmR.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.ArmR2.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.HandL.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.Body.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.HandR.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.LegL.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.LegL2.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.LegR.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.LegR2.Transparency = 1 end)
end

function unbodiless()
	spawn(function() noxious["local player"].Character.ArmL.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.ArmL2.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.ArmR.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.ArmR2.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.HandL.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.Body.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.HandR.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.LegL.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.LegL2.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.LegR.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.LegR2.Transparency = 0 end)
end

-------------------------------------------------------------------------------------------------------------------------------

function armless()
	spawn(function() noxious["local player"].Character.ArmL.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.ArmL2.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.ArmR.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.ArmR2.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.HandL.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.HandR.Transparency = 1 end)
end

function unarmless()
	spawn(function() noxious["local player"].Character.ArmL.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.ArmL2.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.ArmR.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.ArmR2.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.HandL.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.HandR.Transparency = 0 end)
end

-------------------------------------------------------------------------------------------------------------------------------

function legless()
	spawn(function() noxious["local player"].Character.LegL.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.LegL2.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.LegR.Transparency = 1 end)
	spawn(function() noxious["local player"].Character.LegR2.Transparency = 1 end)
end

function unlegless()
	spawn(function() noxious["local player"].Character.LegL.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.LegL2.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.LegR.Transparency = 0 end)
	spawn(function() noxious["local player"].Character.LegR2.Transparency = 0 end)
end

-------------------------------------------------------------------------------------------------------------------------------

-- Variables to store leg properties
local savedtextureid, savedmeshid, savedsize
local legR, legR2

-- Function to safely get the character and necessary parts
function waitForCharacter()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

	-- Wait until LegR and LegR2 exist
	repeat task.wait() until character:FindFirstChild("LegR") and character:FindFirstChild("LegR2")

	return character
end

-- Function to save leg properties
function saveLegProperties()
	local character = waitForCharacter()
	legR = character:FindFirstChild("LegR")
	legR2 = character:FindFirstChild("LegR2")

	if legR and legR2 then
		savedtextureid = legR.TextureID
		savedmeshid = legR.MeshId
		savedsize = legR.Size
	end
end

-- Initial save and set up respawn handling
task.spawn(saveLegProperties)
noxious["local player"].CharacterAdded:Connect(saveLegProperties)

-- Function to apply Korblox transformation
function korblox()
	task.spawn(function()
		local character = waitForCharacter()
		legR = character:FindFirstChild("LegR")
		legR2 = character:FindFirstChild("LegR2")

		if legR and legR2 then
			legR.TextureID = "http://www.roblox.com/asset/?id=18615141631"
			legR.MeshId = "rbxassetid://18615136546"
			legR.Size = Vector3.new(0.24, 1.0, 0.232)
			legR2.Transparency = 1
		end
	end)
end

-- Function to revert the changes
function unkorblox()
	task.spawn(function()
		local character = waitForCharacter()
		legR = character:FindFirstChild("LegR")
		legR2 = character:FindFirstChild("LegR2")

		if legR and legR2 then
			legR.TextureID = savedtextureid
			legR.MeshId = savedmeshid
			legR.Size = savedsize
			legR2.Transparency = 0
		end
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

local toggleKey
local keybindReady = false -- Indicates if the keybind is ready to use

function toggleInterface()
	mainframe.Visible = not mainframe.Visible
end

-- Function to handle keybind setting
function setToggleKeybind()
	notify("Press a key.", 5)
	local connection
	connection = noxious["user input service"].InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.Return then
			else
				toggleKey = input.KeyCode
				keybindReady = false -- Disable keybind initially
				notify("Toggle interface keybind: " .. tostring(toggleKey):gsub("Enum.KeyCode.", ""), 5)
				connection:Disconnect() -- Stop listening for key presses

				-- Enable the keybind after 1 second
				task.delay(1, function()
					keybindReady = true
				end)
			end
		end
	end)
end

-- Function to disable the toggle keybind
function clearToggleKeybind()
	toggleKey = nil -- Remove the keybind
	keybindReady = false -- Disable keybind functionality
	notify("Toggle keybind has been cleared.", 5)
end

-------------------------------------------------------------------------------------------------------------------------------

-- Function to generate a random sequence of numbers
function generateRandomNumbers(count, minValue, maxValue)
	local numbers = {}
	for _ = 1, count do
		table.insert(numbers, math.random(minValue, maxValue))
	end
	return table.concat(numbers, ", ") -- Combine numbers into a comma-separated string
end

local codecallcount = 0

function code()
	codecallcount += 1

	if codecallcount == 1 then
		for _ = 1, 5 do
			local randomNumbers = generateRandomNumbers(5, 0, 100) -- Generate 5 random numbers in the range of 0-100
			notify(randomNumbers, 5) -- Show the notification for 5 seconds
			wait(1.5)
		end
	else
		local screenGui = Instance.new"ScreenGui"		
		screenGui.Parent = noxious["player gui"]

		local stop = Instance.new"Frame"		
		stop.Parent = screenGui
		stop.BackgroundTransparency = 0
		stop.Visible = true
		stop.BackgroundColor3 = Color3.new(0, 0, 0)
		stop.Size = UDim2.new(1, 0, 1, 60)
		stop.Position = UDim2.new(0, 0, 0, -60)
		stop.ZIndex = 6969

		noxious["local player"]:Kick("[Noxious Hub]: Stop.")
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function showdiscardedgui()
	local selectionFrame2 = noxious["local player"].PlayerGui.ScreenGui:FindFirstChild("SelectionFrame2")

	if selectionFrame2 then
		selectionFrame2.Visible = true
	end
end

function hidediscardedgui()
	local selectionFrame2 = noxious["local player"].PlayerGui.ScreenGui:FindFirstChild("SelectionFrame2")

	if selectionFrame2 then
		selectionFrame2.Visible = false
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function antikick()
	if not hookmetamethod then 
		return notify("Your exploit does not support this command.", 5, "error")
	end
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == noxious["local player"] and method:lower() == "kick" then
			return error("Expected ':' not '.' calling member function Kick", 2)
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == noxious["local player"] and getnamecallmethod():lower() == "kick" then
			return
		end
		return oldhmmnc(self, ...)
	end)

	notify("This command does not work 100% at the time, and is only effective on LocalScripts.", 5, "warning")
end

-------------------------------------------------------------------------------------------------------------------------------

function executeAllPinnedCommands()
	-- Check if there are any pinned commands
	if #noxious["command lists"]["Favorited Commands"] == 0 then
		notify("No pinned commands to execute.", 5, "error")
		return
	end

	-- Execute each pinned command asynchronously
	for _, pinnedCommand in ipairs(noxious["command lists"]["Favorited Commands"]) do
		task.spawn(function()
			-- Extract the main command before ", " or before " -"
			local mainCommand = pinnedCommand:match("^(.-),") or pinnedCommand:match("^(.-)%s*%-") or pinnedCommand

			-- Execute the extracted command
			handlecommands(mainCommand)
		end)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function stoprunningconnections()
	spawn(function() unview() end)
	spawn(function() unantifling() end)
	spawn(function() untpwalk() end)
	spawn(function() disablerunofs30zrpname() end)
	spawn(function() disableglitchedrpname() end)
	spawn(function() disableTwistedsChatGuider() end)
	spawn(function() disableRareItemsChatGuider() end)
	spawn(function() disableTwistedsNotifier() end)
	spawn(function() disableRareItemsNotifier() end)
	spawn(function() disableHealthNotifier() end)
	spawn(function() disableDeadNotifier() end)
	spawn(function() disableMaxDistance() end)
	spawn(function() hidediscardedgui() end)
	spawn(function() disableTextureChange() end)
	spawn(function() disableHealthChatMonitor() end)
	spawn(function() disableDeadChatMonitor() end)
	spawn(function() disableglitchedrpname() end)
	spawn(function() stopSpinning() end)
	spawn(function() StopCheckingGates() end)
	spawn(function() resetCharacterAppearance() end)
	spawn(function() disableItemAura() end)
	spawn(function() disableGroupRankVisibility() end)
	spawn(function() disableautoshellyboost() end)
	spawn(function() disablelooprunspeed() end)
	spawn(function() disableautouseitemsloop() end)
	spawn(function() stopFlying() end)
	spawn(function() disableClipFrameFly() end)
	spawn(function() disableautouseactiveability() end)
	spawn(function() disablejumping() end)
	spawn(function() disableglitchednametag() end)
	spawn(function() disableNoclip() end)
	spawn(function() toggleHandling(false) end)
	spawn(function() hideadminpanel() end)
	spawn(function() dwdatpte() end)
	spawn(function() showesptext() end)
	spawn(function() showesp() end)
	spawn(function() disableAllEsp() end)
	spawn(function() disableFullBright() end)
	spawn(function() disablealternativefullbright() end)
	spawn(function() dwunhead() end)
	spawn(function() dwunhsit() end)
	spawn(function() dwunhsit2() end)
	spawn(function() dwunhjsit() end)
	spawn(function() unbottombang() end)
	spawn(function() disablewalkfling() end)
	spawn(function() hideRadius("KillRadius") end)
	spawn(function() hideRadius("InstantRadius") end)
	spawn(function() hideRadius("VisionRadius") end)
	spawn(function() hideRadius("HearingRadius") end)
	spawn(function() dwunbang() end)
	spawn(function() disableAnimation() end)
	spawn(function() dwundance() end)
	spawn(function() hidedeveloperlabel() end)
	spawn(function() disableHealthFrameVisibility() end)
	spawn(function() untpose() end)
	spawn(function() clearToggleKeybind() end)
	spawn(function() showdeveloperlabel() end)
	spawn(function() unbodiless() end)
	spawn(function() unheadless() end)
	spawn(function() unarmless() end)
	spawn(function() unlegless() end)
	spawn(function() unkorblox() end)
	spawn(function() disableautoskillcheck2() end)
	spawn(function() disableAllAnimationLoops() end)
	spawn(function() disablegeneratoraura() end)
	spawn(function() disableItemAura() end)
end

function forcestoprunningconnections()
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e force stop commands"		
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function handlecommands(command)
	local args = string.split(command, " ")
	local lwr = string.lower(command)

	if lwr == "enableloopextractinganimation" or lwr == "elea" then
		enableextractinganimationloop()
	elseif lwr == "enableloopabilityanimation" or lwr == "elaa" then
		enableabilityanimationloop()
	elseif lwr == "enableloopidleanimation" or lwr == "elia" then
		enableidleanimationloop()
	elseif lwr == "enableloopquirkanimation" or lwr == "elqa" then
		enablequirkanimationloop()
	elseif lwr == "enablelooprunninganimation" or lwr == "elra" then
		enablerunninganimationloop()
	elseif lwr == "enableloopwalkinganimation" or lwr == "elwa" then
		enablewalkinganimationloop()
	elseif lwr == "disableloopextractinganimation" or lwr == "dlea" then
		disableextractinganimationloop()
	elseif lwr == "disableloopabilityanimation" or lwr == "dlaa" then
		disableabilityanimationloop()
	elseif lwr == "disableloopidleanimation" or lwr == "dlia" then
		disableidleanimationloop()
	elseif lwr == "disableloopquirkanimation" or lwr == "dlqa" then
		disablequirkanimationloop()
	elseif lwr == "disablelooprunninganimation" or lwr == "dlra" then
		disablerunninganimationloop()
	elseif lwr == "disableloopwalkinganimation" or lwr == "dlwa" then
		disablewalkinganimationloop()

		-- give flip tools
	elseif args[1] == "settogglekeybind" or args[1] == "stkb" then
		setToggleKeybind()
	elseif args[1] == "cleartogglekeybind" or args[1] == "ctkb" then
		clearToggleKeybind()

		-- execute pinned commands
	elseif lwr == "executeallfavoritedcommands" or lwr == "eafc" then
		executeAllPinnedCommands()

		-- run active ability
	elseif (args[1] == "runactiveability" or args[1] == "raa") and args[2] then
		runActiveAbility(args[2])

		-- reset
	elseif lwr == "reset" or lwr == "re" then
		reset()

		-- fake research value
	elseif (args[1] == "changeresearch" or args[1] == "cr") and args[2] and tonumber(args[3]) then
		local monsterName = args[2]
		local newValue = tonumber(args[3])
		changeresearch(monsterName, newValue)

		-- view and unview
	elseif args[1] == "view" or args[1] == "spectate" then
		local target = args[2]
		unview()
		view(args[2])
	elseif args[1] == "unview" or args[1] == "unspectate" then
		unview()

		-- change fov
	elseif args[1] == "fov" and tonumber(args[2]) then
		local fovValue = tonumber(args[2])
		changeCameraFOV(fovValue)
	elseif lwr == "enableantikick" or lwr == "eak" then
		antikick()
	elseif lwr == "disableantikick" or lwr == "dak" then
		notify("Antikick disabled.", 5)

		-- show and hide discarded gui
	elseif lwr == "showdiscardedgui" or lwr == "sdg" then
		if game.PlaceId == noxious["dandy's world run"] then
			showdiscardedgui()
		else
			notify("You cannot run this command in the lobby or in a roleplay server.", 5, "warning")
		end
	elseif lwr == "hidediscardedgui" or lwr == "hdg" then
		if game.PlaceId == noxious["dandy's world run"] then
			hidediscardedgui()
		else
			notify("You cannot run this command in the lobby or in a roleplay server.", 5, "warning")
		end

		-- hide or show visualizers
	elseif lwr == "enableallvisualizers" or lwr == "eav" then
		spawn(function() showradius("KillRadius") end)
		spawn(function() showradius("InstantRadius") end)
		spawn(function() showradius("VisionRadius") end)
		spawn(function() showradius("HearingRadius") end)
	elseif lwr == "disableallvisualizers" or lwr == "dav" then
		spawn(function() hideRadius("KillRadius") end)
		spawn(function() hideRadius("InstantRadius") end)
		spawn(function() hideRadius("VisionRadius") end)
		spawn(function() hideRadius("HearingRadius") end)
	elseif lwr == "showkillvisualizer" or lwr == "skv" then
		spawn(function() showradius("KillRadius") end)
	elseif lwr == "hidekillvisualizer" or lwr == "hkv" then
		spawn(function() hideRadius("KillRadius") end)
	elseif lwr == "shownearvisualizer" or lwr == "snv" then
		spawn(function() showradius("InstantRadius") end)
	elseif lwr == "hidenearvisualizer" or lwr == "hnv" then
		spawn(function() hideRadius("InstantRadius") end)
	elseif lwr == "showvisionvisualizer" or lwr == "svv" then
		spawn(function() showradius("VisionRadius") end)
	elseif lwr == "hidevisionvisualizer" or lwr == "hvv" then
		spawn(function() hideRadius("VisionRadius") end)
	elseif lwr == "showhearingvisualizer" or lwr == "shv" then
		spawn(function() showradius("HearingRadius") end)
	elseif lwr == "hidehearingvisualizer" or lwr == "hhv" then
		spawn(function() hideRadius("HearingRadius") end)
	elseif lwr == "die" then
		killplayer()

		-- enable and disable walkfling
	elseif lwr == "enablewalkfling" or lwr == "ewf" then
		enablewalkfling()
	elseif lwr == "disablewalkfling" or lwr == "dwf" then
		disablewalkfling()

		-- enable and disable auto rejoin
	elseif lwr == "antifling" or lwr == "af" then
		antifling()
	elseif lwr == "unantifling" or lwr == "uaf" then
		unantifling()

		-- fling
	elseif args[1] == "fling" and args[2] then
		fling(args[2])

		-- close all notifications
	elseif lwr == "can" or lwr == "closeallnotifications" then
		closeAllNotifications()

		-- become twisted poppy
	elseif lwr == "tps" or lwr == "twistedpoppyskin" then
		twistedpoppy()

		-- enable and disable glitched rp name
	elseif lwr == "egrpn" or lwr == "enableglitchedrpname" then
		enableglitchedrpname()
	elseif lwr == "dgrpn" or lwr == "disableglitchedrpname" then
		disableglitchedrpname()

		-- enable and disable low health chat guider
	elseif lwr == "elhcg" or lwr == "enablelowhealthchatguider" then
		enableHealthChatMonitor()
	elseif lwr == "dlhcg" or lwr == "disablelowhealthchatguider" then
		disableHealthChatMonitor()

		-- enable and disable dead player chat guider
	elseif lwr == "edpcg" or lwr == "enabledeadplayerchatguider" then
		enableDeadChatMonitor()
	elseif lwr == "ddpcg" or lwr == "disabledeadplayerchatguider" then
		disableDeadChatMonitor()

		-- enable and disable twisteds chat guider
	elseif lwr == "etcg" or lwr == "enabletwistedschatguider" then
		enableTwistedsChatGuider()
	elseif lwr == "dtcg" or lwr == "disabletwistedschatguider" then
		disableTwistedsChatGuider()

		-- enable and disable rare items chat guider
	elseif lwr == "ericg" or lwr == "enablerareitemschatguider" then
		enableRareItemsChatGuider()
	elseif lwr == "dricg" or lwr == "disablerareitemschatguider" then
		disableRareItemsChatGuider()

		-- enable and disable low health notifier
	elseif lwr == "elhn" or lwr == "enablelowhealthnotifier" then
		enableHealthNotifier()
	elseif lwr == "dlhn" or lwr == "disablelowhealthnotifier" then
		disableHealthNotifier()

		-- enable and disable dead player notifier
	elseif lwr == "edpn" or lwr == "enabledeadplayernotifier" then
		enableDeadnotifier()
	elseif lwr == "ddpn" or lwr == "disabledeadplayernotifier" then
		disableDeadNotifier()

		-- enable and disable twisteds notifier
	elseif lwr == "etn" or lwr == "enabletwistedsnotifier" then
		enableTwistedsNotifier()
	elseif lwr == "dtn" or lwr == "disabletwistedsnotifier" then
		disableTwistedsNotifier()

		-- enable and disable rare items notifier
	elseif lwr == "erin" or lwr == "enablerareitemsnotifier" then
		enableRareItemsNotifier()
	elseif lwr == "drin" or lwr == "disablerareitemsnotifier" then
		disableRareItemsNotifier()

		-- enable and disable chat guider
	elseif lwr == "ecg" or lwr == "enablechatguider" then
		spawn(function()
			enableHealthChatMonitor()
		end)
		spawn(function()
			enableDeadChatMonitor()
		end)
		spawn(function()
			enableRareItemsChatGuider()
		end)
		spawn(function()
			enableTwistedsChatGuider()
		end)
	elseif lwr == "dcg" or lwr == "disablechatguider" then
		spawn(function()
			disableHealthChatMonitor()
		end)
		spawn(function()
			disableDeadChatMonitor()
		end)
		spawn(function()
			disableTwistedsChatGuider()
		end)
		spawn(function()
			disableRareItemsChatGuider()
		end)

		-- enable and disable notifier
	elseif lwr == "en" or lwr == "enablenotifier" then
		spawn(function()
			enableHealthNotifier()
		end)
		spawn(function()
			enableDeadnotifier()
		end)
		spawn(function()
			enableRareItemsNotifier()
		end)
		spawn(function()
			enableTwistedsNotifier()
		end)
	elseif lwr == "dn" or lwr == "disablenotifier" then
		spawn(function()
			disableHealthNotifier()
		end)
		spawn(function()
			disableDeadNotifier()
		end)
		spawn(function()
			disableTwistedsNotifier()
		end)
		spawn(function()
			disableRareItemsNotifier()
		end)

		-- stop running connections
	elseif lwr == "stoprunningconnections" or lwr == "src" then
		stoprunningconnections()

		-- hide and show developer label
	elseif lwr == "hidedeveloperlabel" or lwr == "hdl" then
		hidedeveloperlabel()
	elseif lwr == "showdeveloperlabel" or lwr == "sdl" then
		showdeveloperlabel()

		-- cutout skins
	elseif lwr == "sproutcutout" or lwr == "stc" then
		sproutcutout()
	elseif lwr == "dandycutout" or lwr == "dyc" then
		dandycutout()
	elseif lwr == "shellycutout" or lwr == "syc" then
		shellycutout()
	elseif lwr == "pebblecutout" or lwr == "pec" then
		pebblecutout()
	elseif lwr == "astrocutout" or lwr == "aoc" then
		astrocutout()		
	elseif lwr == "veecutout" or lwr == "vec" then
		veecutout()

		-- enable and disable run of s30z nametag
	elseif lwr == "erosnt" or lwr == "enablerunofs30znametag" then
		enablerunofs30znametag()
	elseif lwr == "drosnt" or lwr == "disablerunofs30znametag" then
		disablerunofs30znametag()

		-- enable and disable run of s30z rp name
	elseif lwr == "erosrpn" or lwr == "enablerunofs30zrpname" then
		enablerunofs30zrpname()
	elseif lwr == "drosrpn" or lwr == "disablerunofs30zrpname" then
		disablerunofs30zrpname()

		-- headless and unheadless
	elseif lwr == "headless" or lwr == "hl" then
		headless()
	elseif lwr == "unheadless" or lwr == "uhl" then
		unheadless()

		-- armless and unarmless
	elseif lwr == "armless" or lwr == "al" then
		armless()
	elseif lwr == "unarmless" or lwr == "ual" then
		unarmless()

		-- legless and unlegless
	elseif lwr == "legless" or lwr == "ll" then
		legless()
	elseif lwr == "unlegless" or lwr == "ull" then
		unlegless()

		-- korblox and unkorblox
	elseif lwr == "korblox" or lwr == "k" then
		korblox()
	elseif lwr == "unkorblox" or lwr == "uk" then
		unkorblox()

		-- bodiless and unbodiless
	elseif lwr == "bodiless" or lwr == "bl" then
		bodiless()
	elseif lwr == "unbodiless" or lwr == "ubl" then
		unbodiless()

		-- hide and show players' health stats
	elseif lwr == "showplayerhealth" or lwr == "sph" then
		enableHealthFrameVisibility()
	elseif lwr == "hideplayerhealth" or lwr == "hph" then
		disableHealthFrameVisibility()

		-- enable and disable auto teleport to a 7 player elevator
	elseif lwr == "enableautoteleportto7playerelevator" or lwr == "eatpt7pe" then
		StartCheckingGates()
	elseif lwr == "disableautoteleportto7playerelevator" or lwr == "datpt7pe" then
		StopCheckingGates()
		-- bypass anticheat
	elseif lwr == "bypassanticheat" or lwr == "bac" then
		notify("Script can break sometimes.", 5, "warning")
		wait(1.5)
		notify("Executing the command twice will crash / freeze the game.", 5, "warning")
		bypassanticheat()

		-- (un)tpwalk
	elseif args[1] == "tpwalk" and tonumber(args[2]) then
		untpwalk()
		wait()
		local speed = tonumber(args[2]) or 1
		local speaker = noxious["local player"]
		tpwalk(speaker, speed)
	elseif args[1] == "untpwalk" then
		untpwalk()

		-- notify version
	elseif lwr == "notifyv" or lwr == "notifyversion" then
		notifyversion()

		-- destroy noxious
	elseif lwr == "destroynxs" or lwr == "destroynoxious" then
		destroynoxious()

		-- valentines skins
	elseif lwr == "valentinesshellyskin" or lwr == "vss" then
		valentinesshelly()
	elseif lwr == "valentinesgigiskin" or lwr == "vgs" then
		valentinesgigi()

		-- ...
	elseif lwr == "code" or lwr == "polaris" then
		code()

		-- reload noxious
	elseif lwr == "reloadnxs" or lwr == "reloadnoxious" then
		reloadnoxiouscommand()

		-- copy dandy bin discord server link
	elseif lwr == "dbd" or lwr == "dandybindiscord" then
		copydandybinlink()

		-- copy zyra discord server link
	elseif lwr == "hd" or lwr == "hexdiscord" then
		copyzyralink()

		-- copy blushcrunch studio discord server link
	elseif lwr == "bcd" or lwr == "blushcrunchdiscord" then
		copybclink()
		
	elseif lwr == "rd" or lwr == "riddancediscord" then
		copybklink()

		-- copy noxious discord server link
	elseif lwr == "nd" or lwr == "noxiousdiscord" then
		copynoxiouslink()

		-- enable and disable infinite nametag maxdistance
	elseif lwr == "einmd" or lwr == "enableinfinitenametagmaxdistance" then
		enableMaxDistance()
	elseif lwr == "dinmd" or lwr == "disableinfinitenametagmaxdistance" then
		disableMaxDistance()

		-- enable and disable goob frog blinking
	elseif lwr == "egfb" or lwr == "enablegoobfrogblinking" then
		enableTextureChange()
	elseif lwr == "dgfb" or lwr == "disablegoobfrogblinking" then
		disableTextureChange()

		-- maxzoom
	elseif args[1] == "maxzoom" and tonumber(args[2]) then
		local zoomDistance = tonumber(args[2]) or 0
		changeMaxZoomDistance(zoomDistance)

		-- spin
	elseif args[1] == "spin" then
		local speed = tonumber(args[2]) or 5
		startSpinning(speed)

	elseif args[1] == "unspin" then
		stopSpinning()

		-- fake toon cards
	elseif (args[1] == "ftc" or args[1] == "faketooncard") and args[2] then
		local name = args[2]
		local capitalizedName = capitalizeName(name)

		-- Check if the capitalizedName is "razzledazzle" or "razzle and dazzle"
		if capitalizedName:lower() == "razzledazzle" or capitalizedName:lower() == "razzleanddazzle" or capitalizedName:lower() == "rnd" then
			capitalizedName = "RazzleDazzle"
		end

		if capitalizedName:lower() == "pebble" or capitalizedName:lower() == "pebbles" then
			capitalizedName = "Pebble"
		end

		local customArgs = {
			[1] = capitalizedName
		}

		game:GetService"ReplicatedStorage":WaitForChild"Events":WaitForChild"Voted":InvokeServer(unpack(customArgs))

		-- pick up all items
	elseif lwr == "puai" or lwr == "pickupallitems" then
		pickupallitems()

		-- pick up all heals
	elseif lwr == "puah" or lwr == "pickupallheals" then
		pickupallheals()

		-- pick up all extraction items
	elseif lwr == "puaei" or lwr == "pickupallextractionitems" then
		pickupallextractionitems()

		-- pick up all baskets
	elseif lwr == "puab" or lwr == "pickupallbaskets" then
		pickupallbaskets()

		-- remove anticheat
	elseif lwr == "rac" or lwr == "removeanticheat" then
		removeanticheat()
		notify("The anticheat isn't fully removed.", 5, "warning")

		-- sing thick of it
	elseif lwr == "stoi" or lwr == "singthickofit" then
		singthickofit()

		-- enable godmode
	elseif lwr == "egm" or lwr == "enablegodmode" then
		notify("Script made by Deka.", 5)
		enablegodmode()

		-- show all toon cards
	elseif lwr == "satc" or lwr == "showalltooncards" then
		showalltooncards()

		-- join lobby
	elseif lwr == "jl" or lwr == "joinlobby" then
		joinlobby()

		-- join roleplay server
	elseif lwr == "jrps" or lwr == "joinrpserver" then
		joinrpserver()

		-- attempt to join a run
	elseif lwr == "jr" or lwr == "joinrun" then
		attemptjoinrun()

		-- infinite yield
	elseif lwr == "iy" or lwr == "infiniteyield" then
		iy()

		-- boost fps
	elseif lwr == "boostfps" or lwr == "antilag"  then
		boostfps()

		-- reposition gui
	elseif lwr == "reposnxs" or lwr == "repositionnoxious" then
		repositionnoxious()
		
	elseif lwr == "noxiousgithub" or lwr == "gitnxs" then
		noxiousgithub()

		-- open console
	elseif lwr == "openconsole" or lwr == "console" then
		openconsole()

		-- ghost characters
	elseif lwr == "gc rb" or lwr == "gc rainbow" or lwr == "ghostcharacter rainbow" or lwr == "ghostcharacterc rb" then
		resetCharacterAppearance()
		rainbowghostcharacter()
	elseif (args[1] == "ghostcharacter" or args[1] == "gc") and args[2] then
		local colorName = args[2]:lower()
		local color = colorMap[colorName]

		if color then
			resetCharacterAppearance()
			ghostCharacter(color)
		end

	elseif lwr == "restorecharacter" or lwr == "rec" then
		resetCharacterAppearance()

		-- spawn stuff
	elseif lwr == "spawnshrimpo" or lwr == "sps" then
		spawnshrimpo()
	elseif lwr == "spawndandy" or lwr == "spd" then
		spawndandy()
	elseif lwr == "spawntv" or lwr == "sptv" then
		spawnveeshead()
	elseif lwr == "spawntdandy" or lwr == "sptd" then
		spawntwisteddandy()
	elseif lwr == "spawnfishbowl" or lwr == "spfb" then
		spawnfishbowl()

		-- hide gui
	elseif lwr == "hidenxs" or lwr == "hidenoxious" then
		toggleVisibility()

		-- enable and disable item aura
	elseif lwr == "eia" or lwr == "enableitemaura" then
		enableItemAura()
	elseif lwr == "dia" or lwr == "disableitemaura" then
		disableItemAura()

		-- enable and disable generator aura
	elseif lwr == "ega" or lwr == "enablegeneratoraura" then
		enablegeneratoraura()
	elseif lwr == "dga" or lwr == "disablegeneratoraura" then
		disablegeneratoraura()

		-- enable and disable mobile tap indicators
	elseif lwr == "emti" or lwr == "enablemobiletapindicators" then
		enableMTI()
	elseif lwr == "dmti" or lwr == "disablemobiletapindicators" then
		disableMTI()

		-- show and hide owner tag
	elseif lwr == "sot" or lwr == "showownertag" then
		enableGroupRankVisibility()
	elseif lwr == "hot" or lwr == "hideownertag" then
		disableGroupRankVisibility()

		-- get research
	elseif lwr == "gr" or lwr == "getresearch" then
		gatherresearch()

		-- to player
	elseif (args[1] == "to" or args[1] == "teleportto") and args[2] then
		teleportBehindPlayer(args[2])

		-- mobile keyboard
	elseif lwr == "mk" or lwr == "mobilekeyboard" then
		mobilekeyboard()

		-- enable and disable loop run speed
	elseif lwr == "elrs" or lwr == "enablelooprunspeed" then
		enablelooprunspeed()
	elseif lwr == "dlrs" or lwr == "disablelooprunspeed" then
		disablelooprunspeed()
	elseif lwr == "elms" or lwr == "enableloopmaxspeed" then
		enableloopmaxspeed()
	elseif lwr == "dlms" or lwr == "disableloopmaxspeed" then
		disableloopmaxspeed()

		-- enable and disable auto use items
	elseif lwr == "eaui" or lwr == "enableautouseitems" then
		enableautouseitemsloop()
	elseif lwr == "daui" or lwr == "disableautouseitems" then
		disableautouseitemsloop()

		-- enable and disable fly
	elseif args[1] == "fly" then
		local flySpeed = tonumber(args[2]) or 50
		stopFlying()
		startFlying(flySpeed)
	elseif args[1] == "unfly" then
		stopFlying()

		-- enable and disable cffly
	elseif args[1] == "clipframefly" or args[1] == "cffly" then
		local speed = tonumber(args[2]) or CFspeed -- Use provided speed or default speed
		enableClipFrameFly(speed)
	elseif args[1] == "unclipframefly" or args[1] == "uncffly" then
		disableClipFrameFly()

		-- anti skillcheck
	elseif lwr == "ask" or lwr == "antiskillcheck" then
		antiskillcheck()

		-- enable and disable auto use active ability
	elseif lwr == "eaua" or lwr == "enableautouseability" then
		enableautouseactiveability()
	elseif lwr == "daua" or lwr == "disableautouseability" then
		disableautouseactiveability()

		-- open gui elements
	elseif lwr == "ods" or lwr == "opendandysshop" then
		opendandysshop()
	elseif lwr == "otls" or lwr == "opentoonlicenseshop" then
		opentoonlicenseshop()
	elseif lwr == "ots" or lwr == "opentrinketshop" then
		opentrinketshop()
	elseif lwr == "oss" or lwr == "openskinsstore" then
		openskinstore()
	elseif lwr == "oms" or lwr == "openmerchstore" then
		openmerchstore()
	elseif lwr == "osc" or lwr == "openskinchanger" then
		openskinchanger()
	elseif lwr == "oosu" or lwr == "openoldskinunlocker" then
		openskincollection()

		-- unlock all toons
	elseif lwr == "uato" or lwr == "unlockalltoons" then
		unlockalltoons()
		reset()

		-- unlock all trinkets
	elseif lwr == "uatr" or lwr == "unlockalltrinkets" then
		unlockalltrinkets()
		reset()

		-- copy gobby link
	elseif lwr == "gd" or lwr == "gobbydiscord" then
		copygobbylink()

		-- fake values
	elseif args[1] == "fblackouts" or args[1] == "fakeblackouts" and tonumber(args[2]) then
		local desiredValue = tonumber(args[2])
		local playerId = noxious["local player"].UserId
		fakeblackouts(playerId, desiredValue)
	elseif args[1] == "fichor" or args[1] == "fakeichor" and tonumber(args[2]) then
		local desiredValue = tonumber(args[2])
		local playerId = noxious["local player"].UserId
		changeCoinValue(playerId, desiredValue)
	elseif args[1] == "fdip" or args[1] == "fakedandyitemspurchased" and tonumber(args[2]) then
		local desiredValue = tonumber(args[2])
		local playerId = noxious["local player"].UserId
		fakedandyitemspurchased(playerId, desiredValue)
	elseif args[1] == "fft" or args[1] == "fakefloorstraveled" and tonumber(args[2]) then
		local desiredValue = tonumber(args[2])
		local playerId = noxious["local player"].UserId
		fakefloorstraveled(playerId, desiredValue)
	elseif args[1] == "fmf" or args[1] == "fakemachinesfinished" and tonumber(args[2]) then
		local desiredValue = tonumber(args[2])
		local playerId = noxious["local player"].UserId
		fakemachinescompleted(playerId, desiredValue)
	elseif args[1] == "fff" or args[1] == "fakefurthestfloor" and tonumber(args[2]) then
		local desiredValue = tonumber(args[2])
		local playerId = noxious["local player"].UserId
		fakefurthestfloor(playerId, desiredValue)
	elseif args[1] == "fipu" or args[1] == "fakeitemspickedup" and tonumber(args[2]) then
		local desiredValue = tonumber(args[2])
		local playerId = noxious["local player"].UserId
		fakeitemspickedup(playerId, desiredValue)

		-- change user, display and owner text
	elseif (args[1] == "cuser" or args[1] == "changeusername") and args[2] then
		local newDisplayName = table.concat(args, " ", 2)
		changeUserName(newDisplayName)
	elseif (args[1] == "cdisplay" or args[1] == "changedisplayname") and args[2] then
		local newDisplayName = table.concat(args, " ", 2)
		changeDisplayName(newDisplayName)
	elseif (args[1] == "cotagt" or args[1] == "changeownertagtext") and args[2] then
		local newOwnerTagText = table.concat(args, " ", 2)
		changeOwnerTagText(newOwnerTagText)

		-- enable and disable jumping
	elseif lwr == "ejump" or lwr == "enablejumping" then
		enablejumping()
	elseif lwr == "djump" or lwr == "disablejumping" then
		disablejumping()

		-- enable and disable glitched nametag
	elseif lwr == "egnt" or lwr == "enableglitchednametag" then
		enableglitchednametag()
	elseif lwr == "dgnt" or lwr == "disableglitchednametag" then
		disableglitchednametag()

		-- tptool
	elseif lwr == "tptool" or lwr == "givetptool" then
		tptool()

		-- enable and disable noclip
	elseif lwr == "noclip" then
		enableNoclip()
	elseif lwr == "unnoclip" or lwr == "clip" then
		disableNoclip()

		-- enable and disable auto teleport to generator 2
	elseif lwr == "eatptg2" or lwr == "enableautoteleporttogenerator2" then
		atptg2startmonitoring()
	elseif lwr == "datptg2" or lwr == "disableautoteleporttogenerator2" then
		atptg2stopmonitoring()

		-- enable and disable auto calibrate
	elseif lwr == "eac" or lwr == "enableautocalibration" then
		toggleHandling(true)
	elseif lwr == "dac" or lwr == "disableautocalibration" then
		toggleHandling(false)

		-- enable and disable auto calibration 2
	elseif lwr == "eac2" or lwr == "enableautocalibration2" then
		notify("Script made by Deka.", 5)
		enableautoskillcheck2()
	elseif lwr == "dac2" or lwr == "disableautocalibration2" then
		disableautoskillcheck2()

		-- anti pop-ups
	elseif lwr == "apu" or lwr == "antipopups" then
		antipopups()

		-- delete invis borders
	elseif lwr == "dib" or lwr == "deleteinvisibleborders" then
		deleteinvisborders()

		-- show and hide admin panel
	elseif lwr == "sap" or lwr == "showadminpanel" then
		showadminpanel()
	elseif lwr == "hap" or lwr == "hideadminpanel" then
		hideadminpanel()

		-- teleport to a generator
	elseif lwr == "tptg" or lwr == "teleporttogenerator" then
		dwtptg()

		-- teleport locations
	elseif lwr == "tptar" or lwr == "teleporttoadminroom" then
		tptoadminroom()
	elseif lwr == "tptbr" or lwr == "teleporttobedroom" then
		tptobedroom()
	elseif lwr == "tptds" or lwr == "teleporttodandysshop" then
		tptodandysshop()
	elseif lwr == "tptbod" or lwr == "teleporttoboxofdoom" then
		tptoboxofdoom()
	elseif lwr == "tpts" or lwr == "teleporttostage" then
		tptostage()

		-- pick up all capsules
	elseif lwr == "puarc" or lwr == "pickupallresearchcapsules" then
		pickupallresearchcapsules()

		-- pick up all tapes
	elseif lwr == "puat" or lwr == "pickupalltapes" then
		pickupalltapes()
		-- pre made scripts
	elseif lwr == "bacon" or lwr == "bacondwscript" then
		bacondwscript()
	elseif lwr == "gobby" or lwr == "gobbydwscript" then
		g0bbydwscript()
	elseif lwr == "riddancescript" or lwr == "riddance" then
		riddance()
	elseif lwr == "boxtensexguiscript" or lwr == "bsgui" then
		bsgui()
	elseif lwr == "poltergeistscript" or lwr == "pg" then
		poltergeist()
	elseif lwr == "spooks" or lwr == "spooksdwscript" then
		spooksdwscript()
	elseif lwr == "mox" or lwr == "moxdwscript" then
		moxdwscript()
	elseif lwr == "yiw" or lwr == "yiwdwscript" then
		yiwdwscript()
	elseif lwr == "hex" or lwr == "hexdwscript" then
		zyradwscript()
	elseif lwr == "gac" or lwr == "glistensanimationcloset" then
		rodestrikerdwscript()
	elseif lwr == "dex" or lwr == "explorer" then
		darkdex()
	elseif lwr == "otvajnifly" or lwr == "otvajniflyscript" then
		flyscript()
	elseif lwr == "bobby" or lwr == "bobbydwscript" then
		bobbydwscript()
	elseif lwr == "otvajni" or lwr == "otvajnidwscript" then
		egashub()
	elseif lwr == "rodestriker" or lwr == "rodestrikerdwscript" then
		tdh()
	elseif lwr == "soup" or lwr == "soupdwscript" then
		soupdwscript()
	elseif lwr == "ffj" or lwr == "ffjdwscript" then
		ffj()

		-- teleport to the elevator
	elseif lwr == "tpte" or lwr == "teleporttoelevator" then
		dwtpte()

		-- enable and disable auto teleport to elevator
	elseif lwr == "eatpte" or lwr == "enableautoteleporttoelevator" then
		dweatpte()
	elseif lwr == "datpte" or lwr == "disableautoteleporttoelevator" then
		dwdatpte()

		-- break stats
	elseif lwr == "bstats" or lwr == "breakstats" then
		breakstats()

		-- become character
	elseif lwr == "bchar" or lwr == "becomecharacter" then
		becomeCharacter()
		removeanticheat()
		wait(0.5)
		reset()

		-- delete dev doors
	elseif lwr == "ddd" or lwr == "deletedeveloperdoors" then
		deleteDeveloperDoors()

		-- enable and disable esp text
	elseif lwr == "hespt" or lwr == "hideesptext" then
		hideesptext()
	elseif lwr == "sespt" or lwr == "showesptext" then
		showesptext()

		-- enable and disable esp highlights
	elseif lwr == "hesph" or lwr == "hideesphighlights" then
		hideesp()
	elseif lwr == "sesph" or lwr == "showesphighlights" then
		showesp()

		-- enable and disable monster esp
	elseif lwr == "etesp" or lwr == "enabletwistedesp" then
		enableEsp("Monsters")		
	elseif lwr == "dtesp" or lwr == "disabletwistedesp" then
		disableEsp("Monsters")

		-- enable and disable player esp
	elseif lwr == "epesp" or lwr == "enableplayeresp" then
		enableEsp("Players")		
	elseif lwr == "dpesp" or lwr == "disableplayeresp" then
		disableEsp("Players")

		-- enable and disable item esp
	elseif lwr == "eiesp" or lwr == "enableitemesp" then
		enableEsp("Items")	
	elseif lwr == "diesp" or lwr == "disableitemesp" then
		disableEsp("Items")

		-- enable and disable machines esp
	elseif lwr == "emesp" or lwr == "enablemachineesp" then
		enableEsp("Machines")	
	elseif lwr == "dmesp" or lwr == "disablemachineesp" then
		disableEsp("Machines")

		-- enable and disable fake elevator esp
	elseif lwr == "efeesp" or lwr == "enablefakeelevatoresp" then
		enableEsp("FakeElevator")		
	elseif lwr == "dfeesp" or lwr == "disablefakeelevatoresp" then
		disableEsp("FakeElevator")

		-- enable and disable all esp
	elseif lwr == "eaesp" or lwr == "enableallesp" then
		enableAllEsp()
	elseif lwr == "daesp" or lwr == "disableallesp" then
		spawn(function() disableAllEsp() end)

		-- enable and disable monster tracers
	elseif lwr == "ett" or lwr == "enabletwistedtracers" then
		toggleTracers(true)
		enableTracer("Monsters")	
	elseif lwr == "dtt" or lwr == "disabletwistedtracers" then
		disableTracer("Monsters")

		-- enable and disable player tracers
	elseif lwr == "ept" or lwr == "enableplayertracers" then
		toggleTracers(true)
		enableTracer("Players")	
	elseif lwr == "dpt" or lwr == "disableplayertracers" then
		disableTracer("Players")

		-- enable and disable item tracers
	elseif lwr == "eit" or lwr == "enableitemtracers" then
		toggleTracers(true)
		enableTracer("Items")		
	elseif lwr == "dit" or lwr == "disableitemtracers" then
		disableTracer("Items")

		-- enable and disable machines tracers
	elseif lwr == "emt" or lwr == "enablemachinetracers" then
		toggleTracers(true)
		enableTracer("Machines")	
	elseif lwr == "dmt" or lwr == "disablemachinetracers" then
		disableTracer("Machines")

		-- enable and disable fake elevator tracers
	elseif lwr == "efet" or lwr == "enablefakeelevatortracers" then
		toggleTracers(true)
		enableTracer("FakeElevator")	
	elseif lwr == "dfet" or lwr == "disablefakeelevatortracers" then
		disableTracer("FakeElevator")

		-- enable and disable all tracer types
	elseif lwr == "eat" or lwr == "enablealltracers" then
		toggleTracers(true)
		enableTracer("Monsters")
		enableTracer("FakeElevator")
		enableTracer("Machines")
		enableTracer("Items")
		enableTracer("Players")
	elseif lwr == "dat" or lwr == "disablealltracers" then
		toggleTracers(false)
		disableTracer("Monsters")
		disableTracer("FakeElevator")
		disableTracer("Machines")
		disableTracer("Items")
		disableTracer("Players")

		-- become dandy
	elseif lwr == "bd" or lwr == "becomedandy" then
		becomeDandy()

		-- unablius
	elseif lwr == "uu" or lwr == "unabliusunablecifer" then
		unablius()

		-- enable and disable fullbright
	elseif lwr == "efb" or lwr == "enablefullbright" then
		enableFullBright()
	elseif lwr == "dfb" or lwr == "disablefullbright" then
		disableFullBright()

		-- enable and disable alternative fullbright
	elseif lwr == "eafb" or lwr == "enablealternativefullbright" then
		enablealternativefullbright()
	elseif lwr == "dafb" or lwr == "disablealternativefullbright" then
		disablealternativefullbright()

		-- (un)bang, (un)head, (un)headsit, (un)headjump, (un)bbang player
	elseif command:sub(1, 4) == "bang" then
		dwunhead()
		dwunhsit()
		dwunhsit2()
		dwunhjsit()
		unbottombang()
		wait(0)
		dwbang(command, noxious["local player"])
	elseif lwr == "unbang" then
		dwunbang()

	elseif command:sub(1, 4) == "head" then
		dwunbang()
		dwunhsit()
		dwunhsit2()
		dwunhjsit()
		unbottombang()
		wait(0)
		dwhead(command, noxious["local player"])
	elseif lwr == "unhead" then
		dwunhead()

	elseif command:sub(1, 4) == "hsit" then
		dwunbang()
		dwunhead()
		dwunhjsit()
		dwunhsit2()
		unbottombang()
		wait(0)
		dwhsit(command, noxious["local player"])
	elseif lwr == "unhsit" then
		dwunhsit()
		dwunhsit2()

	elseif command:sub(1, 5) == "hsit2" then
		dwunbang()
		dwunhead()
		dwunhsit()
		dwunhjsit()
		unbottombang()
		wait(0)
		dwhsit2(command, noxious["local player"])
	elseif lwr == "unhsit2" then
		dwunhsit()
		dwunhsit2()

	elseif command:sub(1, 5) == "hjump" then
		dwunbang()
		dwunhead()
		dwunhsit()
		dwunhsit2()
		unbottombang()
		wait(0)
		dwhjump(command, noxious["local player"])
	elseif lwr == "unhjump" then
		dwunhjsit()

	elseif command:sub(1, 5) == "bbang" then
		dwunbang()
		dwunhead()
		dwunhsit()
		dwunhsit2()
		dwunhjsit()
		wait(0)
		bottombang(command, noxious["local player"])
	elseif lwr == "unbbang" then
		unbottombang()

		-- animations and emotes
	elseif lwr == "dance" then
		dwdance()
	elseif lwr == "undance" then
		dwundance()
	elseif lwr == "tpose" then
		tpose()
	elseif lwr == "untpose" then
		untpose()
	elseif lwr == "hbang" or lwr == "headbang" then
		dwhbang()
	elseif lwr == "unhbang" or lwr == "unheadbang" then
		dwunhbang()
	elseif lwr == "crawl" then
		dwcrawl()
	elseif lwr == "uncrawl" then
		dwuncrawl()
	elseif lwr == "therian" then
		dwtherian()
	elseif lwr == "untherian" then
		dwuntherian()
	elseif lwr == "cradle" then
		dwsit()
	elseif lwr == "uncradle" then
		dwunsit()
	elseif lwr == "sit2" then
		dwsit2()
	elseif lwr == "unsit2" then
		dwunsit2()
	elseif lwr == "wave" then
		dwwave()
	elseif lwr == "pounce" then
		dwpounce()
	elseif lwr == "dabr" or lwr == "doabarrelroll" then
		dwbarrelroll()
	elseif lwr == "twirl" then
		dwtwirl()
	elseif lwr == "twirl2" then
		dwtwirl2()
	elseif lwr == "facepalm" then
		dwfacepalm()
	elseif lwr == "jump" then
		dwjump()
	elseif lwr == "shimmy" then
		dwshimmy()
	elseif lwr == "cheer" then
		dwcheer()
	elseif lwr == "dive" then
		dwdive()

		-- click to play an emote / animation
	elseif lwr == "ecwave" or lwr == "enableclickwave" then
		enableAnimation(dwwave)
	elseif lwr == "dcwave" or lwr == "disableclickwave" then
		disableAnimation()
	elseif lwr == "ecpounce" or lwr == "enableclickpounce" then
		enableAnimation(dwpounce)
	elseif lwr == "dcpounce" or lwr == "disableclickpounce" then
		disableAnimation()
	elseif lwr == "ecdabr" or lwr == "enableclickdoabarrelroll" then
		enableAnimation(dwbarrelroll)
	elseif lwr == "dcdabr" or lwr == "disableclickdoabarrelroll" then
		disableAnimation()
	elseif lwr == "ectwirl" or lwr == "enableclicktwirl" then
		enableAnimation(dwtwirl)
	elseif lwr == "dctwirl" or lwr == "disableclicktwirl" then
		disableAnimation()
	elseif lwr == "ectwirl2" or lwr == "enableclicktwirl2" then
		enableAnimation(dwtwirl2)
	elseif lwr == "dctwirl2" or lwr == "disableclicktwirl2" then
		disableAnimation()
	elseif lwr == "ecfacepalm" or lwr == "enableclickfacepalm" then
		enableAnimation(dwfacepalm)
	elseif lwr == "dcfacepalm" or lwr == "disableclickfacepalm" then
		disableAnimation()
	elseif lwr == "ecjump" or lwr == "enableclickjump" then
		enableAnimation(dwjump)
	elseif lwr == "dcjump" or lwr == "disableclickjump" then
		disableAnimation()
	elseif lwr == "ecshimmy" or lwr == "enableclickshimmy" then
		enableAnimation(dwshimmy)
	elseif lwr == "dcshimmy" or lwr == "disableclickshimmy" then
		disableAnimation()
	elseif lwr == "eccheer" or lwr == "enableclickcheer" then
		enableAnimation(dwcheer)
	elseif lwr == "dccheer" or lwr == "disableclickcheer" then
		disableAnimation()
	elseif lwr == "ecdive" or lwr == "enableclickdive" then
		enableAnimation(dwdive)
	elseif lwr == "dcdive" or lwr == "disableclickdive" then
		disableAnimation()

		-- use loadouts
	elseif lwr == "usepublicloadout" or lwr == "upl" then
		notify("Public Loadout applied.", 5)
		spawn(function() enableFullBright() end)
		spawn(function() enableAllEsp() end)
		spawn(function() toggleHandling(true) end)
		spawn(function() enableRareItemsNotifier() end)

	elseif lwr == "usesololoadout" or lwr == "usl" then
		notify("Solo Loadout applied.", 5)
		spawn(function() enableFullBright() end)		
		spawn(function() enableAllEsp() end)
		spawn(function() toggleHandling(true) end)
		spawn(function() enableRareItemsNotifier() end)
		spawn(function() dweatpte() end)
		spawn(function() enableItemAura() end)

	elseif lwr == "usedistractorloadout" or lwr == "udl" then
		notify("Distractor Loadout applied.", 5)
		spawn(function() enableFullBright() end)		
		spawn(function() enableEsp("FakeElevator") end)
		spawn(function() enableEsp("Players") end)
		spawn(function() enableEsp("Monsters") end)
		spawn(function() enablejumping() end)
		spawn(function() enableHealthFrameVisibility() end)
		spawn(function() enableTwistedsNotifier() end)
		spawn(function() changeMaxZoomDistance(999999999) end)

	elseif lwr == "usehealerloadout" or lwr == "uhrl" then
		notify("Healer Loadout applied.", 5)
		spawn(function() enableEsp("Players") end)
		spawn(function() enableEsp("Monsters") end)
		spawn(function() enableHealthFrameVisibility() end)
		spawn(function() enableTwistedsNotifier() end)
		spawn(function() changeMaxZoomDistance(999999999) end)
		spawn(function() enableEsp("Items") end)
		spawn(function() enableRareItemsNotifier() end)
		spawn(function() enableHealthNotifier() end)
		spawn(function() enableDeadnotifier() end)

	elseif lwr == "useesploadout" or lwr == "uespl" then
		notify("ESP Loadout applied.", 5)
		spawn(function() enableAllEsp() end)		
		spawn(function() enableTracer("Monsters") end)
		spawn(function() enableTracer("FakeElevator") end)
		spawn(function() enableTracer("Machines") end)
		spawn(function() enableTracer("Items") end)
		spawn(function() enableTracer("Players") end)
		spawn(function() enablealternativefullbright() end)
	else
		notify("Unknown command or invalid arguments.", 5, "error")
	end
end

-------------------------------------------------------------------------------------------------------------------------------

-- Listen for the toggle keybind
noxious["user input service"].InputBegan:Connect(function(input)
	if keybindReady and toggleKey and input.KeyCode == toggleKey then
		toggleInterface()
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Function to handle user input
function handleUserInput(command)
	if lwr == "" then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	handlecommands(command)
end

-- Connect the button click to the handle function without clearing the command bar
noxious["execute button"].MouseButton1Click:Connect(function()
	noxious["click sound"]:Play()
	local command = noxious["command bar"].Text
	handleUserInput(command, false) -- Do not clear the command bar
end)

-- Connect the FocusLost event to the handle function and clear the command bar
noxious["command bar"].FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local command = noxious["command bar"].Text
		noxious["command bar"].Text = ""
		handleUserInput(command, true) -- Clear the command bar
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local reloadcallcount = 0

noxious["reload noxious button"].MouseButton1Click:Connect(function()
	noxious["click sound"]:Play()

	reloadcallcount += 1

	if reloadcallcount == 1 then
		notify("Click button again to confirm.", 5)
	end

	if reloadcallcount == 2 then
		spawn(function()
			reloadnoxious()
		end)
	end

end)
