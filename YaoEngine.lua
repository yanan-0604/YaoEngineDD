project"YaoEngine"
    location"YaoEngine"
    language"C++"
    kind"StaticLib"
    cppdialect"C++17"


    targetdir"%{wks.name}/bin/%{prj.name}/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
    objdir"%{wks.name}/bin-int/%{prj.name}/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"


    files{
        "YaoEngine/source/**.cpp",
        "YaoEngine/source/**.h",
        "YaoEngine/source/**.hpp",
        "YaoEngine/source/**.c",
        "YaoEngine/source/Render/**.cpp",
        "YaoEngine/source/Render/**.h",
        "YaoEngine/source/Render/**.hpp",
        "YaoEngine/source/Render/**.c",
        "YaoGame/Shader/glsl/**.weiyao",
    }


    defines{
        "WEIYAO_DLL",
    }

    links{
        "GLFW",
        "glad",
    }
    
    includedirs{
        "YaoEngine/source",
        "YaoEngine/vendor/GLFW/include",
        "YaoEngine/vendor/glad/include",
        "YaoEngine/vendor/glm",
        "YaoEngine/vendor/entt/src/entt",
        
    }


    filter"configurations:Debug"
        defines{"DEBUG"}
        symbols"On"


    filter"configurations:Release"
        defines{"NDEBUG"}
        optimize"On"


  	filter "system:windows"
		systemversion "latest"
		buildoptions {"/utf-8"}