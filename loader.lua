local repo = "https://github.com/vfxu-nor/m0th-v1/edit/main/"

loadstring(game:HttpGet(repo.."ui.lua"))()  
task.wait(0.2)

loadstring(game:HttpGet(repo.."main.lua"))()
loadstring(game:HttpGet(repo.."box.lua"))()
loadstring(game:HttpGet(repo.."lines.lua"))()
loadstring(game:HttpGet(repo.."aim.lua"))()

print("m0th v1 loaded – 5-file version")
