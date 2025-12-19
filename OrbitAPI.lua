---@diagnostic disable: missing-return
--"SetWhiteList" can make an entity be completely ignored by Orbit
--It takes in the entities table index - 1, and an int state as arguments
--1 is true, 0 is false
---@param Index integer
---@param State integer
function SetWhiteList(Index, State) end

--Your function by itself will only run once if you even call it, however, using the following method will make sure that based on the refresh rate chosen in the menu, it will be called repeatedly
---@param Function function
function RegisterCallback(Function) end

---@param Url string
---@param Header string
---@return string
function HttpGet(Url, Header) end

---@param Url string
---@param Content string
---@return string
function HttpPost(Url, Content) end

--You can specify a file path in the filename 
--If no path is specified, it will download the file where Orbit is located 
--This function does not create a folder automatically, meaning if the file path specified was invalid, it will cause an error
---@param Url string
---@param Filename string
function HttpDownload(Url, Filename) end

---@class Vec2
---@field X integer
---@field Y integer 
local Vec2 = {}

---@param X integer
---@param Y integer
---@return Vec2
function Vector2D(X, Y) end

---@class Vec3
---@field X number
---@field Y number 
---@field Z number 
local Vec3 = {}

---@param X number
---@param Y number
---@param Z number
---@return Vec3
function Vector3D(X, Y, Z) end

---@class Col
---@field R integer
---@field G integer
---@field B integer
---@field A integer
local Col = {}

---@param R integer
---@param G integer
---@param B integer
---@param A integer
---@return Col
function Color(R, G, B, A) end

---@param Address number
---@return boolean
function ReadBool(Address) end

---@param Address number
---@return integer
function ReadInt(Address) end

---@param Address number
---@return number
function ReadFloat(Address) end

---@param Address number
---@return string
function ReadString(Address) end

---@param Address number
---@return number
function ReadPointer(Address) end

---@param Address number
---@return Vec3
function ReadVector3D(Address) end

---@return number
function GetClientDLL() end

---@return number
function GetEngine2DLL() end

--"Print" achieves the same as 'print' but in Orbit's built in console
--The "Print" function only accepts strings as an argument 
--You cannot pass it a number and hope it will convert it to a string automatically 
--You can use the built in "tostring" function in lua to convert the arguments (variable by variable)
---@param String string
function Print(String) end

--Clears Orbit's built in console
function Clear() end

--"GetLocalInfo" returns a table of 4 elements
--1 returns the local pawn address
--2 returns the local controller address
--3 returns the local index
--4 returns the local team
---@return table
function GetLocalInfo() end

--"GetEntities" returns multiple tables of 4 elements
--The entity list does not contain the local player, you can get that via "GetLocalInfo"
--1 returns the entity pawn address
--2 returns the entity controller address
--3 returns the entity index
--4 returns the entity team
---@return table
function GetEntities() end

--"IsVisible" returns whether or not a player is visible based on the VPK parser built into Orbit
---@param EntityIndex integer
---@return boolean
function IsVisible(EntityIndex) end

---@param Position Vec3
---@return Vec2
function WorldToScreen(Position) end

---@param Text string
---@param Position Vec2
---@param Color Col
---@param Center boolean
function Text(Text, Position, Color, Center) end

--"sizeoffset" is the offset by which you shift the size of the icon to make it bigger or smaller
--A "sizeoffset" value of 0 means the size of the icon is the default which Orbit uses
---@param WeaponIndex integer
---@param Position Vec2
---@param Color Col
---@param Center boolean
---@param SizeOffset integer
function Icon(WeaponIndex, Position, Color, Center, SizeOffset) end

---@param Position Vec3
---@param Radius number
---@param Thickness number
---@param Color Col
function Circle3D(Position, Radius, Thickness, Color) end

---@param Center Vec2
---@param Radius number
---@param Color Col
---@param Segments integer
---@param Thickness number
function Circle2D(Center, Radius, Color, Segments, Thickness) end

---@param Center Vec2
---@param Radius number
---@param Color Col
---@param Segments integer
function Circle2DFilled(Center, Radius, Color, Segments) end

---@param From Vec2
---@param To Vec2
---@param Color Col
---@param Thickness number
function Line(From, To, Color, Thickness) end

---@param Min Vec2
---@param Max Vec2
---@param Color Col
---@param Rounding number
---@param Thickness number
function Rectangle(Min, Max, Color, Rounding, Thickness) end

---@param Min Vec2
---@param Max Vec2
---@param Color Col
---@param Rounding number
---@param Segments integer
function RectangleFilled(Min, Max, Color, Rounding, Segments) end

---@param ConfigElement string
---@return boolean
function GetConfigBool(ConfigElement) end

---@param ConfigElement string
---@return integer
function GetConfigInt(ConfigElement) end

---@param ConfigElement string
---@return number
function GetConfigFloat(ConfigElement) end

---@param ConfigElement string
---@return Col
function GetConfigColor(ConfigElement) end

---@param ConfigElement string
---@param Value boolean
function SetConfigBool(ConfigElement, Value) end

---@param ConfigElement string
---@param Value integer
function SetConfigInt(ConfigElement, Value) end

---@param ConfigElement string
---@param Value number
function SetConfigFloat(ConfigElement, Value) end

---@param ConfigElement string
---@param Value Col
function SetConfigColor(ConfigElement, Value) end

--This function is deprecated as of Orbit V9.5.8
--Menu element creation is handled by Orbit automatically
--Reserve space in memory for menu elements to be created
--If not done correctly, can cause menu related bugs and glitches
---@param Size integer
function ReserveMenuElement(Size) end

--Returns the lua tab name, required due to a cpp limitation
--Since Orbit V5.9.5 luas must be separated into their own tab
---@return string
function Tab() end

---@param Name string
---@param Default boolean
function CheckBox(Name, Default) end

---@param Name string
---@param Min integer
---@param Max integer
---@param Default integer
function SliderInt(Name, Min, Max, Default) end

---@param Name string
---@param Min number
---@param Max number
---@param Default number
function SliderFloat(Name, Min, Max, Default) end

---@param Name string
---@param Default Col
function ColorPicker(Name, Default) end

--Its true that in lua, tables start with an index of 1
--However, in c++ they start from 0
--Therefore, if you want the default value of a dropdown to be the first element, you'll have to pass 0 as the last argument
---@param Name string
---@param Elements table
---@param Default integer
function CreateDropDown(Name, Elements, Default) end

--"CreateText" lets you organize the lua tab to your needs
--You can skip rows with empty text elements if you want to, better label features etc
---@param Text string
function CreateText(Text) end

--"CreateKeyBind" creates a keybind menu element 
--If you specify 0 as the default value, it will be empty 
--Pressing 'ESC' will also reset the keybind's value 
--The keybind's value is a VK Keycode
---@param Name string
---@param Default integer
function CreateKeyBind(Name, Default) end

---@param Name string
---@return boolean
function GetCheckBox(Name) end

---@param Name string
---@return integer
function GetSliderInt(Name) end

---@param Name string
---@return number
function GetSliderFloat(Name) end

---@param Name string
---@return Col
function GetColorPicker(Name) end

--If you are confused by what this is, just note that it returns the current index of the table of possible elements 
--This is done in c++ code, not in lua, therefore the first index is 0 here
---@param Name string
---@return integer
function GetDropDown(Name) end

--"GetKeyBind" returns whether or not a keybind is active
---@param Name string
---@return boolean
function GetKeyBind(Name) end

--"MoveMouse" takes in 2 ints as an argument and moves the mouse accordingly 
--When the menu is open, or if the values of the arguments are too high this function will be skipped
---@param X integer
---@param Y integer
function MoveMouse(X, Y) end

--"GetKeyState" returns true if the specified key is pressed
---@param Key integer
---@return boolean
function GetKeyState(Key) end

--"SetKeyState" takes in 2 ints as an argument 
--The first one is the key value, the second is the state
--As for the state, 0 means 'press' and 1 means 'release'
---@param Key integer
---@param State integer
function SetKeyState(Key, State) end

--You can get up to date offsets directly from within Orbit
--You first need to define a table of string elements, which reflects the path to the offset
--To understand the structure of the offsets, just head over to "AppData/Roaming/Orbit/Offsets"
--Currently, Orbit only supports accessing "client.dll" and "offsets"
---@param OffsetPath table
---@param File string
---@return number
function GetOffset(OffsetPath, File) end

--"GetScreenSize" returns a Vector2D object containing the width and height of the screen
---@return Vec2
function GetScreenSize() end

--"IsInGame" returns true if we are connected to a game
---@return boolean
function IsInGame() end

--"GetMapName" returns the current map name without the path and extension
---@return string
function GetMapName() end

--"GetAppDataDirectory" helps you store your downloaded files 
--You can also get the windows username, since the path to the appdata folder contains it
---@return string
function GetAppDataDirectory() end

--"DirectoryExists" in combination with "GetAppDataDirectory" can tell you if a download was successful or not 
--A failed download can be a result of 2 things: http functions are disabled, download link is invalid
---@param Directory string
---@return boolean
function DirectoryExists(Directory) end

--"PlaySound" lets you play a sound file 
--You don't need to specify a path if the sound file is where Orbit is located
---@param PathToFile string
function PlaySound(PathToFile) end

--"RayCast" uses the built in VPK Parser in Orbit to perform a visible check based on the arguments, which are 2 Vector3D objects.
--The return value is a bool, true if visible, false if not.
---@param From Vec3
---@param To Vec3
---@return boolean
function RayCast(From, To) end

--"GetTime" simply returns the time since epoch with millisecond accuracy.
--Can be used to do simple timers in LUA.
---@return number
function GetTime() end

--"GetWeaponType" returns what type of weapon the local player has
--The index is calculated in cpp, so it starts from 0
--Pistol - 0
--HeavyPistol - 1
--SMG - 2
--Rifle - 3
--Sniper - 4
--Shotgun - 5
--MachineGun - 6
---@return number
function GetWeaponType() end

--Returns a referenced table of strings
--Contains the names of players that are spectating the local player
---@return table
function GetSpectators() end

--Returns the local player's viewangles somewhat accounting for recoil
---@return Vec3
function GetRCSViewAngles() end
