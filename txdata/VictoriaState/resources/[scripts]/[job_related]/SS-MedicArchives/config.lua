-- Author 'blueyes' Discord Username !
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

Config = {

Dev = true, -- USE ONLY ON TEST SERVER FOR CONFIGURATION & TESTS
WebHook = "https://discord.com/api/webhooks/1246224909022007357/2oCNx2d_leh9C9ZSIBlfXQy98Xjsw_PeW7vm6s7C6789gLEKfrnealpywfaE34RZlD51", -- FOR LOGS
    
ServerYear = "1906", -- YOUR SERVER PLAYABLE YEAR
DossierPrice = 100,
InfusionPrice = 50,
DiseasePrice = 50,
NoteBook = "medicinebook", -- ITEM TO OPEN SHERIFF'S ARCHIVES
AllowedJobs = {"Medic"}, -- JOBS THAT CAN OPEN THE ARCHIVES
DeleteJobGrade = 6, -- FROM WICH GRADE CAN DELETE DOSSIER ?
    
Texts = {
        ["been_revived"] = "You will be discharged and completely healthy, your dossier nr is ",
        ["adddossier"] = "You have added DOSSIER for ",
        ["adddossier2"] = " with NR: ",
        ["not_anymoreon"] = "This player is not online anymore !",
        ["dossier_deleted"] = "You deleted the DOSSIER NR:",
        ["dossier_notfound"] = "The dossier dosen't exist, or you type it wrong !",
        ["error_description"] = "The DESCRIPTION is required!",
        ["error_hospitalizaton"] = "Hospitalization time is required, 0 if don't need hospitalisation !",
        ["error_charge"] = "The CHARGE is REQUIRED !",
        ["not_jobgrade"] = "You are not authorized to do this",
	},        
}

function ARCHIVESNOTIFY(text) --SET YOUR NOTIFYCATIONS
    local VorpCore = exports.vorp_core:GetCore()
	VorpCore.NotifyLeft("ARCHIVES", text, "generic_textures", "tick", 6000, "COLOR_WHITE")
end