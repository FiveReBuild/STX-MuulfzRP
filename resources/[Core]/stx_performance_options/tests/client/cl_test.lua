---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Muulfz.
--- DateTime: 8/12/2020 1:37 AM
---
local Proxy = module("vrp", "lib/Proxy")
stx_performance_options_api = Proxy.getInterface("stx_performance_options")

function register_menus()
    stx_performance_options_api.registerBooleanOption("Macaco", "Feature legal", true, cbTest)
    stx_performance_options_api.registerBooleanOption("Macaco", "Feature legal2", true, cbTest)
    stx_performance_options_api.registerBooleanOption("Macaco", "Feature legal3", true, cbTest)
    stx_performance_options_api.registerNumberOption("Macaco","Feature Numeral", 1,15, cbNumeralTest)
    stx_performance_options_api.registerNumberOption("Macaco","Feature Numeral2", 6,16, cbNumeralTest)
    stx_performance_options_api.registerNumberOption("Macaco","Feature Numeral3", 4,29, cbNumeralTest)

end

function cbTest(boolean)
    print(boolean)
end

function cbNumeralTest(current, selectedIndex)
    print(current)
    print(selectedIndex)
end

Citizen.CreateThread(function()
    register_menus()
end)