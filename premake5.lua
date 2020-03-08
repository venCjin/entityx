project "entityX"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "entityx/**.h",
        "entityx/**.hpp",
        "entityx/System.cc",
        "entityx/Event.cc",
        "entityx/Entity.cc",
        "entityx/help/Timer.cc",
        "entityx/help/Pool.cc"
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
