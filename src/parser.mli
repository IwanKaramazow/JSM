
(* The type of tokens. *)

type token = 
  | TRUE
  | STRING of (string)
  | SLASH
  | LESSTHENSLASH
  | LESSTHEN
  | IDENT of (string)
  | GREATERTHEN
  | FALSE
  | EQUAL
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val parse: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.node)
