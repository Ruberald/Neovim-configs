; Keywords
"var" @keyword
"if" @keyword
"else" @keyword
"print" @keyword

; Identifiers
(identifier) @variable
(method_call (identifier) @function)
(function_call (identifier) @function)

; Literals
(string) @string
(number) @number

; Operators
"=" @operator
"+" @operator
"." @operator
"," @operator
";" @punctuation.delimiter
"{" @punctuation.bracket
"}" @punctuation.bracket
"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket

; Comments
(comment) @comment

