workspace "ImGuiAppTemplate"
	architecture "x86_64"
	characterset "MBCS"
	startproject "TemplateApp"

	configurations { "Debug", "Release", }

group "Dependencies"
	include "TemplateApp/vendor/imgui"
group ""

include "TemplateApp"
