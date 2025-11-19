-- m0th v1 – Multi-file loader (one-liner)
local repo = "https://raw.githubusercontent.com/vfxu-nor/m0th-v1/main/"

loadstring(game:HttpGet(repo.."ui.lua"))()      -- builds the UI + creates m0th ScreenGui
task.wait(20) -- give UI time to exist

loadstring(game:HttpGet(repo.."main.lua"))()
task.wait(4)
loadstring(game:HttpGet(repo.."box.lua"))()
loadstring(game:HttpGet(repo.."lines.lua"))()
loadstring(game:HttpGet(repo.."aim.lua"))()

print("m0th v1 loaded – 5-file version")
