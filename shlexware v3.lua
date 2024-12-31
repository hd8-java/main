--[[
          Booting
Made by @hd8!

          --]]
          local Library = loadstring(game:HttpGet("https://github.com/1dontgiveaf/Fluent/releases/latest/download/main.lua"))()
          local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/1dontgiveaf/Fluent/main/Addons/SaveManager.lua"))()
          local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/1dontgiveaf/Fluent/main/Addons/InterfaceManager.lua"))()
          local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
          
          
          local Window = Fluent:CreateWindow({
              Title = "Shlexware V3 | Universal",
              SubTitle = "by hd8",
              TabWidth = 160,
              Size = UDim2.fromOffset(580, 460),
              Acrylic = false, -- Turns off and on blur in case it's detected
              Theme = "Dark",
              MinimizeKey = Enum.KeyCode.LeftControl -- Used when there's no MinimizeKeybind
          })
          
          -- Tabs
          local Tabs = {
              Main = Window:AddTab({ Title = "Home", Icon = "share" }),
              Home = Window:AddTab({ Title = "Main", Icon = "scroll" }),
              Auto = Window:AddTab({ Title = "Player", Icon = "play" }),
              Teleport = Window:AddTab({ Title = "Teleport", Icon = "plane" }),
              Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
              Info = Window:AddTab({Title = "Info", Icon = "info" }),
              Main2 = Window:AddTab({ Title = "Credits", Icon = "user" }),

          }
          local Options = Fluent.Options
          local HSection = Tabs.Main:AddSection("Shlexware | Script")
          local MSection = Tabs.Home:AddSection("Shlexware | Main")
          local ASection = Tabs.Auto:AddSection("Shlexware | Player")
          local TSection = Tabs.Teleport:AddSection("Shlexware | Teleports")
          local SSection = Tabs.Settings:AddSection("Shlexware |  Setting")
          local M2Section = Tabs.Main2:AddSection("Shlexware | Credits")
          local ISection = Tabs.Info:AddSection("Shlexware | Info")
    
          Tabs.Main:AddButton({
                  Title = "Kill Script",
                  Description = "This button kill's the script, Please save ur config before killing it!",
                  Callback = function()
                      Window:Destroy()
                      print("Killed Sucessfully")
                   
                    end 
              })
            
           

            Tabs.Teleport:AddButton({
                Title = "Teleport To 0, 0, 0,",
                Description = "You will be getting teleported to CFrame: (0, 0, 0)",
                Callback = function()
                    rootPart.CFrame = CFrame.new(0, 0, 0)
                end
            })

            
            
            Tabs.Main:AddButton({
                  Title = "Discord",
                  Description = "Want to join my discord for more updates? We got you!",
                  Callback = function()
                    Window:Dialog({
                          Title = "Shlexware V3",
                          Content = ".gg/ShlexwareExploitsV4",
                          Buttons = {
                              {
                                  Title = "Close",
                                  Callback = function()
                                      print("Confirmed the dialog.")
                                  end
                              },
                        
                          }
                      })
                  end
              })

            -- Paraghraphs 


            Tabs.Main2:AddParagraph({
                Title = "Credits",
                Content = "Owner's Discord: @hd8 \nDevelopers: hd8\nTesters: @TheOverHD9\n "
            })

            Tabs.Main2:AddParagraph({
                Title = "Youtube Info",
                Content = "Warning YouTubers, This script is Copyrighted. \nPlease type out credits! \n To discuss about the script DM @hd8"
            })

            Tabs.Main:AddParagraph({
                Title = "Shlexware | Version",
                Content = "Shlexware Info \nVersion: V3 Remastered \nOwner: @hd8 \nUI-Libary: Fluent-UI"
            })

            Tabs.Info:AddParagraph({
                Title = "Shlexware Main | Info ",
                Content = "Hey user! \nThis script is under constant construcion \nFor know it only haves UI"
            })

            Tabs.Info:AddParagraph({
                Title = "Game Support",
                Content = "Shlexware doesnt support this game \nIf the tabs are loaded it means that ur using a Old version of shlexware \n Shoutout to @hd8 the owner of the script"
            })
            
        

    -- -386.658661, 57.0735207, -13.8351641, 0.263599187, 2.53987835e-08, -0.964632273, -7.54971623e-08, 1, 5.69936454e-09, 0.964632273, 7.13246564e-08, 0.263599187
    
   
    

local Dropdown = Tabs.Teleport:AddDropdown("Dropdown", {
    Title = "test",
    Description = "Dropdown description",
    Values = {"Slapple", "Arena", "Deafult Arena"},
    Multi = false,
    Default = nil,
    Callback = function(Value)
        print("Dropdown was changed:", Value)
          if Value == "one" then
          print("Works!!!")
          end
    end
})
          

    SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

-- Latest Realese of Fluent!!!!
