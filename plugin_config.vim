" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Vundle
" ---------------
command! ReloadVundle source ~/.vim/vundle.vim
"nnoremap <Leader>br :ReloadVundle<CR>
function BundleReloadAndRun(command)
  :ReloadVundle
  execute a:command
endfunction

nnoremap <Leader>bi :call BundleReloadAndRun("BundleInstall")<CR>
nnoremap <Leader>bu :call BundleReloadAndRun("BundleInstall!")<CR>
nnoremap <Leader>bc :call BundleReloadAndRun("BundleClean")<CR>

" ---------------
" NERDTree
" ---------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ---------------
" Indent Guides
" ---------------
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
nmap <silent> <Leader>ig :IndentGuidesToggle<CR>

" ---------------
" Tabular
" ---------------
" If you don’t like stacking the colons in a column,
" you could use the \zs atom to exclude the : character from the search match.
" Running :Tab /:\zs produces this result
nnoremap <Leader>a= :Tabularize assignment<CR>
vnoremap <Leader>a= :Tabularize assignment<CR>
nnoremap <Leader>a: :Tabularize symbol<CR>
vnoremap <Leader>a: :Tabularize symbol<CR>
nnoremap <Leader>a, :Tabularize comma<CR>
vnoremap <Leader>a, :Tabularize comma<CR>

" ---------------
" ctrlp.vim
" ---------------
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''
" Set local working directory
let g:ctrlp_working_path_mode = 'ra'
" Exclude directories
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" Leader Commands
nnoremap <leader>r :CtrlPRoot<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>f :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>

" ---------------
" jellybeans.vim colorscheme tweaks
" ---------------
" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant

" ---------------
" surround.vim
" ---------------
" Use # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" Thanks to http://git.io/_XqKzQ
let g:surround_35  = "#{\r}"
" Expand {xyz} to { xyz }
" pneumonic: Change to Open Brace
nnoremap cob :normal cs{{<cr>

" ---------------
" indenthtml
" ---------------
" Setup indenthtml to propertly indent html. Without this, formatting doesn't
" work on html.
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" ---------------
" YouCompleteMe
" ---------------
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_filetype_specific_completion_to_disable = {
    \ 'ruby' : 1,
    \}

" disable quickfix support for pyflakes
let g:pyflakes_use_quickfix=0

