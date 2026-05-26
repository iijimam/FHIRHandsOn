Class ISJ.Utils Extends 
{

/// サンプルデータ登録
/// 
/// [以下実行例]
/// USER>zn "r4fhirnamespace"
///
///R4FHIRNAMESPACE> Set status = ##class(HS.FHIRServer.Tools.DataLoader).SubmitResourceFiles("C:\Users\Administrator\Desktop\100Set\100Set","FHIRServer","/csp/healthshare/r4fhirnamespace/fhir/r4")
/// 
///Starting DataLoader with 4 jobs
///Assigned ID 82922C49-AF53-419C-A0FE-FF21B9A9EFE9 to this run
/// 
///1. Stewart_Paucek_3e54e66d-7f18-...    299 KB     224 resources     1.850 secs
///2. Stewart_Larson_1cadbecc-aad3-...    287 KB     222 resources     2.006 secs
///3. Sung_Baumbach_a8fb309b-38de-4...    270 KB     218 resources     1.701 secs
///省略
///114. Zenobia_Hodkiewicz_2e9a34c4-6...    856 KB     743 resources   4.469 secs
///115. Zona_Torp_d348f617-7682-4f70-...   1134 KB    1010 resources   5.866 secs
/// 
///Completed successfully.
///Run Duration: 133.015158
ClassMethod create100(dir As %String)
{
    set status = ##class(HS.FHIRServer.Tools.DataLoader).SubmitResourceFiles(dir,"FHIRServer","/csp/healthshare/r4fhirnamespace/fhir/r4")
    if $$$ISERR(status) {
        write $system.Status.GetErrorText(status),!
    }
}
}
