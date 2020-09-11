--control.lua


script.on_event(defines.events.on_tick, function(event)

    if global.unstable_arcana2 == nil then
        global.unstable_arcana2 = {}
    end

    -- 60 ticks = 1 second
    if (game.tick % 120) == 0 then
        for key,unstable_arcana2 in pairs(global.unstable_arcana2) do
            if unstable_arcana2.valid then
                unstable_arcana2.fluidbox[1] = {
                    name="steam", 
                    amount=200, 
                    temperature=100
                }
            else
                table.remove(global.unstable_arcana2, key)
            end
        end
	end
end)


function on_creation(event)
    -- when adding the item, it will give it a a variable
    if event.created_entity.name == "unstable-arcana2" then
        local unstable_arcana2 = event.created_entity
        table.insert(global.unstable_arcana2, unstable_arcana2)
    end
end


script.on_event(defines.events.on_built_entity, on_creation)
script.on_event(defines.events.on_robot_built_entity, on_creation)