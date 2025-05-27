local Velora = Velora or {}
local Links = {
    Horizon = '';
    IrisProtect = '';
    UIOpt = '';
}

for k, v in pairs(Links) do
    task.spawn(function()
        if not Velor[k] then
            Velora[k] = loadstring(game:HttpGet(v))()
        end
    end)
end

for k,_ in pairs(Links) do
    repeat task.wait() until Velora[k]
end

getgenv().Velora = Velora
return Velora
