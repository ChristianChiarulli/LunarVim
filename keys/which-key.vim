" Leader Key Maps

let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
" let g:which_key_map['#'] = [ ':call Comment()'                                 , 'comment' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['M'] = [ ':MaximizerToggle'                                , 'maximize' ]
let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]
let g:which_key_map['q'] = [ '<Plug>(coc-fix-current)'                         , 'quickfix' ]
let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'                 , 'treesitter highlight' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree']
let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'               , 'move window' ]
let g:which_key_map['Z'] = [ 'Goyo'                                            , 'zen' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'ranger' ]
let g:which_key_map['Q'] = [ ':q!'                                             , 'quit' ]
" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'd' : [':! ansible-vault decrypt %:p'        , 'ansible-vault decrypt'],
      \ 'D' : [':! ansible-vault encrypt %:p'        , 'ansible-vault encrypt'],
      \ 'f' : [':CocList filetypes'      , 'select filetype language'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ 'l' : [':messages'               , 'vim logs'],
      \ 'L' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 'R' : [':CocCommand workspace.renameCurrentFile'  , 'rename current file'],
      \ 'T' : [':echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") "> trans<" . synIDattr(synID(line("."),col("."),0),"name") "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") ">"', 'show theme color'],
      \ 'v' : [':Codi'                   , 'virtual repl on'],
      \ 'V' : [':Codi!'                  , 'virtual repl off'],
      \ 'w' : [':StripWhitespace'        , 'strip whitespace'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'h' : ['bfirst'                 , 'first-buffer'],
      \ 'e' : ['blast'                  , 'last buffer'],
      \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'f' : [':CocCommand fzf-preview.AllBuffers'                , 'fzf-buffer'],
      \ 's' : [':edit #'                , 'jump between two last buffers'],
      \ 'C' : [':%bd'                   , 'close-all'],
      \ 'X' : [':BufferCloseAllButCurrent' , 'close-all but current'],
      \ 'Y' : [':BufferCloseBuffersRight'  , 'close-all to right'],
      \ }

" d is for debug
let g:which_key_map.d = {
      \ 'name' : '+debug' ,
      \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
      \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
      \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
      \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
      \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
      \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
      \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
      \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
      \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
      \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
      \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
      \ }

" f is for find and replace
let g:which_key_map.s = {
      \ 'name' : '+find & replace' ,
      \ 'f' : [':Farf --source=vimgrep --file-mask="%:p"'                        , 'find in buffer'],
      \ 'F' : [':Farf --source=rgnvim'                                         , 'find in workspace'],
      \ 'r' : [':Farr --source=vimgrep --file-mask="%:p"'                        , 'replace in buffer'],
      \ 'R' : [':Farr --source=rgnvim'                                         , 'replace in workspace'],
      \ }

" k is for task
let g:which_key_map.k = {
      \ 'name' : '+task' ,
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'l' : [':CocList tasks'               , 'list tasks'],
      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'd' : [':AsyncTask docker-compose-up' , 'docker-compose up'],
      \ 'D' : [':AsyncTask docker-compose-up-d' , 'docker-compose up -d'],
      \ 'x' : [':cclose'                      , 'close task view'],
      \ }

" m is for mark
let g:which_key_map.m = {
      \ 'name' : '+mark' ,
      \ 'c' : [':CocCommand bookmark.clearForCurrentFile', 'clear file'],
      \ 'C' : [':CocCommand bookmark.clearForAllFiles', 'clear project'],
      \ 'n' : [':CocCommand bookmark.next', 'next bookmark'],
      \ 'p' : [':CocCommand bookmark.prev', 'prev bookmark'],
      \ 't' : [':CocCommand bookmark.toggle', 'toggle bookmark'],
      \ 'f'  :[':CocList bookmark', 'list bookmarks']
      \ }

" s is for search
let g:which_key_map.f = {
      \ 'name' : '+search' ,
      \ ';' : [':FzfPreviewCommandPalette' , 'commands'],
      \ '/' : [':History/'              , 'history'],
      \ 'a' : [':Ag'                    , 'text ag'],
      \ 'b' : [':CocCommand fzf-preview.Lines', 'current buffer'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'd' : [':CocCommand fzf-preview.DirectoryFiles', 'files in directory'],
      \ 'f' : [':CocCommand fzf-preview.ProjectFiles', 'files in project'],
      \ 'F' : [':FZF'                   , 'FZF'],
      \ 'g' : [':GFiles?'               , 'modified git files'],
      \ 'G' : [':CocCommand fzf-preview.GitFiles', 'git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'text in open buffers'] ,
      \ 'm' : [':CocCommand fzf-preview.Marks', 'list marks'],
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 'q' : [':CocCommand fzf-preview.QuickFix', 'quickfix list'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 'r' : [':call RipgrepInteractive()', 'rg interactive'],
      \ 't' : [':Rg'                    , 'all files for text rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'o' : [':CocList outline'       , 'search outline'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'Y' : [':Filetypes'             , 'file types'],
      \ }
"
let g:which_key_map.w = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete!'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 'h' : [':Startify'        , 'Start Page']     ,
      \ 's' : [':SSave'           , 'Save Session']   ,
      \ 'f' : [':CocList sessions' , 'List Session']   ,
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'C' : [':call GDiffCompare()'              , 'compare with branch'],
      \ 'd' : [':Gdiffsplit'                       , 'diff split'],
      \ 'D' : [':Git diff'                         , 'diff'],
      \ 'e' : [':Gedit'                            , 'edit-version'],
      \ 'f' : [':CocCommand fzf-preview.GitStatus' , 'find-action'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'H' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':0Glog'                            , 'log'],
      \ 'm' : [':Gvdiffsplit!'                     , 'merge view, 3-way-split'],
      \ 'M' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'P' : [':Git push'                         , 'push'],
      \ 'p' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : [':CocCommand fzf-preview.GitStatus' , 'status'],
      \ 'S' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

let g:which_key_map.G = {
      \ 'name' : '+gist' ,
      \ 'a' : [':Gist -a'                          , 'post gist anon'],
      \ 'b' : [':Gist -b'                          , 'post gist browser'],
      \ 'd' : [':Gist -d'                          , 'delete gist'],
      \ 'e' : [':Gist -e'                          , 'edit gist'],
      \ 'l' : [':Gist -l'                          , 'list public gists'],
      \ 's' : [':Gist -ls'                         , 'list starred gists'],
      \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
      \ 'p' : [':Gist -P'                          , 'post public gist '],
      \ 'P' : [':Gist -p'                          , 'post private gist '],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ ';' : [':CocList commands'                   , 'commands'],
      \ '.' : [':CocConfig'                          , 'config'],
      \ ',' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'A' : ['<Plug>(coc-codeaction)'              , 'code action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocCommand docthis.documentThis'    , 'document this function'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'organize'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'g' : [':CocCommand editor.action.organizeImport', 'organize imports'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'L' : [':CocList'                            , 'coc-list'],
      \ 'o' : [':CocList outline'                    , 'search outline'],
      \ 'O' : [':Vista!!'                            , 'outline'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'Q' : [':CocCommand fzf-preview.QuickFix', 'quickfix list'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'T' : [':CocCommand tsserver.restart'        , 'restart ts server'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }
      " \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=10'      , 'terminal on bottom'],
      \ '.' : [':FloatermNew'                                   , 'terminal'],
      \ 'F' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 'h' : [':FloatermNew htop'                              , 'htop'],
      \ 'n' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ 'f' : [':CocList floaterm'                              , 'find terminal'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 's' : [':FloattermShow'                                 , 'floaterm-show'],
      \ 'k' : [':FloattermKill!'                                , 'floaterm-kill'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
