local unstable_arcana = {
    type = "generator",
    name = "unstable-arcana2",
    icon = "__unstable-arcana__/graphics/unstable-arcana.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "unstable-arcana2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 1,
    fluid_usage_per_tick = 0.5,
    maximum_temperature = 100,
    collision_mask = {"item-layer", "object-layer", "water-tile"},
    collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source = {
        type = "electric",
        usage_priority = "primary-output"
    },
    max_power_output = "1MW",
    fluid_box = {
        pipe_connections = {}
        base_area = 1,
        height = 2,
        base_level = -1,
        --pipe_covers = pipecoverspictures(),
        pipe_connections = {
        --    {type = "input-output", position = {-2, 0.5}},
        --    {type = "input-output", position = {2, 0.5}}
        },
        production_type = "input-output",
        filter = "steam",
        minimum_temperature = 0.0
    },
    resistances = {
        {
            type = "fire",
            percent = 70
        },
        {
            type = "physical",
            percent = 100
        },
        {
            type = "impact",
            percent = 30
        }
    },
    fast_replaceable_group = "unstable-arcana2",
    horizontal_animation = {
        filename = "__unstable-arcana__/graphics/unstable-arcana_animation.png",
        width = 64,
        height = 64,
        frame_count = 3,
        line_length = 0,
        shift = {64, 0},
        animation_speed = 1
    },
    vertical_animation = {
        filename = "__unstable-arcana__/graphics/unstable-arcana_animation.png",
        width = 64,
        height = 64,
        frame_count = 3,
        line_length = 0,
        shift = {64, 0},
        animation_speed = 1
    },
    min_perceived_performance = 1.0,
    emissions_per_second = -0.0005,
    burns_fluid = false,
    performance_to_sound_speedup = 0.2
}

data:extend({unstable_arcana})
[[--
{
    type = "generator",
    name = "wind-turbine",
    icon = "__Wind_Turbine V16__/graphics/wind_turbine_item.png",
    icon_size = 32,
    max_health = 400,
    corpse = "big-remnants",
    effectivity = 2,
    fluid_usage_per_tick = 0.5,
    maximum_temperature = 100,
    resistances =
        {
            {
                type = "fire",
                percent = 70
            },
            {
                type = "physical",
                percent = 100
            },
            {
                type = "impact",
                percent = 30
            }
        },
    fast_replaceable_group = "wind-turbine",
    collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
        base_area = 1,
        height = 2,
        base_level = -1,
        --pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
        --{ type = "input-output", position = {0, 3} },
        --{ type = "input-output", position = {0, -3} },
        },
        production_type = "input-output",
        filter = "steam",
        minimum_temperature = 0.0
    },
    energy_source =
        {
          type = "electric",
          usage_priority = "secondary-output"
        },
    horizontal_animation = {
        filename = "__Wind_Turbine V16__/graphics/wind_turbine1_horizontal.png",
        width = 300,
        height = 175,
        frame_count = 20,
        line_length = 5,
        shift = {2.48, -1.45}
    },
    vertical_animation = {
        filename = "__Wind_Turbine V16__/graphics/wind_turbine1_vertical.png",
        width = 300,
        height = 175,
        frame_count = 20,
        line_length = 5,
        shift = {2.48, -1.45}
    },
    working_sound = {
        sound = {
            filename = "__base__/sound/train-wheels.ogg",
            volume = 0.6
        },
        match_speed_to_activity = true,
    },
    min_perceived_performance = 1.0,
    performance_to_sound_speedup = 0.2
},
--]]