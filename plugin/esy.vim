" Allow to be overridden by g:reasonml_esy_path.
" We will still check the version.
if !exists('g:reasonml_esy_path')
  let g:reasonml_esy_path=''
endif
" Where esy is found to be installed.
let g:reasonml_esy_discovered_path=g:reasonml_esy_path
" Esy version installed.
let g:reasonml_esy_discovered_ver=''


let g:esyLogCacheMisses=0
"
let g:esyProjectRootCacheByBuffer = { }
let g:esyProjectInfoCacheByProjectRoot={}
let g:esyLocatedBinaryByProjectRootDir={}


let g:esyProjectManagerPluginLoaded=1

call esy#TrySetGlobalEsyBinaryOrWarn()



command! -nargs=0 EsyFetchProjectInfo :echo esy#CmdFetchProjectInfo()
command! -nargs=0 EsyResetEditorCache :echo esy#CmdResetEditorCache()
command! -nargs=1 EsyExec call esy#CmdEsyExec(<q-args>)
command! -nargs=0 EsyBuilds :echo esy#CmdBuilds()
command! -nargs=0 EsyLibs :echo esy#CmdEsyLibs()
command! -nargs=0 EsyModules :echo esy#CmdEsyModules()
command! -nargs=0 EsyHelp :echo esy#CmdEsyHelp()
command! -nargs=0 EsyRecentError call esy#CmdEsyRecentError()
