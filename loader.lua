local Velora = {}
local Links = {
    Horizon = '';
    IrisProtect = '';
    UIOpt = '';
}

for k, v in pairs(Links) do
    task.spawn(function()
        Velora[k] = loadstring(game:HttpGet(v))()
    end)
end

for k,_ in pairs(Links) do
    repeat task.wait() until Velora[k]
end

getgenv().Velora = Velora
return Velora
