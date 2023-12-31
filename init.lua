local nxml = dofile_once("mods/gas_test/nxml.lua")

-- Load and parse the XML content
local content = ModTextFileGetContent("data/materials.xml")
local xml = nxml.parse(content)

-- Iterate through each element in the XML
for element in xml:each_child() do

	-- element.attr.solid_gravity_scale = (element.attr.solid_gravity_scale or 1) * -1

	element.attr.gas_speed = "50"
	element.attr.gas_upwards_speed = "100"
	element.attr.gas_downwards_speed = "90"
	element.attr.gas_horizontal_speed = "100"

end

ModTextFileSetContent("data/materials.xml", tostring(xml))
content = tostring(xml)

function OnPlayerSpawned()
    --print(content)
end
