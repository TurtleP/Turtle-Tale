return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.5",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 35,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 36,
  properties = {
    ["background"] = "cave"
  },
  tilesets = {
    {
      name = "base",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 1,
      margin = 0,
      image = "../../graphics/game/tiles.png",
      imagewidth = 374,
      imageheight = 255,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 330,
      tiles = {
        {
          id = 0,
          properties = {
            ["background"] = "cave"
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "main",
      x = 0,
      y = 0,
      width = 35,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 226, 268, 268, 268, 223, 0, 0, 0, 0, 226, 268, 268, 268, 268, 268, 268, 268, 268, 268, 268, 223, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 226, 268, 268, 268, 223, 0, 0, 0, 0, 226, 268, 268, 268, 268, 268, 268, 268, 268, 268, 268, 289, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 226, 268, 268, 268, 223, 0, 0, 0, 0, 290, 268, 268, 268, 268, 268, 268, 268, 268, 268, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        246, 247, 311, 0, 0, 0, 226, 268, 268, 268, 223, 0, 0, 0, 0, 0, 290, 202, 202, 203, 268, 268, 268, 268, 268, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        268, 268, 223, 0, 0, 0, 226, 268, 268, 268, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202, 203, 268, 268, 268, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        268, 268, 223, 0, 0, 0, 226, 268, 268, 268, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202, 203, 202, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        268, 268, 223, 0, 0, 0, 290, 202, 203, 202, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        268, 268, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        202, 203, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 315, 205, 205, 205, 205, 205, 316, 5, 0, 0, 0, 0, 0, 0, 0, 312, 247, 246, 247, 246, 247, 246, 247,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 312, 247, 268, 268, 268, 268, 268, 268, 268, 268,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 226, 268, 268, 268, 268, 268, 268, 268, 268, 268,
        0, 0, 0, 0, 312, 247, 246, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 226, 268, 268, 268, 268, 268, 268, 268, 268, 268,
        0, 0, 0, 0, 290, 203, 202, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 268, 268, 268, 268, 268, 268, 268, 268, 268,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 247, 246, 246, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 203, 202, 203, 202, 203, 202, 203, 202,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 203, 203, 202, 203, 0, 0, 0, 315, 205, 316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 5, 5, 312, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 290, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 315, 205, 205, 205, 316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 311,
        0, 0, 0, 0, 0, 0, 0, 312, 247, 247, 247, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 246, 247, 246, 247, 268, 223,
        0, 0, 0, 0, 0, 0, 0, 226, 268, 268, 268, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 226, 268, 268, 268, 268, 268, 223
      }
    },
    {
      type = "tilelayer",
      name = "overlay",
      x = 0,
      y = 0,
      width = 35,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 0, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 291, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 274, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 274, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 295, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 295, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 291, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 274, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "topObjects",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "bat",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "hermit",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 192,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["evil"] = true
          }
        },
        {
          id = 3,
          name = "water",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 288,
          width = 112,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "water",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 288,
          width = 368,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 128,
          width = 128,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 144,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 144,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 272,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "waterfall",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 240,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "waterfall",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 144,
          width = 16,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 224,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["ladder"] = true
          }
        },
        {
          id = 13,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 224,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 224,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 208,
          width = 80,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 288,
          width = 80,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 176,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 48,
          width = 48,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 0,
          width = 80,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 128,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 128,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 128,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["ladder"] = true
          }
        },
        {
          id = 24,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 0,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 32,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 32,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 32,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 256,
          width = 48,
          height = 3,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "waterfall",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 224,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 34,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 288,
          width = 112,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "tile",
          type = "",
          shape = "rectangle",
          x = 528,
          y = 272,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
