{
  open Parser
  exception SyntaxError of string
}

let white = [' ' '\t']+

let ident = ['A'-'Z' 'a'-'z']+

rule token = parse
    white { token lexbuf } (* skip whitespace *)
  | "<" { LESSTHEN }
  | ">" { GREATERTHEN }
  | "</" { LESSTHENSLASH }
  | "/" { SLASH }
  | "true" { TRUE }
  | "false" { FALSE }
  | "=" { EQUAL }
  | ident { 
    IDENT ( Lexing.lexeme lexbuf )
  }
  | eof { EOF }
  | '"' { read_string (Buffer.create 20) lexbuf }

and read_string buf =
  parse
  | '"' { STRING(Buffer.contents buf) }
  | [^ '"']+
    { Buffer.add_string buf (Lexing.lexeme lexbuf);
      read_string buf lexbuf
    }
  | _ { raise (SyntaxError "unterminated string sequence") }
  
