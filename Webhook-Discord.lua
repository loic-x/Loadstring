--// Made by YellowGreg, MMSVon, Wspboy12 \\--


--// Executor Being Use \\--
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or -- Sirhurt
   pebc_execute and "ProtoSmasher" or -- ProtoSmasher
   syn and "Synapse X" or -- Synapse X
   secure_load and "Sentinel" or -- Sentinel
   KRNL_LOADED and "Krnl" or -- Krnl
   SONA_LOADED and "Sona" or -- Sona
   FLUXUS_LOADED and "Fluxus" -- Mobile Fluxus or Pc
 
 --// Webhook url \\--
local url = "https://discord.com/api/webhooks/1073857551059406888/r9H-u-TPCZ0lw9fmrgtW8QaupTMT9uUHmeRt-RIBVIZHVgcTLbFlwW7wxagvuMBGNFjk"
--// Data of the User \\--
local data = {
   ["content"] = " ***HarshTechV7.5 has Been Executed***", --// Messege of which script is executed
   ["embeds"] = {
       {
           ["title"] = "Executed By: " ..game.Players.LocalPlayer.Name.. " Using **"..webhookcheck.."**", --// Who Executed (You can change the msg) \\--
           ["description"] = "ID: "..game.Players.LocalPlayer.UserId.."", --// ID of the player Account \\--
           ["type"] = "rich", 
           ["color"] = tonumber(0x7269da), --// Color Of The Text or Msg \\--
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. --// Avatar of the player who executed the script \\--
                   tostring(game:GetService("Players").LocalPlayer.Name) --// Player \\--
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {
  Url = url, 
  Body = newdata, 
  Method = "POST", 
  Headers = headers
}
request(abcdef)
loadstring(game:HttpGet('https://pastebin.com/raw/Ycyen8AM'))()

coroutine.resume(coroutine.create(function()
    while wait(60) do
        local function main()
            if player.Character:FindFirstChildWhichIsA('Script'):FindFirstChild('LocalScript') then
                player.Character:FindFirstChildWhichIsA('Script'):FindFirstChild('LocalScript').Disabled = true
            end
            if player.Character.UpperTorso:FindFirstChild('OriginalSize') then
                player.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
            end
            loadstring(game:HttpGet('https://raw.githubusercontent.com/PickleIsDaBest/EmojiMain/main/Script'))()
        end
        local success, err = pcall(main)
    end
end))
