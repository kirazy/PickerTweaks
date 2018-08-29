--(( ENHANCED LIGHTS ))--
--[[
    "name": "EnhancedFlashlight",
    "title": "Enhanced Flashlight",
    "author": "grfwoot",
    "description": "Replaces the default flashlight with a better, more realistic version",
--]]
if settings.startup['picker-enhanced-lights'].value then
    for _, player in pairs(data.raw['player']) do
        if player.light then
            player.light = {
                {
                    minimum_darkness = 0.1,
                    intensity = 0.3,
                    size = 40,
                    color = {r = 1.0, g = 1.0, b = 1.0}
                },
                {
                    type = 'oriented',
                    minimum_darkness = 0.1,
                    picture = {
                        filename = '__PickerTweaks__/graphics/lightcone-enhanced.png',
                        priority = 'extra-high',
                        flags = {'light'},
                        scale = 2,
                        width = 350,
                        height = 370
                    },
                    shift = {0, -24},
                    size = 2,
                    intensity = 0.9,
                    color = {r = 1.0, g = 1.0, b = 1.0}
                }
            }
        end
    end
end --))

--((Brighter Lights toggle)) --
if settings.startup['picker-brighter-lights-player'].value then
    for _, player in pairs(data.raw['player']) do
        player.light = {
            {
                intensity = 0.9,
                size = 150
            }
        }
    end
end

if settings.startup['picker-brighter-lights-vehicles'].value then
    for _, vehicle in pairs(data.raw['car']) do
        vehicle.light[#vehicle.light + 1] = {
            intensity = 0.9,
            size = 150,
            minimum_darkness = 0.1
        }
    end

    for _, loco in pairs(data.raw['locomotive']) do
        --front_light is the headlight going forward
        --back_light is the red light at the back
        --stand_by_light is the blue light at the front when parked.
        loco.front_light[#loco.front_light + 1] = {
            intensity = 0.9,
            size = 150,
            minimum_darkness = 0.1
        }
        loco.stand_by_light[#loco.stand_by_light + 1] = {
            intensity = 0.9,
            size = 150,
            minimum_darkness = 0.1
        }
        loco.back_light[#loco.back_light + 1] = {
            intensity = 0.9,
            size = 150,
            minimum_darkness = 0.1
        }
    end
end --))