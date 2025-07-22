Installation Guide:
import mybills.sql into your DB
ensure dl_advancedbilling in your server.cfg/ressource.cfg  (ensure it AFTER society systems like dl-society and mega_companies)


to open the Menu from extern Scripts use the given export function:
ClientSide:
exports.dl_advancedbilling:exportOpenMenuClient()

ServerSide:
exports.dl_advancedbilling:exportOpenMenuServer(source) -- Source of the player you want to open the menu


if your job has the permissions to check other jobs bills use /checkbills [jobname] check view the open bills of a job
