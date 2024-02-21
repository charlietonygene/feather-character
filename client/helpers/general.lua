function DrawText(text, x, y, fontscale, fontsize, r, g, b, alpha, textcentred, shadow)
    local str = CreateVarString(10, "LITERAL_STRING", text)
    SetTextScale(fontscale, fontsize)
    SetTextColor(r, g, b, alpha)
    SetTextCentre(textcentred)
    if shadow then
        SetTextDropshadow(1, 0, 0, 255)
    end
    SetTextFontForCurrentCommand(6)
    DisplayText(str, x, y)
end

local Gender = GetGender()

SelectedAttributeElements = {
    ['Albedo'] = { hash = tonumber(CharacterConfig.General.DefaultChar[Gender][1].HeadTexture[1]) },
    ['Body'] = { hash = tonumber("0x" .. CharacterConfig.General.DefaultChar[Gender][1].Body[1]) },
    ['BodyType'] = { hash = BODYTYPES[1] },
    ['BrowOpacity'] = { value = 1.0 },
    ['CalvesSize'] = { hash = 42067, value = 0.0 },
    ['CheekboneDepth'] = { hash = 0x358D, value = 0.0 },
    ['CheekboneHeight'] = { hash = 0x6A0B, value = 0.0 },
    ['CheekboneWidth'] = { hash = 0xABCF, value = 0.0 },
    ['ChestSize'] = { hash = CHESTTYPE[1] },
    ['ChinDepth'] = { hash = 0xE323, value = 0.0 },
    ['ChinHeight'] = { hash = 0x3C0F, value = 0.0 },
    ['ChinWidth'] = { hash = 0xC3B2, value = 0.0 },
    ['EarAngle'] = { hash = 0xB6CE, value = 0.0 },
    ['EarHeight'] = { hash = 0x2844, value = 0.0 },
    ['EarSize'] = { hash = 0xED30, value = 0.0 },
    ['EarWidth'] = { hash = 0xC04F, value = 0.0 },
    ['EyeColor'] = { hash = FeaturesEyes[Gender][1] },
    ['EyeDepth'] = { hash = 60996, value = 0.0 },
    ['EyeDistance'] = { hash = 42318, value = 0.0 },
    ['EyeHeight'] = { hash = 56827, value = 0.0 },
    ['EyebrowHeight'] = { hash = 0x3303, value = 0.0 },
    ['EyebrowVariant'] = { value = 1 },
    ['EyebrowWidth'] = { hash = 0x2FF9, value = 0.0 },
    ['EyelidHeight'] = { hash = 35627, value = 0.0 },
    ['EyelidWidth'] = { hash = 7019, value = 0.0 },
    ['ForearmSize'] = { hash = 8420, value = 0.0 },
    ['Head'] = { hash = tonumber("0x" .. CharacterConfig.General.DefaultChar[Gender][1].Heads[1]) },
    ['Height'] = { value = 1.0 },
    ['HipWidth'] = { hash = 49787, value = 0.0 },
    ['JawDepth'] = { hash = 0x1DF6, value = 0.0 },
    ['JawHeight'] = { hash = 0x8D0A, value = 0.0 },
    ['JawWidth'] = { hash = 0xEBAE, value = 0.0 },
    ['Legs'] = { hash = tonumber("0x" .. CharacterConfig.General.DefaultChar[Gender][1].Legs[1]) },
    ['LowLipDepth'] = { hash = 0x5D16, value = 0.0 },
    ['LowLipHeight'] = { hash = 0xBB4D, value = 0.0 },
    ['LowLipWidth'] = { hash = 0xB0B0, value = 0.0 },
    ['MouthDepth'] = { hash = 43625, value = 0.0 },
    ['MouthWidth'] = { hash = 61541, value = 0.0 },
    ['MouthXPos'] = { hash = 31427, value = 0.0 },
    ['MouthYPos'] = { hash = 16653, value = 0.0 },
    ['NoseCurve'] = { hash = 0xF156, value = 0.0 },
    ['NoseAngle'] = { hash = 0x34B1, value = 0.0 },
    ['NoseWidth'] = { hash = 0x6E7F, value = 0.0 },
    ['NoseHeight'] = { hash = 0x03F5, value = 0.0 },
    ['ThighsSize'] = { hash = 64834, value = 0.0 },
    ['UpArmSize'] = { hash = 46032, value = 0.0 },
    ['UpLipDepth'] = { hash = 0xC375, value = 0.0 },
    ['UpLipHeight'] = { hash = 0x1A00, value = 0.0 },
    ['UpLipWidth'] = { hash = 0x91C1, value = 0.0 },
    ['WaistSize'] = { value = WAISTTYPES[1] },
    ['WaistWidth'] = { hash = 50460, value = 0.0 }
} --This table keeps track of your clothing elements
