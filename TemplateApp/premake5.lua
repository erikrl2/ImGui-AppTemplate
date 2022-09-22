project "TemplateApp"
	kind "WindowedApp"
	language "C++"
	cppdialect "C++17"

	outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
	}

	includedirs
	{
		"src",
		"vendor/ImGui"
	}

	links
	{
		"d3d9.lib",
		"ImGui"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

		defines { "DEBUG" }

	filter "configurations:Release"
		runtime "Release"
		optimize "On"

		defines { "NDEBUG" }
