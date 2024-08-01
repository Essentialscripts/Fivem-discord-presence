-- client.lua
Citizen.CreateThread(function()
    while true do
        -- Set Discord App ID
        SetDiscordAppId(Config.DiscordAppId)

        -- Set Rich Presence assets
        SetDiscordRichPresenceAsset(Config.LargeImage)
        SetDiscordRichPresenceAssetText(Config.LargeImageText)
        SetDiscordRichPresenceAssetSmall(Config.SmallImage)
        SetDiscordRichPresenceAssetSmallText(Config.SmallImageText)

        -- Update details and state
        SetRichPresence(Config.Details .. " - " .. Config.State)

        -- Update player count
        local playerCount = #GetActivePlayers()
        SetRichPresence(playerCount .. "/" .. Config.MaxPlayers .. " players")

        -- Update every minute
        Citizen.Wait(60000)
    end
end)