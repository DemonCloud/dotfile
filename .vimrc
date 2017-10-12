" 2017-04-07
" @ Source
" - Basic
for f in split(glob('$HOME/.aix/.*.vim'), '\n')
  exe 'source' f
endfor
