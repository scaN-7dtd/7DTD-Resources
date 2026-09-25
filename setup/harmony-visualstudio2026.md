# HARMONY SETUP


## Step 1

Download and install [Microsoft Visual Studio 2026](https://visualstudio.microsoft.com/)


## Step 2

Create a new project:

1. Open Visual Studio and select "Create a new project"
2. Select these filter options: language "C#", platform "Windows" and project type "Library"
3. Select "Class Library (.NET Framework)" - "A project for creating a C# class library (.dll)"
4. Write a name and then in "Framework" select ".NET Framework 4.8".

## Step 3

Add references:


* Inside the `Solution Explorer` (right tab), In "References", right-click and select "Add Reference..."
* Click the "Browse" button and add the following .dll files:
    * `Assembly-CSharp.dll` from "\7 Days To Die\7DaysToDie_Data\Managed"
    * `UnityEngine.CoreModule.dll` from "\7 Days To Die\7DaysToDie_Data\Managed"
    * `0Harmony.dll` from "\7 Days To Die\Mods\0_TFP_Harmony"
* At the top of "Class1.cs", add:
```
using HarmonyLib;
using UnityEngine;
```

* Remove any unused `using` directives from the file. In particular, make sure to remove: `using System.Diagnostics;` This namespace can cause a conflict with `Debug.Log`, as both `System.Diagnostics.Debug` and `UnityEngine.Debug` can be referenced as `Debug`.


## Step 4 

Now add the following code. This is the essential initialization code for a Harmony mod. It creates the Harmony instance and applies all patches when the mod is loaded.

```
        public class ModApi : IModApi
        {
            public void InitMod(Mod _modInstance)
            {
                var harmony = new Harmony("yournickname_mynewharmonymod"); // [1]
                harmony.PatchAll();

                Debug.Log("[My New Harmony Mod] Loaded.");
            }
        }
```

[1] The Harmony identifier should match the mod identifier specified in ModInfo.xml: `<Name value="yournickname_mynewharmonymod"/>`

## Step 5

After compiling your mod, place the yourmod.dll file inside your mod's folder. It should look like this:

```
7 Days To Die\
            └── Mods\
                └── My New Harmony Mod\ 
                    ├── ModInfo.xml 
                    └── yourmod.dll
```

Remember to disable Easy Anti-Cheat before testing.
