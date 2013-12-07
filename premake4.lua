solution "WindowsAppSolution"
   configurations { "Debug", "Release"}
   location "build"

project "WindowsApp"
   kind "WindowedApp"
   flags { "WinMain" }
   language "C++"
   includedirs { "include" }
   files { "src/**.cpp" }
   location "build"

   configuration "Debug"
      flags { "Symbols" , }
      defines { "_DEBUG" }

   configuration "Release"
      flags { "Optimize" }
      defines { "NDEBUG" }


