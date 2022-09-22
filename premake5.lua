workspace "ImGuiAppTemplate"
	architecture "x86_64"
	characterset "MBCS"
	startproject "TemplateApp"

	configurations { "Debug", "Release", }

group "Core"
	include "TemplateApp/vendor/ImGui"
group ""

include "TemplateApp"
