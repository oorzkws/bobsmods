data.raw.item["personal-roboport-equipment"].icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk1-equipment.png"
data.raw.item["personal-roboport-equipment"].icon_size = 128
data.raw.item["personal-roboport-equipment"].icon_mipmaps = nil
data.raw["roboport-equipment"]["personal-roboport-equipment"].sprite.filename = "__bobequipment__/graphics/icons/technology/personal-roboport-mk1-equipment.png"
data.raw["roboport-equipment"]["personal-roboport-equipment"].sprite.width = 128
data.raw["roboport-equipment"]["personal-roboport-equipment"].sprite.height = 128
data.raw.technology["personal-roboport-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment
{
  icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk1-equipment.png",
  icon_size = 128
}

data.raw.item["personal-roboport-mk2-equipment"].icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk2-equipment.png"
data.raw.item["personal-roboport-mk2-equipment"].icon_size = 128
data.raw.item["personal-roboport-mk2-equipment"].icon_mipmaps = nil
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].sprite.filename = "__bobequipment__/graphics/icons/technology/personal-roboport-mk2-equipment.png"
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].sprite.width = 128
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].sprite.height = 128
data.raw.technology["personal-roboport-mk2-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment
{
  icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk2-equipment.png",
  icon_size = 128
}

data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].energy_source.buffer_capacity = "75MJ"
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].energy_source.input_flow_limit = "7500KW"
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_energy = "1500kW"
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].robot_limit = 15


data:extend(
{
  {
    type = "item",
    name = "personal-roboport-mk3-equipment",
    localised_description = {"item-description.personal-roboport-equipment"},
    icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk3-equipment.png",
    icon_size = 128,
    placed_as_equipment_result = "personal-roboport-mk3-equipment",
    subgroup = "equipment",
    order = "e[robotics]-b[personal-roboport-mk3-equipment]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-mk4-equipment",
    localised_description = {"item-description.personal-roboport-equipment"},
    icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk4-equipment.png",
    icon_size = 128,
    placed_as_equipment_result = "personal-roboport-mk4-equipment",
    subgroup = "equipment",
    order = "e[robotics]-b[personal-roboport-mk4-equipment]",
    stack_size = 20
  },

  {
    type = "recipe",
    name = "personal-roboport-mk3-equipment",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"personal-roboport-mk2-equipment", 1},
      {"processing-unit", 20},
      {"iron-gear-wheel", 40},
      {"steel-plate", 20},
      {"battery", 20}
    },
    result = "personal-roboport-mk3-equipment"
  },
  {
    type = "recipe",
    name = "personal-roboport-mk4-equipment",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"personal-roboport-mk3-equipment", 1},
      {"processing-unit", 20},
      {"iron-gear-wheel", 40},
      {"steel-plate", 20},
      {"battery", 20}
    },
    result = "personal-roboport-mk4-equipment"
  },

  {
    type = "roboport-equipment",
    name = "personal-roboport-mk3-equipment",
    take_result = "personal-roboport-mk3-equipment",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/technology/personal-roboport-mk3-equipment.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "135MJ",
      input_flow_limit = "13500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "2000kW",
    robot_limit = 20,
    construction_radius = 25,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 6,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-mk4-equipment",
    take_result = "personal-roboport-mk4-equipment",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/technology/personal-roboport-mk4-equipment.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "215MJ",
      input_flow_limit = "21500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "2500kW",
    robot_limit = 25,
    construction_radius = 30,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 8,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },

  {
    type = "technology",
    name = "personal-roboport-mk3-equipment",
    icons = bobmods.equipment.technology_icon_constant_equipment
    {
      icon_size = 128,
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk3-equipment.png",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-mk3-equipment"
      }
    },
    prerequisites =
    {
      "personal-roboport-mk2-equipment",
      "advanced-electronics-2",
      "utility-science-pack"
    },
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d-zz3"
  },
  {
    type = "technology",
    name = "personal-roboport-mk4-equipment",
    icons = bobmods.equipment.technology_icon_constant_equipment
    {
      icon_size = 128,
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk4-equipment.png",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-mk4-equipment"
      }
    },
    prerequisites =
    {
      "personal-roboport-mk3-equipment",
      "production-science-pack"
    },
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d-zz4"
  },
}
)



data:extend(
{
  {
    type = "item",
    name = "personal-roboport-antenna-equipment",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-antenna.png",
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-antenna-equipment",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-antenna-1]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-antenna-equipment-2",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-antenna-2.png",
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-antenna-equipment-2",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-antenna-2]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-antenna-equipment-3",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-antenna-3.png",
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-antenna-equipment-3",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-antenna-3]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-antenna-equipment-4",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-antenna-4.png",
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-antenna-equipment-4",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-antenna-4]",
    stack_size = 20
  },

  {
    type = "item",
    name = "personal-roboport-chargepad-equipment",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-chargepad.png",
        scale = 0.75,
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-chargepad-equipment",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-chargepad-1]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-chargepad-equipment-2",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-chargepad-2.png",
        scale = 0.75,
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-chargepad-equipment-2",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-chargepad-2]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-chargepad-equipment-3",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-chargepad-3.png",
        scale = 0.75,
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-chargepad-equipment-3",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-chargepad-3]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-chargepad-equipment-4",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-chargepad-4.png",
        scale = 0.75,
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-chargepad-equipment-4",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-chargepad-4]",
    stack_size = 20
  },

  {
    type = "item",
    name = "personal-roboport-robot-equipment",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/construction-robot-1.png",
        scale = 0.75,
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-robot-equipment",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-robot-1]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-robot-equipment-2",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/construction-robot-2.png",
        scale = 0.75,
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-robot-equipment-2",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-robot-2]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-robot-equipment-3",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/construction-robot-3.png",
        scale = 0.75,
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-robot-equipment-3",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-robot-3]",
    stack_size = 20
  },
  {
    type = "item",
    name = "personal-roboport-robot-equipment-4",
    icons =
    {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
      },
      {
        icon = "__bobequipment__/graphics/icons/construction-robot-4.png",
        scale = 0.75,
      }
    },
    icon_size = 32,
    placed_as_equipment_result = "personal-roboport-robot-equipment-4",
    subgroup = "equipment",
    order = "e[robotics]-a[personal-roboport-equipment-robot-4]",
    stack_size = 20
  },

  {
    type = "roboport-equipment",
    name = "personal-roboport-antenna-equipment",
    take_result = "personal-roboport-antenna-equipment",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/roboport-antenna.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "100KJ",
      input_flow_limit = "20KW",
      drain = "10kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 15,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-antenna-equipment-2",
    take_result = "personal-roboport-antenna-equipment-2",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/roboport-antenna-2.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "150kJ",
      input_flow_limit = "30KW",
      drain = "15kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 20,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-antenna-equipment-3",
    take_result = "personal-roboport-antenna-equipment-3",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/roboport-antenna-3.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "200KJ",
      input_flow_limit = "40KW",
      drain = "20kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 25,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-antenna-equipment-4",
    take_result = "personal-roboport-antenna-equipment-4",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/roboport-antenna-4.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "250KJ",
      input_flow_limit = "50KW",
      drain = "25kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 30,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },

  {
    type = "roboport-equipment",
    name = "personal-roboport-chargepad-equipment",
    take_result = "personal-roboport-chargepad-equipment",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/roboport-chargepad.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "35MJ",
      input_flow_limit = "3500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-chargepad-equipment-2",
    take_result = "personal-roboport-chargepad-equipment-2",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/roboport-chargepad-2.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "75MJ",
      input_flow_limit = "7500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1500kW",
    robot_limit = 0,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 4,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-chargepad-equipment-3",
    take_result = "personal-roboport-chargepad-equipment-3",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/roboport-chargepad-3.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "135MJ",
      input_flow_limit = "13500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "2000kW",
    robot_limit = 0,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 6,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-chargepad-equipment-4",
    take_result = "personal-roboport-chargepad-equipment-4",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/roboport-chargepad-4.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "215MJ",
      input_flow_limit = "21500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "2500kW",
    robot_limit = 0,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 8,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },

  {
    type = "roboport-equipment",
    name = "personal-roboport-robot-equipment",
    take_result = "personal-roboport-robot-equipment",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/construction-robot-1.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "50KJ",
      input_flow_limit = "10KW",
      drain = "5kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 5,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-robot-equipment-2",
    take_result = "personal-roboport-robot-equipment-2",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/construction-robot-2.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "100KJ",
      input_flow_limit = "20KW",
      drain = "10kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 10,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-robot-equipment-3",
    take_result = "personal-roboport-robot-equipment-3",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/construction-robot-3.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "150KJ",
      input_flow_limit = "30KW",
      drain = "15kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 15,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-robot-equipment-4",
    take_result = "personal-roboport-robot-equipment-4",
    sprite =
    {
      filename = "__bobequipment__/graphics/icons/construction-robot-4.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "200KJ",
      input_flow_limit = "40KW",
      drain = "20kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    robot_limit = 20,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },

  {
    type = "recipe",
    name = "personal-roboport-antenna-equipment",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      {"advanced-circuit", 5},
      {"iron-gear-wheel", 20},
      {"steel-plate", 10},
    },
    result = "personal-roboport-antenna-equipment"
  },
  {
    type = "recipe",
    name = "personal-roboport-antenna-equipment-2",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"personal-roboport-antenna-equipment", 1},
      {"advanced-circuit", 5},
      {"iron-gear-wheel", 20},
      {"steel-plate", 10},
    },
    result = "personal-roboport-antenna-equipment-2"
  },
  {
    type = "recipe",
    name = "personal-roboport-antenna-equipment-3",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      {"personal-roboport-antenna-equipment-2", 1},
      {"processing-unit", 5},
      {"iron-gear-wheel", 20},
      {"steel-plate", 10},
    },
    result = "personal-roboport-antenna-equipment-3"
  },
  {
    type = "recipe",
    name = "personal-roboport-antenna-equipment-4",
    enabled = false,
    energy_required = 16,
    ingredients =
    {
      {"personal-roboport-antenna-equipment-3", 1},
      {"processing-unit", 5},
      {"iron-gear-wheel", 20},
      {"steel-plate", 10},
    },
    result = "personal-roboport-antenna-equipment-4"
  },

  {
    type = "recipe",
    name = "personal-roboport-chargepad-equipment",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      {"advanced-circuit", 2},
      {"steel-plate", 5},
      {"battery", 20}
    },
    result = "personal-roboport-chargepad-equipment"
  },
  {
    type = "recipe",
    name = "personal-roboport-chargepad-equipment-2",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"personal-roboport-chargepad-equipment", 1},
      {"advanced-circuit", 5},
      {"steel-plate", 5},
      {"battery", 20}
    },
    result = "personal-roboport-chargepad-equipment-2"
  },
  {
    type = "recipe",
    name = "personal-roboport-chargepad-equipment-3",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      {"personal-roboport-chargepad-equipment-2", 1},
      {"processing-unit", 5},
      {"steel-plate", 5},
      {"battery", 20}
    },
    result = "personal-roboport-chargepad-equipment-3"
  },
  {
    type = "recipe",
    name = "personal-roboport-chargepad-equipment-4",
    enabled = false,
    energy_required = 16,
    ingredients =
    {
      {"personal-roboport-chargepad-equipment-3", 1},
      {"processing-unit", 5},
      {"steel-plate", 5},
      {"battery", 20}
    },
    result = "personal-roboport-chargepad-equipment-4"
  },

  {
    type = "recipe",
    name = "personal-roboport-robot-equipment",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"advanced-circuit", 5},
    },
    result = "personal-roboport-robot-equipment"
  },
  {
    type = "recipe",
    name = "personal-roboport-robot-equipment-2",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
      {"personal-roboport-robot-equipment", 1},
      {"advanced-circuit", 10},
    },
    result = "personal-roboport-robot-equipment-2"
  },
  {
    type = "recipe",
    name = "personal-roboport-robot-equipment-3",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      {"personal-roboport-robot-equipment-2", 1},
      {"processing-unit", 10},
    },
    result = "personal-roboport-robot-equipment-3"
  },
  {
    type = "recipe",
    name = "personal-roboport-robot-equipment-4",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"personal-roboport-robot-equipment-3", 1},
      {"processing-unit", 10},
    },
    result = "personal-roboport-robot-equipment-4"
  },

  {
    type = "technology",
    name = "personal-roboport-modular-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_equipment
    {
      icon_size = 128,
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-equipment.png",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-antenna-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-chargepad-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-robot-equipment"
      }
    },
    prerequisites =
    {
      "personal-roboport-equipment",
    },
    unit =
    {
      count = 20,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "c-k-d-zzz1"
  },
  {
    type = "technology",
    name = "personal-roboport-modular-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment
    {
      icon_size = 128,
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-equipment.png",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-antenna-equipment-2"
      },
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-chargepad-equipment-2"
      },
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-robot-equipment-2"
      }
    },
    prerequisites =
    {
      "personal-roboport-modular-equipment-1",
      "personal-roboport-mk2-equipment",
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d-zzz2"
  },
  {
    type = "technology",
    name = "personal-roboport-modular-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment
    {
      icon_size = 128,
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-equipment.png",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-antenna-equipment-3"
      },
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-chargepad-equipment-3"
      },
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-robot-equipment-3"
      }
    },
    prerequisites =
    {
      "personal-roboport-modular-equipment-2",
      "personal-roboport-mk3-equipment",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d-zzz3"
  },
  {
    type = "technology",
    name = "personal-roboport-modular-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_equipment
    {
      icon_size = 128,
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-equipment.png",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-antenna-equipment-4"
      },
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-chargepad-equipment-4"
      },
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-robot-equipment-4"
      }
    },
    prerequisites =
    {
      "personal-roboport-modular-equipment-3",
      "personal-roboport-mk4-equipment",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d-zzz4"
  },
}
)

