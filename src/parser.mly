%{
  open Ast
%}

%token LESSTHEN
%token GREATERTHEN
%token EQUAL
%token LESSTHENSLASH
%token <string> IDENT
%token <string> STRING
%token TRUE
%token FALSE
%token EOF
%token SLASH

%start <Ast.node> parse
%%

parse:
  | node EOF { $1 }

node:
  | LESSTHEN IDENT list(prop) SLASH GREATERTHEN 
    { { name = $2; props = $3; children = []} }
  | LESSTHEN IDENT list(prop) GREATERTHEN list(node) LESSTHENSLASH IDENT GREATERTHEN
    { { name = $2; props = $3; children = $5} }

prop:
  | IDENT
    { ( $1, Boolean true ) }
  | IDENT EQUAL value
    { ($1, $3) }

value:
  | STRING
    { String $1 }
  | TRUE
    { Boolean true }
  | FALSE
    { Boolean false }
