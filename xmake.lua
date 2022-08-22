add_rules("mode.debug", "mode.release")
set_languages("cxx20")
set_optimize("fastest")


add_requires("glfw 3.3.8")
add_requires("glad v0.1.36")
add_requires("imgui v1.83-docking", {configs = {glfw_opengl3 = true}})
add_requires("glm 0.9.9+8")
add_requires("imguizmo 1.83")
add_requireconfs("imguizmo.imgui", {override = true, version = "v1.83-docking", configs = {glfw_opengl3 = true}}) -- config sub imgui module

target("App")
    set_kind("binary")
    set_runtimes("MT")
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("include")
    add_packages("glfw")
    add_packages("glad")
    add_packages("imgui", { public = true })
    add_packages("glm", { public = true })
    add_packages("imguizmo")