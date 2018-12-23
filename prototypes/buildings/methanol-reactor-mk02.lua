local pipes = {
    south = {
        filename = "__pycoalprocessing__/graphics/entity/methanol-reactor/pipe-ending-down.png",
        priority = "extra-high",
        width = 40,
        height = 45
    }
}

RECIPE {
    type = "recipe",
    name = "methanol-reactor-mk02",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"methanol-reactor", 1},
        {"advanced-circuit", 25},
        {"plastic-bar", 50},
        {"nexelit-plate", 15},
        {"engine-unit", 8},
    },
    results = {
        {"methanol-reactor-mk02", 1}
    }
}

ITEM {
    type = "item",
    name = "methanol-reactor-mk02",
    icon = "__pycoalprocessing__/graphics/icons/methanol-reactor-mk02.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "q",
    place_result = "methanol-reactor-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "methanol-reactor-mk02",
    icon = "__pycoalprocessing__/graphics/icons/methanol-reactor-mk02.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "methanol-reactor-mk02"},
    fast_replaceable_group = "methanol-reactor",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"methanol"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01 / 2
    },
    energy_usage = "600kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/methanol-reactor/methanol-off-mk02.png",
        width = 202,
        height = 247,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {0.15, -0.79}
    },
    working_visualisations = {
        {
            north_position = {0.15, -0.79},
            west_position = {0.15, -0.79},
            south_position = {0.15, -0.79},
            east_position = {0.15, -0.79},
            animation = {
                filename = "__pycoalprocessing__/graphics/entity/methanol-reactor/methanol-anim-mk02.png",
                frame_count = 50,
                line_length = 10,
                width = 202,
                height = 247,
                animation_speed = 0.3
            }
        }
    },
    fluid_boxes = {
        --North, left
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, -3.5}}}
        },
        --North, right
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.5, -3.5}}}
        },
        --South, left
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, 3.5}}}
        },
        --South, right
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.5, 3.5}}}
        },
        --West, top
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.5, -0.5}}}
        },
        --West, bottom
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.5, 0.5}}}
        },
        --East, top
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, -0.5}}}
        },
        --East, bottom
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.05, -0.75}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, 0.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/methanol-reactor.ogg"},
        idle_sound = {filename = "__pycoalprocessing__/sounds/methanol-reactor.ogg", volume = 0.65},
        apparent_volume = 2.5
    }
}