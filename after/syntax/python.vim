" Vim syntax file
" Language:	Python
" Maintainer:	Thomas Ernst <thomas.ernst@ebenefuenf.de>


syn keyword pythonSelf          self cls
syn keyword pythonInclude       as
syn keyword pythonBuiltinConst  True False None
syn keyword pythonUnderUnder	__debug__ __doc__ __file__ __name__ __package__ __all__

"   Greift nur wenn vom Beginn der Zeile bis zum Anfang des Strings keine
"   Zeichen oder ausschliesslich Whitespaces sind
syn region pythonDocString  start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonSpaceError
syn region pythonDocString  start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonSpaceError


