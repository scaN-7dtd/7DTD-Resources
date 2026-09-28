## 7DTD Console Commands List Detailed (v3.2.0 b10)


Obtained using the command `help outputdetailed`.

```
*** List of Help Topics ***
*** Topic: output ***
Printed commands to log file

*** Topic: outputdetailed ***
Printed commands with details to log file

*** Topic: search ***
<first argument will be the string to match>

*** Topic: * ***
<first argument will be the string to match>
```

```
*** List of Commands ***
*** Command(s): AccDecay, SetAccDecay, SetAccuracyDecay, sad ***
reset - apply the default settings for this command
<Decimal Value> - Sets the decay constant for accuracy calculations using ItemActionRanged

*** Command(s): admin ***
Set/get user permission levels. A level of 0 is maximum permission,
users without an explicitly set permission have a permission level of 1000.
Usage:
   admin add <name / entity id / platform + platform user id> <level> [displayname]
   admin remove <name / entity / platform + platform user id>
   admin addgroup <steam id> <level regular> <level mods> [displayname]
   admin removegroup <steam id>
   admin list
To use the add/remove sub commands with a name or entity ID the player has
to be online, the variant with platform and platform ID can be used for currently offline
users too.
Displayname can be used to put a descriptive name to the ban list in addition
to the user's platform ID. If used on an online user the player name is used by default.
When adding groups you set two permission levels: The 'regular' level applies to
normal members of the group, the 'mods' level applies to moderators / officers of
the group.

*** Command(s): AdminSpeed, as ***
No detailed help available.
Description: AdminSpeed

*** Command(s): agemap ***
"agemap" or "agemap [x]", where [x] is a float value specifying the maximum age to normalise results to in in-game days. Defaults to EnumGamePrefs.MaxChunkAge when not specified.
	Outputs a TGA texture representing a map of all chunks with chunk age, protection status and save status data split across each colour channel:
	R [scalar]: Effective chunk age proportionate to maximum age, taking POI-based grouping rules into account. More red = older, closer to expiry.
	G [scalar]: Raw chunk age proportionate to maximum age, ignoring POI-based grouping. Can be compared with the red channel to asses the impacts of grouping.
	B [scalar]: Protection level. More blue = more protected.
	A [binary]: Saved status. Opaque = saved, transparent = not saved.

*** Command(s): ai ***
AI commands:
activityclear - remove all activity areas (heat)
anim <name> - trigger an animation (attack, attack2)
animmove <forward> <strafe> - set animation forward and strafe motion
freezepos - toggles movement
latency - toggles drawing
pathlines - toggles drawing editor path lines
pathgrid - force grid update
ragdoll <force> <time>
rage <speed> <time> - make all zombies rage (0 - 2, 0 stops) (seconds)
sendnames - toggles admin clients receiving debug name info

*** Command(s): aiddebug ***
No detailed help available.
Description: Toggles AIDirector debug output.

*** Command(s): audio ***
Just type audio and hit enter for the info.


*** Command(s): automation, auto ***
Type 'auto' in the console or see source XML doc for full usage.

*** Command(s): automove ***
Parameters:
off - disable
gototarget - goto the target position
settarget - set target to current player position
clearlookat - disable look at
setlookat - set look at to current player position
line duration loops <x> <y> <z> - move to x y z (or target) over duration with loops (-loops will ping pong)
orbit duration loops <x> <y> <z> - circle around x y z (or target) over duration with loops (-loops will ping pong)
relative x z angle - move by x (left/right) and z (forward) and turn by angle per second

*** Command(s): ban ***
Set/get ban entries. Bans will be automatically lifted after the given time.
Usage:
   ban add <name / entity id / platform + platform user id> <duration> <duration unit> [reason] [displayname]
   ban remove <name / entity id / platform + platform user id>
   ban list
To use the add/remove sub commands with a name or entity ID the player has
to be online, the variant with platform and platform ID can be used for currently offline
users too.
Duration unit is a modifier to the duration which specifies if in what unit
the duration is given. Valid units:
    minute(s), hour(s), day(s), week(s), month(s), year(s)
Displayname can be used to put a descriptive name to the ban list in addition
to the user's platform ID. If used on an online user the player name is used by default.
Example: ban add madmole 2 minutes "Time for a break" "Joel"

*** Command(s): bents ***
Use 'on' or 'off', or 'info' to count

*** Command(s): buff ***
No detailed help available.
Description: Applies a buff to the local player

*** Command(s): buffplayer ***
Usage:
   buffplayer <player name / steam id / entity id> <buff name>
Apply the given buff to the player given by the player name or entity id (as given by e.g. "lpi").

*** Command(s): camera, cam ***
Usage:
   1. cam save <name> [comment]
   2. cam load <name>
   3. cam list
   4. cam lock
   5. cam unlock
1. Save the current player's position and camera view or the camera position
and view if in detached mode under the given name. Optionally a more descriptive
comment can be supplied.
2. Load the position and direction with the given name. If in detached camera
mode the camera itself will be adjusted, otherwise the player will be teleported.
3. List the saved camera positions.
4/5. Lock/unlock the camera rotation. Can also be achieved with the "Lock Camera" key.

*** Command(s): ccphysics ***
No detailed help available.
Description: Enables or disables changes to CCPhysics layer interactions. Reloading the game session may be necessary to fully apply if changed.

*** Command(s): challenges ***
Usage:
  1. challenges list [group name]
  2. challenges complete all ["redeem"/"r"]
  3. challenges complete first ["redeem"/"r"]
  4. challenges complete challenge <challenge name> ["redeem"/"r"]
  5. challenges complete group <group name> ["redeem"/"r"]
  6. challenges complete category <category name> ["redeem"/"r"]
  7. challenges groups [category name]
Short forms: "list"->"l", "complete"->"c", "groups"->"g".
1. List challenges - optionally limited to a specific group.
2. Set all challenges to completed.
3. Set challenges of the first defined group to completed.
4. Set given challenge to completed.
5. Set all challenges in the given group to completed.
6. Set all challenges in the given category to completed.
2.-6. If the optional "redeem" or "r" is specified it will automatically redeem the completed challenges.
7. List all groups - optionally limited to a specific category.

*** Command(s): chunkcache, cc ***
No detailed help available.
Description: shows all loaded chunks in cache

*** Command(s): chunkobserver, co ***
Usage:
  1. chunkobserver add <x> <z> [size]
  2. chunkobserver remove <x> <z>
  3. chunkobserver list
1. Place an observer on the chunk that contains the coordinate x/z.
   Optionally specifying the box radius in chunks, defaulting to 1.
2. Remove the observer from the chunk with the coordinate, if any.
3. List all currently placed observers

*** Command(s): chunkreset, cr ***
Usage:
  1. chunkreset <x1> <z1> <x2> <z2>
  2. chunkreset [f]
1. Rebuilds the chunks that contain the given coordinate range.
2. Can only be executed by a player in the ingame console! Behaviour depends on whether the
   player is currently within the bounds of a POI:
   Within a POI: The POI is reset.
   Not within a POI: The chunk the player is in and the eight chunks around that one are
     rebuilt. Not deco! Does not reload POI data!
   d - regen deco
   f - fully regenerates chunks (may cause double entities!)
   u, utimed, ue - Unload chunks or entities
   nq - Enqueue a 3x3 group of chunks centred around the player to be reset when unsynced, unless they are otherwise protected from the chunk reset system.

*** Command(s): commandpermission, cp ***
Set/get permission levels required to execute a given command. Default
level required for commands that are not explicitly specified is 0.
Usage:
   cp add <command> <level>
   cp remove <command>
   cp list

*** Command(s): config ***
Imports/exports config data from/to external file
Usage:
   config import [filename]
   config export [filename]


*** Command(s): createwebuser ***
No detailed help available.
Description: Create a web dashboard user account

*** Command(s): creativemenu, cm ***
No detailed help available.
Description: enables/disables the creativemenu

*** Command(s): cvar ***
Usages of the commands. Add '-p <playerId>' to any command to apply that command to a remote player. 
cvar get <cvarName>
cvar set <cvarName> <floatValue>
cvar track <cvarName> <true|false>
cvar list <searchFilter>

*** Command(s): cwtest ***
No detailed help available.
Description: Herramientas de prueba de CropsTestRework. Uso: cwtest rain <0-1> | temp <F> | sunny | reset | status | info | set <campo> <valor> | step <horas> | debug [on|off]

*** Command(s): damagereset ***
Usage:    damagereset [include doors]By default the command only resets non-door blocks to full health. If the optional argument is "true" doors are also repaired.

*** Command(s): debuff ***
No detailed help available.
Description: Removes a buff from the local player

*** Command(s): debuffplayer ***
Usage:
   debuffplayer <player name / steam id / entity id> <buff name>
Remove the given buff from the player given by the player name or entity id (as given by e.g. "lpi").

*** Command(s): debuggamestats ***
No detailed help available.
Description: GameStats commands

*** Command(s): debugjiggle, dgj ***
No detailed help available.
Description: 

*** Command(s): debugmenu, dm ***
No detailed help available.
Description: enables/disables the debugmenu 

*** Command(s): debugpanels ***
debugpanels - toggle display, enabling also enables the debug menudebugpanels [names] - set these panels active and disable all others, uses the short name of the panel (e.g. debugpanels Ply Ge Sp)

*** Command(s): debugshot, dbs ***
Usage:
  debugshot [save perks]
Lets you make a screenshot that will have some generic info
on it and a custom text you can enter. Also stores a list
of your current perk levels, buffs and cvars in a CSV file
next to it if the optional parameter 'save perks' is set to true

*** Command(s): debugweather ***
No detailed help available.
Description: Dumps internal weather state to the console.

*** Command(s): decomgr ***
No detailed help available.
Description: "decomgr": Saves a debug texture visualising the DecoOccupiedMap.
"decomgr state": Saves a debug texture visualising the location/state of all of the DecoObjects saved in decorations.7dtd.

*** Command(s): discord, dc ***
No detailed help available.
Description: Toggle Discord debug window

*** Command(s): dms ***
No commands available for dms at the moment.

No command or topic found by "Dynamic mesh"

No command or topic found by "Dynamic mesh debug"

*** Command(s): dynamicproperties, dprop ***
No detailed help available.
Description: Dynamic Properties debugging

*** Command(s): enablerendering ***
Usage:
  1. enablerendering
  2. enablerendering <0/1>
1. Show current state of renderer
2. Disable/enable renderer
NOTE: This command can only turn the renderer off, it can not turn it on if it is not enabled in the serverconfig!

*** Command(s): exhausted ***
No detailed help available.
Description: Makes the player exhausted.

*** Command(s): expiryinfo ***
expiryinfo [x]
Prints location and expiry day/time for the next [x] chunks set to expire.

*** Command(s): exportcurrentconfigs ***
Exports all game config XMLs as they are currently used (including applied
patches from mods) to the folder "Configs" in the save folder of the game.
If run from the main menu it exports the XUi configs for the menu, if run
from a game session will export all others.

*** Command(s): exportprefab ***
Usage:
  exportprefab <name> <x1> <y1> <z1> <x2> <y2> <z2> [part]
Exports a prefab with the given name from a box defined by the coordinate pair of two corners
If the optional parameter 'part' is 'true' it will export into the 'Parts' subfolder of the prefabs folder

*** Command(s): fallingblocks, fb ***
No detailed help available.
Description: FallingBlocks WIP Settings

*** Command(s): floatingorigin, fo ***
No detailed help available.
Description: 

*** Command(s): ForceEventDate ***
No detailed help available.
Description: Specify date for testing event dates

*** Command(s): fov ***
No detailed help available.
Description: Camera field of view

*** Command(s): ftw, fellthroughworld ***
No detailed help available.
Description: Log the fell through world debug information for testing purposes.

*** Command(s): gamestage ***
No detailed help available.
Description: Shows the gamestage of the local player

*** Command(s): getgamepref, gg ***
Get all game preferences or only those matching a given substring

*** Command(s): getgamestat, ggs ***
Get all game stats or only those matching a given substring

*** Command(s): getlogpath, glp ***
No detailed help available.
Description: Get the path of the logfile the game currently writes to

*** Command(s): getoptions ***
Get all game options on the local game

*** Command(s): getsandboxoptions, gso ***
Usage:
  getsandboxoptions [show all]
Shows the currently loaded game's Sandbox Options.
By default only shows those that have non-default values, but can show all options by specifying the optional argument with "true".

*** Command(s): gettime, gt ***
No detailed help available.
Description: Get the current game time

*** Command(s): gfx ***
Graphics commands:
af <value> - anisotropic filtering off, on or force on (0, 1, 2)
dr <scale> <min> <max> - set dynamic res scale (0 auto, .1 to 1 force, -1 for off) and min/max FPS
dt <value> - toggle distant terrain or set value (0 or 1)
dti <value> - set distant terrain instancing (0 or 1)
dtmaxlod <value> - set distant terrain max LOD (0 to 5)
dtpix <value> - set distant terrain pixel error (1 to 200)
key name <value> - set shader keyword (0 or 1)
pp name <value> - set postprocessing name (enable, ambientOcclusion (ao), auto exposure (ae), bloom, colorGrading (cg), etc.) to value (0 or 1)
res <width> <height> - set screen resolution
resetrev - clear graphics preset revision
skin <value> - set skin bone count (1, 2, 4, 5+ (all))
st name <value> - set streaming name (budget (0 disables), discard, forceload, reduction) to value
tex - show texture info
texbias <value> - set bias on all textures
texlimit <value> - set limit (0-x)
viewdist <value> - Set view distance in chunks

*** Command(s): givequest ***
givequest commands:
complete - complete all quests
tieradd <points> - add the points to your quest tier (default is 10)
<quest name> - gives you the quest

*** Command(s): giveself ***
No detailed help available.
Description: usage: giveself itemName [qualityLevel=6] [count=1] [putInInventory=false] [spawnWithMods=true]

*** Command(s): giveselfxp ***
Give yourself experience
Usage:
   giveselfxp <number> [1 (use xp bonuses)]

*** Command(s): givexp ***
Give a player experience points
Usage:
   givexp <entity id / player name / user id> <number>

*** Command(s): graph ***
Graph commands:
# - 0 removes all graphs, 1+ sets graphs height
cvar <name> <count> <max> - show graph of a cvar, line count (0 hides), max graph value (default is 1)
dr <count> - show dynamic res graph, line count (0 hides)
fps <count> <fps max> - show fps graph, line count (0 hides), max graph value
pe <name> <count> <max> - show graph of a passive effect (healthmax..), line count (0 hides), max graph value (default is 1)
spf <count> <spf max> - show seconds per frame graph, line count (0 hides), max graph value
stat <name> <count> <max> - show graph of a stat (health, stamina..) with line count (0 hides), max graph value (default is 1)
tex <name> <count> - show texture graph (mem or stream), line count (0 hides)

*** Command(s): help ***
Usage:  1. help  2. help * <searchstring>  3. help <command name>  4. help output  5. help outputdetailed1. Show general help and list all available commands2. List commands where either the name or the description contains the given text3. Show help for the given command4. Write command list to log file5. Write command list with help texts to log file

*** Command(s): invalidatecaches ***
TODO

*** Command(s): jds ***
JunkDrone help:[Server/Host Commands]jds, log man - logs out drone manager dataclear - clears drone data for player (ex. clear [PlayerName])unstuck [playerId] - triggers teleport to player

*** Command(s): junkDrone, jd ***
JunkDrone help:[Client Commands]jd, log - logs out local player owned dronesunstuck - triggers teleport to playerdebuglog - toggles extended data loggingclear - Clears local player drone type owned entitiesdebugcam, dcam - toggles debug camerafriendlyfire, ff - toggles friendly fire

*** Command(s): kick ***
No detailed help available.
Description: Kicks user with optional reason. "kick playername reason"

*** Command(s): kickall ***
No detailed help available.
Description: Kicks all users with optional reason. "kickall reason"

*** Command(s): kill ***
Kill a given entity.
Usage:
   1. kill <entity id>
   2. kill <player name / steam id>
1. can be used to kill any entity that can be killed (zombies, players).
2. can only be used to kill players.

*** Command(s): killall ***
Kills all matching entities (but never players)
Usage:
   killall (all enemies)
   killall alive (all EntityAlive types except vehicles and turrets)
   killall all (all types)

*** Command(s): lgo, listgameobjects ***
No detailed help available.
Description: List all active game objects

*** Command(s): lights ***
Light debugging:
v - toggle viewer enable
off - viewer lights off
on - viewer lights on
clearreg - clear registered
disableall - 
enableall - 
list - list all lights
listfile - list all lights to Lights.txt
liste - list lights effecting the player position
lodviewdistance <d> - set the light LOD view distance (0 uses defaults)

*** Command(s): listdlc, dlcs ***
List DLCs and their entitlement states.
Usage:
   listdlc
   dlcs


*** Command(s): listents, le ***
No detailed help available.
Description: lists all entities

*** Command(s): listplayerids, lpi ***
No detailed help available.
Description: Lists all players with their IDs for ingame commands

*** Command(s): listplayers, lp ***
No detailed help available.
Description: lists all players

*** Command(s): listthreads, lt ***
No detailed help available.
Description: lists all threads

*** Command(s): logenv ***
No detailed help available.
Description: Log the process environment variables

*** Command(s): loggamestate, lgs ***
Writes information on the current state of the game (like memory usage,
entities) to the log file. The section will use the message parameter
in its header.
Usage:
   loggamestate <message> [true/false]
Message is a string that will be included in the header of the generated
log section. The optional boolean parameter specifies if this command
should be run on the client (true) instead of the server (false) which
is the default.

*** Command(s): loglevel ***
Select which types of log messages are shown on the connection
you enter this command. By default all log messages are printed
on every connection.
Usage: loglevel <loglevel name> <true/false>
Log levels: INF, WRN, ERR, EXC or ALL
Example: Disable display of WRN messages: loglevel WRN false

*** Command(s): loot ***
Loot commands:
container [name] <count> <stage> <abundance> - list loot from named container for count times

*** Command(s): mapdata ***
Usage:
clear - reset player map data
prefab - save prefabs to mapdata.png
start - save start points to mapdata.png

*** Command(s): mem ***
Commands:
clean - cleanup memory pools
pools - list memory pools
gc - show GC info
gc alloc <value> - allocate k value of temp memory
gc perm <value> - allocate k value of permanent memory
gc clearperm - clear permanent allocations list
gc c - run collection
gc enable <value> - enable GC (0 or 1)
gc inc <value> - run incremental collect for value ms
gc inctime <value> - set incremental collect time in ms
obj [mode] - list object pool (active or all)
objs - shrink object pool
log [interval] - start/stop logging of performance data to a file

*** Command(s): memcl ***
Commands:
clean - cleanup memory pools
pools - list memory pools
gc - show GC info
gc alloc <value> - allocate k value of temp memory
gc perm <value> - allocate k value of permanent memory
gc clearperm - clear permanent allocations list
gc c - run collection
gc enable <value> - enable GC (0 or 1)
gc inc <value> - run incremental collect for value ms
gc inctime <value> - set incremental collect time in ms
obj [mode] - list object pool (active or all)
objs - shrink object pool
log [interval] - start/stop logging of performance data to a file

*** Command(s): memprofile, mprof ***
No detailed help available.
Description: Toggles screen Memory Profiler UI

*** Command(s): meshdatamanager, mdm ***
mdm

*** Command(s): mumblepositionalaudio, mpa ***
Usage:  1. mpa enable  2. mpa disable  3. mpa reinit

*** Command(s): na ***
Usage:
  1. na


*** Command(s): networkclient, netc ***
Commands:
latencysim <min> <max> - sets simulation in millisecs (0 min disables)
packetlosssim <chance> - sets simulation in percent (0 - 50)

*** Command(s): networkserver, nets ***
Commands:
latencysim <min> <max> - sets simulation in millisecs (0 min disables)
packetlosssim <chance> - sets simulation in percent (0 - 50)

*** Command(s): newweathersurvival ***
No detailed help available.
Description: Enables/disables new weather survival

*** Command(s): occlusion ***
No detailed help available.
Description: Control OcclusionManager

*** Command(s): openiddebug ***
No detailed help available.
Description: enable/disable OpenID debugging

*** Command(s): overlap ***
No detailed help available.
Description: Toggle LocalPlayer's Character Controller Overlap Recovery

*** Command(s): overridemaxplayercount ***
No detailed help available.
Description: Override Max Server Player Count

*** Command(s): pathtest ***
Usage. Toggle a path test mode. breakblocks - toggles path allowed to break blocks climbladders - toggles path allowed to break blocks climbwalls - toggles path allowed to break blocks

*** Command(s): performanceprofiler, pp ***
Type 'pp' to toggle capture, or 'pp start [fps]' / 'pp stop'.

*** Command(s): permissionsallowed, pallowed, pa ***
pa i[nfo] - Prints info about the current permissions.
pa g[rant] <Multiplayer|Communication|Crossplay|HostMultiplayer|All> - Adds the given permissions to the current debug permissions mask (still respects existing permissions though).
pa rev[oke] <Multiplayer|Communication|Crossplay|HostMultiplayer|All> - Removes the given permissions from the current debug permissions mask.
pa res[olve] <Multiplayer|Communication|Crossplay|HostMultiplayer|All> <true|false> - Attempt to resolve the specified permissions. True allows prompting the user for input, otherwise it is a silent resolution.

*** Command(s): pirs ***
tbd

*** Command(s): placeblockrotations, pbr ***
Places the block you currently hold in your hand in all supported rotations. Starts
at the current selection box and spreads out towards the right relative to the
current view direction of the player. Spaces out each block by 1m meter.

*** Command(s): placeblockshapes, pbs ***
Places all variants of the helper block you currently hold in your hand. Starts
at the current selection box and spreads out towards the right relative to the
current view direction of the player, starting a new row behind those every
25 blocks. Spaces out each block by 1m meter.

*** Command(s): playerOwnedEntities, poe ***
Player Owned Entities help:[Client Commands]poe - Lists owned entities for the local player[Server/Host Commands]poe - Lists owned entities for all players online[PlayerName] - Lists the owned entities for passed online player (ex. poe [PlayerName])

*** Command(s): playervisitmap, pvm ***
<x1> <z1> <x2> <z2> : start teleporting through the area defined by the coorindates, should be such that x1 < x2 and z1 < z2
stop : stop moving
height <int> : set the height off the ground to move the player to
stepradius <int> : set distance between teleports in chunks, default is half the player's view dimension
logfile <prefix> : sets the file for the memory log to a temporary file with this prefix
stepsperlog <int> : count of teleports between logs
dumplog : dump the current log file to the game log

*** Command(s): pois ***
Use on or off or only the command to toggle

*** Command(s): poiwaypoints, pwp ***
Adds waypoints for specified POIs.

pwp * - adds waypoints to all POIs in the world.
pwp <name> - adds waypoints to all POIs that starts with the name.
pwp <distance> - adds waypoints to all POIs with the specified distance.
pwp * <distance> - adds waypoints to all POIs within the specified distance.
pwp <name> <distance> - adds waypoints to all POIs within the specified distance that start with the name.
pwp -clear - removes all POI waypoints.

*** Command(s): pplist ***
No detailed help available.
Description: Lists all PersistentPlayer data

*** Command(s): prefab ***
Usage:  1. prefab load [prefab name]      Load given prefab. If no prefab is given show prefab explorer window.  2. prefab save      Save current prefab.  3. prefab clear      Clear prefab editor contents.  4. prefab thumbnail [name]      Update prefab thumbnail of given prefab. If no prefab is given applies to the loaded prefab.  5. prefab thumbnail bulk      Create thumbnails for all prefabs that do not have one yet.  6. prefab stats      Create CSV file with basic stats of all prefabs.  7. prefab convert <name>      Load, simplify, combine and export named prefab.  8. prefab bulk [count]      Do "convert" on all prefabs (optionally limited to first "count" prefabs).  9. prefab bulkins      Update inside information (.ins) for all prefabs.  10. prefab density <needle> <set>      Change density of all non-air blocks in current pefab that have <needle> density to <set>.  11. prefab simplify      Simplify current prefab for imposter generation.  12. prefab simplify1      Simplify current prefab for imposter generation, keep more complex blocks.  13. prefab combine      Combine meshes of current prefab into one.  14. prefab export      Export combined meshes as imposter for current prefab.

*** Command(s): prefabeditor, prefabedit, predit ***
prefabeditor

*** Command(s): prefabupdater ***
Update prefabs for newer game builds.
Usage:
   1. prefabupdater loadxml <xmlfile>
   2. prefabupdater clearxml
   3. prefabupdater createmapping <prefabname>
   4. prefabupdater loadtable [nametablefile]
   5. prefabupdater unloadtables
   6. prefabupdater updateblocks

1. Load a blocks.xml that has the information about the prefabs to be
   updated. If you have a modded XML first load that modded XML and
   afterwards load the XML provided with the game for legacy prefabs.
   The xmlfile-parameter can either be relative to the game's base
   directory or an absolute path (for pre-Alpha 17 prefabs).
2. Unload the data loaded with loadxml.
3. Create a block mapping file for the given prefab(s). Accepts '*' as
   wildcard (for pre-Alpha 17 prefabs).
4. Load a block name mapping file. File path is relative to the game
   directory if not specified as absolute path. If no file is given the
   default file supplied with the game is loaded (BlockUpdates.csv). 
5. Unload the data loaded with loadtable.
6. Update the block mappings in prefabs with the block name mapping table loaded by 4.

*** Command(s): profilenetwork ***
No detailed help available.
Description: Writes network profiling information

*** Command(s): profiler ***
No detailed help available.
Description: Utilities for collection profiling data from a variety of sources

*** Command(s): profiling ***
No detailed help available.
Description: Enable Unity profiling for 300 frames

*** Command(s): regionreset, rr ***
Usage: rr [-p|-pmode <n>] [-g|-gmode <n>] [-r|-region <x> <z>]

Examples: 
'rr' - reset all unprotected chunks in all regions (defaults).
'rr -p 2' - all regions, protection mode 2.
'rr -r 1 -2' - only region (1,-2), default modes.
'rr -r 1 -2 -p 0 -g 3' - region (1,-2) with protection mode 0 and grouping mode 3.

Protection modes (-p|-pmode, default 0): 
'0' - Default: All protection statuses are respected, including the dynamic protection of synced chunks around active player position(s).
'1' - EXPERIMENTAL: Most protection statuses are respected, excepting the dynamic protection of synced chunks around active player position(s). Chunks whose *only* protection status is "CurrentlySynced" will be treated as unprotected and are subject to being reset.
'2' - EXPERIMENTAL: All protection statuses are ignored. Every chunk in the target area will be reset whether protected or not.
'3' - EXPERIMENTAL: Most protection statuses are ignored, excepting the dynamic protection of synced chunks around active player position(s). Chunks whose protection status includes "CurrentlySynced" will be treated as protected; all other chunks are subject to being reset.

Grouping modes (-g|-gmode, default 3): 
'1' - NoGrouping: Chunks are reset based on their own protection flags only.
'2' - SeparatePOIs: Each POI gets the combined protection flags from all chunks overlapping the POI.
'3' - GroupedPOIs: Like SeparatePOIs, but POIs with overlapping chunks also merge into groups. Standard reset; should not cause POI discontinuities.

Notes: 
 - Use with caution! This operation permanently deletes all saved data for affected chunks.
 - The experimental protection modes are provided for debug purposes only. They bypass various protections in order to force chunks to be reset. This can cause a significant hitch whilst any synced chunks are regenerated, and may cause other side effects such as failing to clean up nav markers for land claims, etc.

*** Command(s): reloadentityclasses, rec ***
No detailed help available.
Description: reloads entityclasses xml data.

*** Command(s): removequest ***
No detailed help available.
Description: usage: removequest questname

*** Command(s): rendermap ***
No detailed help available.
Description: render the current map to a file

*** Command(s): repairchunkdensity, rcd ***
This command is used to check if the densities of blocks in a chunk match the actual block type.
If there is a mismatch it can lead to the chunk rendering incorrectly or not at all, typically
indicated by the error message "Failed setting triangles. Some indices are referencing out of
bounds vertices.". It can also fix such mismatches within a chunk.
Usage:
  1. repairchunkdensity <x> <z>
  2. repairchunkdensity <x> <z> fix
1. Just checks the chunk and prints mismatched to the server log. x and z are the coordinates of any
   block within the chunk to check.
2. Repairs any mismatch found in the chunk.

*** Command(s): resetallstats ***
No detailed help available.
Description: Resets all achievement stats (and achievements when parameter is true)

*** Command(s): saveworld, sa ***
No detailed help available.
Description: Saves the world manually.

*** Command(s): say ***
No detailed help available.
Description: Sends a message to all connected clients

*** Command(s): ScreenEffect ***
ScreenEffect [name] [intensity] [fade time]
ScreenEffect clear
ScreenEffect reload

*** Command(s): sdcs ***
Change a player's sex, race, and variant:
  Usage:
    sdcs                            : Show current archetype values
    sdcs <sex|race|variant> <value> : Set the specified value
  Examples :
    sdcs sex <male|female>
    sdcs race <white|black|asian|native>
    sdcs variant <1|2|3|4>

*** Command(s): sdminfo ***
sdminfo

*** Command(s): setgamepref, sg ***
No detailed help available.
Description: sets a game pref

*** Command(s): setgamestat, sgs ***
No detailed help available.
Description: sets a game stat

*** Command(s): settargetfps ***
Set the target FPS the game should run at (upper limit).
Usage:
  1. settargetfps
  2. settargetfps <fps>
1. gets the current target FPS.
2. sets the target FPS to the given integer value, 0 disables the FPS limiter.

*** Command(s): sette ***
No detailed help available.
Description: Sets the UseTriggerEffects flag, if true controller trigger effects are to be used

*** Command(s): settempunit, stu ***
Set the current temperature units.
Usage:
  1. settempunit F
  2. settempunit C
1. sets the temperature unit to Fahrenheit.
2. sets the temperature unit to Celsius.


*** Command(s): settime, st ***
Set the current game time.
Usage:
  1. settime day
  2. settime night
  3. settime <time>
  4. settime <day> <hour> <minute>
1. sets the time to day 1, 12:00 pm.
2. sets the time to day 2, 12:00 am.
3. sets the time to the given value. 1000 is one hour.
4. sets the time to the given day/hour/minute values.

*** Command(s): setwatervalue, swv ***
'swv [0.0 - 1.0]' Sets water value between empty (0.0) and full (1.0) for all flow-permitting blocks within the current selection bounds. 
E.g. 'swv 0.5' will set all affected blocks to be half-full. 
Blocks which do not permit flow are unchanged.

*** Command(s): show ***
No detailed help available.
Description: Shows custom layers of rendering.

*** Command(s): showalbedo, albedo ***
No detailed help available.
Description: enables/disables display of albedo in gBuffer

*** Command(s): showchunkdata, sc ***
No detailed help available.
Description: shows some date of the current chunk

*** Command(s): showClouds ***
type "showClouds myCloudTexture" where "myCloudTexture" is the name of the texture you want to see.
type "showClouds" to turn off this view.
Note: cloud textures MUST be locasted at ./resources/textures/environment/spectrums/default


*** Command(s): showhits ***
Commands:
damage - toggle damage numbers
hits <time> <size> - toggle hits

*** Command(s): shownexthordetime ***
No detailed help available.
Description: Displays the wandering horde time

*** Command(s): shownormals, norms ***
No detailed help available.
Description: enables/disables display of normal maps in gBuffer

*** Command(s): showspecular, spec ***
No detailed help available.
Description: enables/disables display of specular values in gBuffer

*** Command(s): showswings ***
No detailed help available.
Description: Show melee swing arc rays

*** Command(s): showtriggers ***
No detailed help available.
Description: Sets the visibility of the block triggers.

*** Command(s): shutdown ***
No detailed help available.
Description: shuts down the game

*** Command(s): signeditordebug, sed ***
No params: Toggles visibility of the Sign Editor debug panel. 

*** Command(s): signtexman, stm ***
No params: Toggles the enabled state of SignTextureManager. When enabled (default), signs are baked to textures when close to the camera. When disabled, all signs are rendered dynamically (infinite resolution).
Two parameter modes: either (string), or (int, optional int, optional bool).
Single string parameter:
   `stm l` (log) will log debug info.
   `stm ld` (log disk) will do the same and also save the log to the application directory.
First param (integer): Sets sign texture quality level. 0-4 inclusive: Lowest-Ultra. 5: Infinite (no textures).
Second param (integer, optional after first param): Sets tile size. Intended to be a neat power of two in the range of 64-1024.
Third param (bool, optional after second param): Sets debug visualization of in-progress bakes on/off.

*** Command(s): sleep ***
No detailed help available.
Description: Makes the main thread sleep for the given number of seconds (allows decimals)

*** Command(s): sleeper ***
draw - toggle drawing for current player prefab
list - list for current player prefab
listall - list all
r - reset all

*** Command(s): smoothpoi ***
Usage:
  smoothpoi [mode] [passes]
Mode defaults to "land", also accepts "air".
Passes defaults to 1.
Smoothed area can be restricted with the blue selection.

*** Command(s): smoothworldall, swa ***
Usage:
  1. smoothworldall [passes] [noregion]
  2. smoothworldall <worldname> [passes] [noregion]
Arguments:
  passes: Integer number, overriding the default of 5 passes
  noregion: If passed in literally it will write the resulting heightmap
            to the dtm.raw instead of updating all of the worlds region files
  worldname: If specified the command is applied to the given world instead of the currently loaded world

*** Command(s): spawnairdrop ***
No detailed help available.
Description: Spawns an air drop

*** Command(s): spawnentity, se ***
se playerId entity# <count> - spawn around playerId (0 for local) entity# of count (1 to 100)

*** Command(s): spawnentityat, sea ***
Usage:
  1. spawnentityat
  2. spawnentityat <entityidx> <x> <y> <z>
  3. spawnentityat <entityidx> <x> <y> <z> <count>
  4. spawnentityat <entityidx> <x> <y> <z> <count> <rotX> <rotY> <rotZ>
  5. spawnentityat <entityidx> <x> <y> <z> <count> <rotX> <rotY> <rotZ> <stepX> <stepY> <stepZ>
  6. spawnentityat <entityidx> <x> <y> <z> <count> <rotX> <rotY> <rotZ> <stepX> <stepY> <stepZ> <spawnerType>
1. Lists the known entity class names
2. Spawns the entity with the given class name at the given coordinates
3. As 2. but spawns <count> instances of that entity type
4. As 3. but also specifies the rotation of the spawned entities
5. As 4. but also specify the step distance between entities
6. As 5. but also specify the spawner source of the entity (Dynamic, StaticSpawner, Biome)

*** Command(s): spawnscouts ***
Spawn scouts near a player.Usage:
   1. spawnscouts
   2. spawnscouts <player name/steam id/entity id>
   3. spawnscouts <x> <y> <z>
1. Will spawn the scouts near the issuing player. Can only be used by a player, not a remote console.
2. Spawn scouts near the given player.
3. Spawn scouts at the given coordinates.

*** Command(s): SpawnScreen ***
SpawnScreen on/off

*** Command(s): spawnsupplycrate ***
No detailed help available.
Description: Spawns a supply crate where the player is

*** Command(s): spawnwandering, spawnw ***
Commands:
b - bandits
h - horde

*** Command(s): spectator, spectatormode, sm ***
No detailed help available.
Description: enables/disables spectator mode

*** Command(s): spectrum ***
spectrum <Auto, Biome, BloodMoon, Foggy, Rainy, Stormy, Snowy>


*** Command(s): squarespiral, sqs ***
<s[tart] [chunks per auto-pause]|p[ause]|r[eset]|waitmode [minimal|meshes|displayed]>

*** Command(s): stab ***
No detailed help available.
Description: stability

*** Command(s): starve, hungry, food ***
No detailed help available.
Description: Makes the player starve (optionally specify the amount of food you want to have in percent).

*** Command(s): switchview, sv ***
No detailed help available.
Description: Switch between fpv and tpv

*** Command(s): SystemInfo ***
No detailed help available.
Description: List SystemInfo

*** Command(s): teleport, tp ***
Usage:
  1. teleport <x> <y> <z> [view direction]
  2. teleport <x> <z> [view direction]
  3. teleport <target steam id / player name / entity id>
  4. teleport offset <inc x> <inc y> <inc z>
For 1. and 2.: view direction is an optional specifier to select the direction you want to look into
after teleporting. This can be either of n, ne, e, se, s, sw, w, nw or north, northeast, etc.
1. Teleports the local player to the specified location. Use y = -1 to spawn on ground.
2. Same as 1 but always spawn on ground.
3. Teleports to the location of the given player
4. Teleport the local player to the position calculated by his current position and the given offsets

*** Command(s): teleportplayer, tele ***
Usage:
  1. teleportplayer <user id / player name / entity id> <x> <y> <z> [view direction]
  2. teleportplayer <user id / player name / entity id> <target user id / player name / entity id>
1. Teleports the player given by his UserID, player name or entity id (as given by e.g. "lpi")
   to the specified location. Use y = -1 to spawn on ground. Optional argument view direction
   allows you to speify a direction you want to look in after teleporting. This can be either
   of n, ne, e, se, s, sw, w, nw or north, northeast, etc.
2. As 1, but destination given by another (online) player

*** Command(s): teleportpoirelative, tppr ***
			Usage:
  1. teleportpoirelative <x> <y> <z> [view direction]
1. Teleports the local player to the specified location relative to the bounds of the current POI. View
direction is an optional specifier to select the direction you want to look into after teleporting. This
can be either of n, ne, e, se, s, sw, w, nw or north, northeast, etc.

*** Command(s): testCensor, tcc ***
No detailed help available.
Description: Censorship testing toggle.

*** Command(s): testDismemberment, tds ***
No detailed help available.
Description: Dismemberment testing toggle.

*** Command(s): testloop ***
Commands:
p - player

*** Command(s): testoccreport, toccr ***
No detailed help available.
Description: Test the occlusion manager self reporting to backtrace, requires Backtrace to be enabled at build creation

*** Command(s): thirsty ***
No detailed help available.
Description: Makes the player thirsty (optionally specify the amount of water you want to have in percent).

*** Command(s): tppoi ***
No detailed help available.
Description: Open POI Teleporter window

*** Command(s): traderarea ***
No detailed help available.
Description: ...

*** Command(s): transformdebug, tdbg ***
tdbg - Toggle Transform Debugging

*** Command(s): trees ***
trees - toggles
trees <value> - (off, on)

*** Command(s): twitch ***
No detailed help available.
Description: usage: twitch <command> <params>

*** Command(s): twitchadmin ***
Usage:
  1. twitchadmin cleanup
  2. twitchadmin export <filepath>
  3. twitchadmin import <filepath>
  4. twitchadmin pointtotals
  5. twitchadmin reset all both
  6. twitchadmin reset all pp
  7. twitchadmin reset all sp
1. Cleans up duplicate Viewer Data.
2. Export users, points, and credits to a file
3. Import users, points, and credits from a file, replacing existing data
4. Prints out the totals for PP, SP, and BitCredit
5. Clears all PP and SP for all users
6. Clears all PP for all users
7. Clears all SP for all users

*** Command(s): uioptions, uio ***
Commands:
optionsvideowindow <value> - set the options window to use for video settings
[no parameters] - toggles video settings between simplified and detailed modes


*** Command(s): unlock ***
Usage:
  unlock
  unlock <player id>


*** Command(s): version ***
No detailed help available.
Description: Get the currently running version of the game and loaded mods

*** Command(s): versionui ***
No detailed help available.
Description: Toggle version number display

*** Command(s): visitmap ***
Usage:
  1. visitmap <x1> <z1> <x2> <z2> [check]
  2. visitmap full [check]
  3. visitmap stop
1. Start visiting the map in the rectangle specified with the two edges defined by
   coordinate pairs x1/z1 and x2/z2. If the parameter "check" is added each visited
   chunk will be checked for density issues.
2. Start visiting the full map. If the parameter "check" is added each visited
   chunk will be checked for density issues.
3. Stop the current visitmap run.

*** Command(s): vpois, visitpois ***
<s[tart] [pois per auto-pause]|p[ause]|r[eset]>

*** Command(s): weather ***
Clouds [0 to 1 (-1 defaults)]
Fog [density (-1 defaults)] [start] [end]
FogColor [red (-1 defaults)] [green] [blue]
Rain [0 to 1 (-1 defaults)]
SnowFall [0 to 1 (-1 defaults)]
Temp [-99 to 101 (< -99 defaults)]
Wind [0 to 200 (-1 defaults)]
SimRand [0 to 1 (-1 defaults)]
Storm <duration hours> <biome name>
Defaults or d


*** Command(s): weathersurvival ***
No detailed help available.
Description: Enables/disables weather survival

*** Command(s): webpermission ***
Set/get permission levels required to access a given web functionality. Default
level required for functions that are not explicitly specified is 0.
Usage:
   1. webpermission add <webfunction> <method> <level>
   2. webpermission remove <webfunction>
   3. webpermission list [includedefaults]
1. Add a new override (or replace the existing one) for the given function. Method must be a HTTP method (like 'GET', 'POST') supported by the function or the keyword 'global' for a per-API permission level. Use the permission level keyword 'inherit' to use the per-API permission level for the specified method instead of a custom one for just the single method.
2. Removes any custom overrides for the specified function.
3. List all permissions. Pass in 'true' for the includedefaults argument to also show functions that do not have a custom override defined.

*** Command(s): webtokens ***
Set/get webtoken permission levels. A level of 0 is maximum permission.
Usage:
   webtokens add <tokenname> <tokensecret> <level>
   webtokens remove <tokenname>
   webtokens list

*** Command(s): whitelist ***
Set/get whitelist entries. Note: If there is at least one entry on the list
no user who is not on this list will be able to join the server!
Usage:
   whitelist add <name / entity id / platform + platform user id> [displayname]
   whitelist remove <name / entity id / platform + platform user id>
   whitelist addgroup <steam id> [displayname]
   whitelist removegroup <steam id>
   whitelist list
To use the add/remove sub commands with a name or entity ID the player has
to be online, the variant with platform and platform ID can be used for currently offline
users too.
Displayname can be used to put a descriptive name to the ban list in addition
to the user's platform ID. If used on an online user the player name is used by default.

*** Command(s): worldchunkreset, wcr ***
Usage: wcr [-g|-gmode <n>]

Examples: 
'wcr' - reset all unprotected chunks using the default grouping.
'wcr -g 2' - reset all unprotected chunks, grouping mode 2.

Grouping modes (-g|-gmode, default 3): 
'1' - NoGrouping: Chunks are reset based on their own protection flags only.
'2' - SeparatePOIs: Each POI gets the combined protection flags from all chunks overlapping the POI.
'3' - GroupedPOIs: Like SeparatePOIs, but POIs with overlapping chunks also merge into groups. Standard reset; should not cause POI discontinuities.

Notes: 
 - All chunk protection statuses are respected. To bypass protections, see 'rr'.
 - Use with caution! This operation permanently deletes all saved data for affected chunks.

*** Command(s): wsmats, workstationmaterials ***
Set the material count for the given material slot on the currently opened workstation
to the given value.
Usage:
   wsmats <slot> <count>
Slot specifies the index of the material slot in the workstation, e.g. 0 on forge is iron, or "all"
to change all slots at once.Count defines to what you want to set the material count with a maximum of 30000.


*** Command(s): xui ***
Usage:
   xui open <window group name> [instance] [closeOthers]
   xui close <window group name> [instance]
   xui reload [window group name] [instance]
   xui list <"instances" / "windows"> [instance]
```
