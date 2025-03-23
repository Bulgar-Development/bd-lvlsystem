local function GetReputation(job)
    local reputationForJob = lib.callback.await('bd-lvlsystem:server:get-reputation-by-job', false, job)

    if reputationForJob then
        return reputationForJob
    else
        return 0
    end
end

local function GetPlayerLevel(job)
    local reputationForJob = GetReputation(job)
    local level = "Rookie" -- Default level

    for i=1, #Config["Levels"] do
        local lvl = Config["Levels"][i]
        if reputationForJob >= lvl.RequiredXP then
            level = lvl.Label
        end
    end

    return level
end

local function GetPlayerReputationAndLevel(job)
    local reputationForJob = GetReputation(job)
    local playerLevel = GetPlayerLevel(job)

    return reputationForJob, playerLevel
end

exports("GetReputation", GetReputation)
exports("GetPlayerLevel", GetPlayerLevel)
exports("GetPlayerReputationAndLevel", GetPlayerReputationAndLevel)
