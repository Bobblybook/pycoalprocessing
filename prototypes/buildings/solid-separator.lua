-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
  type = "recipe",
  name = "solid-separator",
  energy_requiered = 15,
  enabled = false,
  ingredients =
  {
    {"assembling-machine-1", 5},  
    {"advanced-circuit", 30},
    {"steel-plate", 50},
	{"titanium-plate", 20},
    {"iron-stick", 50}, --bob brass-bearing

  },
  result= "solid-separator",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
  type = "item",
  name = "solid-separator",
  icon = "__pycoalprocessing__/graphics/icons/solid-separator.png",
  flags = {"goes-to-quickbar"},
  subgroup = "coal-processing",
  order = "a-c[solid-separator]",
  place_result = "solid-separator",
  stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
  type = "assembling-machine",
  name = "solid-separator",
  icon = "__pycoalprocessing__/graphics/icons/solid-separator.png",
  flags = {"placeable-neutral","player-creation"},
  minable = {mining_time = 1, result = "solid-separator"},
  fast_replaceable_group = "solid-separator",
  max_health = 400,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  collision_box = {{-3.45, -3.45}, {3.45, 3.45}},
  selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
  module_specification =
  {
    module_slots = 4
  },
  allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  crafting_categories = {"solid-separator"},
  crafting_speed = 0.45,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions = 0.03,
  },
  energy_usage = "150kW",
  ingredient_count = 3,

  animation =
  {
    filename = "__pycoalprocessing__/graphics/entity/solid-separator/solid-separator.png",
    width = 249,
    height = 298,
    frame_count = 20,
	line_length = 5,
    animation_speed = 0.8,
    shift = {0.37, -1.169},
  },

  vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.55 },
  working_sound =
  {
    sound = { filename = "__pycoalprocessing__/sounds/solid-separator.ogg" },
    idle_sound = { filename = "__pycoalprocessing__/sounds/solid-separator.ogg", volume = 0.75 },
    apparent_volume = 2.5,
  },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
