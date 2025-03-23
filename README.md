# Bulgar Development Level System
Level System that provides a level tracking for your player on different jobs. Script is originally in written in qb-core, but it easy to rewrite for ESX as the core is only used for the player identifier. Go through the documentation below.

# Useful Links
### [📖 Documentation](https://docs.bulgar.dev/)
### [🏪 Store](https://store.bulgar.dev/)
### [💬 Discord](https://discord.gg/226pjjufyg)

# Example Usage (with QBCore framework)

## Client
```lua
RegisterCommand('lvl_cllvl', function()
    local level = exports["bd-lvlsystem"]:GetPlayerLevel("tow")
    print(level)
end, false)

RegisterCommand('lvl_clrep', function()
    local rep = exports["bd-lvlsystem"]:GetReputation("tow")
    print(rep)
end, false)

RegisterCommand('lvl_clreplvl', function()
    local rep, lvl = exports["bd-lvlsystem"]:GetPlayerReputationAndLevel("tow")
    print(rep, lvl)
end, false)
```

## Server
```lua
local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('lvl_addrep', function(source)
    local src = source
    local Owner = QBCore.Functions.GetPlayer(src).PlayerData.citizenid
    exports["bd-lvlsystem"]:AddReputation(Owner, "tow", 20)
end, false)

RegisterCommand('lvl_removerep', function(source)
    local src = source
    local Owner = QBCore.Functions.GetPlayer(src).PlayerData.citizenid
    exports["bd-lvlsystem"]:RemoveReputation(Owner, "tow", 20)
end, false)

RegisterCommand('lvl_svlvl', function(source)
    local src = source
    local Owner = QBCore.Functions.GetPlayer(src).PlayerData.citizenid
    local level = exports["bd-lvlsystem"]:GetPlayerLevel(Owner, "tow")
    print(level)
end, false)

RegisterCommand('lvl_svrep', function(source)
    local src = source
    local Owner = QBCore.Functions.GetPlayer(src).PlayerData.citizenid
    local rep = exports["bd-lvlsystem"]:GetReputation(Owner, "tow")
    print(rep)
end, false)

RegisterCommand('lvl_svreplvl', function(source)
    local src = source
    local Owner = QBCore.Functions.GetPlayer(src).PlayerData.citizenid
    local rep, lvl = exports["bd-lvlsystem"]:GetPlayerReputationAndLevel(Owner, "tow")
    print(rep, lvl)
end, false)
```

# Screenshots

### Example from bd-laptop

![Image](https://r2.fivemanage.com/ngdTgLtsPcWttgwAMACiI/image/Lvlsystem.png)