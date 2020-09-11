--data.lua

data:extend({	
    {
		type = "item-group",
		name = "unstable-arcana",
        order = "zzz",
		icon = "__unstable-arcana__/graphics/unstable-arcana.png",
        icon_size = 64,
        group = "unstable-arcana"
    },
    {
        type = "item-subgroup",
        name = "unstable-arcana-items",
        group = "unstable-arcana",
        order = "a"
    }
})
--require("prototypes.technology")
--require("prototypes.item")
data:extend({
	{
		type = "item",
		name = "unstable-arcana",
		icon = "__unstable-arcana__/graphics/unstable-arcana.png",
		icon_size = 64,
		stack_size = 15,
        place_result = "unstable-arcana",
        subgroup = "unstable-arcana-items"
	},
    {
		type = "item",
		name = "unstable-arcana2",
		icon = "__unstable-arcana__/graphics/unstable-arcana.png",
		icon_size = 64,
		stack_size = 15,
        place_result = "unstable-arcana2",
        subgroup = "unstable-arcana-items"
	},
    {
        type = "item",
		name = "arcana-collector",
		icon = "__unstable-arcana__/graphics/unstable-arcana.png",
		icon_size = 64,
		stack_size = 15,
        place_result = "arcana-collector",
        subgroup = "unstable-arcana-items"
    },
    {
        type = "item",
		name = "raw-arcana",
		icon = "__unstable-arcana__/graphics/unstable-arcana.png",
		icon_size = 64,
		stack_size = 15,
        subgroup = "unstable-arcana-items"
    }
})

--require("prototypes.entity")
data:extend({
    {
        type = "solar-panel",
        name = "unstable-arcana",
        energy_source = {
            type = "void",
            usage_priority = "solar"
        },
        picture = {
            {
                filename = "__unstable-arcana__/graphics/unstable-arcana.png",
                width = 64,
                height = 64
            },
        },
        icon = "__unstable-arcana__/graphics/unstable-arcana.png",
        icon_size = 64,
        production = "900kW",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "unstable-arcana"},
        max_health = 400,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
        selection_box = {{-1.0, -1.0}, {1.0, 1.0}}
    },
    {
        type = "mining-drill",
        name = "arcana-collector",
        energy_source = {
            type = "void",
            usage_priority = "tertiary"
        },
        energy_usage = "1kW",
        mining_speed = 10,
        resource_categories = {"basic-solid"},
        resource_searching_radius = 1,
        vector_to_place_result = {1.0, 0.5},
        picture = {
            {
                filename = "__unstable-arcana__/graphics/unstable-arcana.png",
                width = 64,
                height = 64
            },
        },
        icon = "__unstable-arcana__/graphics/unstable-arcana.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "arcana-collector"},
        max_health = 400,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
        selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
        inventory_size = 5
    },
    {
        type = "item-entity",
		name = "raw-arcana",
		icon = "__unstable-arcana__/graphics/unstable-arcana.png",
		icon_size = 64,
		stack_size = 15
    },
    {
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
        fluid_usage_per_tick = 1,
        maximum_temperature = 100,
        collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
        selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
        energy_source = {
            type = "electric",
            usage_priority = "secondary-output"
        },
        max_power_output = "1MW",
        fluid_box = {
            pipe_connections = {},
            base_area = 1,
            height = 2,
            base_level = -1,
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
            line_length = 3,
            shift = {0, 0},
            animation_speed = 0.05
        },
        vertical_animation = {
            filename = "__unstable-arcana__/graphics/unstable-arcana_animation.png",
            width = 64,
            height = 64,
            frame_count = 3,
            line_length = 3,
            shift = {0, 0},
            animation_speed = 0.05
        },
        min_perceived_performance = 1.0,
        emissions_per_second = -0.0005,
        performance_to_sound_speedup = 0.2
    }
})
--require("prototypes.recipe")

data:extend({
    {
        type = "recipe",
        name = "unstable-arcana",
        enabled = true,
        ingredients = {{"iron-plate", 3}},
        result = "unstable-arcana"
    },
    {
        type = "recipe",
        name = "unstable-arcana2",
        enabled = true,
        ingredients = {{"iron-plate", 3}},
        result = "unstable-arcana2"
    },
    {
        type = "recipe",
        name = "arcana-collector",
        enabled = true,
        ingredients = {
            {"iron-plate", 3}
        },
        result = "arcana-collector"
    }
})
