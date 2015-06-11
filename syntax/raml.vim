" Vim syntax file
" Language: RAML
" Maintainer: Alex Wynter

if exists("b:current_syntax")
  finish
endif

" Keywords
syn match ramlVersion '#%RAML.*$'
syn keyword namedParameters title baseUri version
syn keyword namedParameters schemas resourceTypes traits
syn keyword namedParameters description queryParameters responses
syn keyword namedParameters body example is displayName type required
syn keyword methods get post put delete
syn keyword types string integer int boolean date number
syn match genericKey '\w\{-}\ze:\(\s\|\n\)'
syn match resource '\/\w\{-}\ze:'
syn match responseCode '\d\d\d\ze:'
syn match stringLiteral '\".\{-}\"'
syn match responseType 'application\/json'
syn match responseType 'application\/xml'
syn match comment '#.*$'

let b:current_syntax = "raml"

hi def link ramlVersion Comment
hi def link comment Comment
hi def link namedParameters Statement
hi def link methods Type
hi def link types Type
hi def link responseCode Comment
hi def link resource Special
hi def link genericKey Constant
hi def link genericKey String
hi def link responseType Identifier
