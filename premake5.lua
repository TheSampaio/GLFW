project "glfw"
    kind "StaticLib"
    language "C"
    location "build"

    targetdir (".Out/Bin/" .. output_dir .. "%{prj.name}")
    objdir    (".Out/Obj/" .. output_dir .. "%{prj.name}")

    files { "source/*.c", "include/GLFW/*.h" }
    
    includedirs { "include" }

    filter "system:windows"
        defines { "_GLFW_WIN32" }
        links { "gdi32", "opengl32", "user32", "shell32" }

    filter "system:macosx"
        defines { "_GLFW_COCOA" }
        links { "Cocoa.framework", "OpenGL.framework", "IOKit.framework", "CoreVideo.framework" }

    filter "system:linux"
        defines { "_GLFW_X11" }
        links { "X11", "dl", "pthread" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"

-- Options
newoption {
    trigger = "shared",
    description = "Build shared libraries instead of static"
}

if _OPTIONS["shared"] then
    kind "SharedLib"
    defines { "_GLFW_BUILD_DLL" }
end

-- Examples
newoption {
    trigger = "build-examples",
    description = "Build the GLFW example programs"
}

if _OPTIONS["build-examples"] then
    project "GLFW_Examples"
        kind "ConsoleApp"
        language "C"
        files { "examples/*.c" }
        includedirs { "include" }
        links { "GLFW" }
end

-- Tests
newoption {
    trigger = "build-tests",
    description = "Build the GLFW test programs"
}

if _OPTIONS["build-tests"] then
    project "GLFW_Tests"
        kind "ConsoleApp"
        language "C"
        files { "tests/*.c" }
        includedirs { "include" }
        links { "GLFW" }
end
