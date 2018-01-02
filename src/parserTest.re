open Ast;

let () = {
  let lexbuf = Lexing.from_string("<Testimonial />");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (parsetree == {name: "Testimonial", props: [], children: []})
};

let () = {
  let lexbuf = Lexing.from_string("<Testimonial></Testimonial>");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (parsetree == {name: "Testimonial", props: [], children: []})
};

let () = {
  let lexbuf = Lexing.from_string("<Testimonial center />");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (parsetree == {name: "Testimonial", props: [("center", Boolean(true))], children: []})
};

let () = {
  let lexbuf = Lexing.from_string("<Testimonial center=false />");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (parsetree == {name: "Testimonial", props: [("center", Boolean(false))], children: []})
};

let () = {
  let lexbuf = Lexing.from_string("<Testimonial title=\"test\" />");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (parsetree == {name: "Testimonial", props: [("title", String("test"))], children: []})
};

let () = {
  let lexbuf = Lexing.from_string("<Testimonial title=\"test\" color=\"blue\" />");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (
    parsetree
    == {
         name: "Testimonial",
         props: [("title", String("test")), ("color", String("blue"))],
         children: []
       }
  )
};

let () = {
  let lexbuf = Lexing.from_string("<List> <Item /> </List>");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  let child = {name: "Item", props: [], children: []};
  assert (parsetree == {name: "List", props: [], children: [child]})
};

let () = {
  let lexbuf = Lexing.from_string("<List> <Item /> <Item /> </List>");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  let child = {name: "Item", props: [], children: []};
  assert (parsetree == {name: "List", props: [], children: [child, child]})
};

let () = {
  let lexbuf = Lexing.from_string("<Testimonial />");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (
    Compiler.compile(parsetree)
    == "import React from \"react\"\nimport * as Blocks from \"../blocks\"\n\nexport const Page = \n  React.createElement(Blocks.Testimonial, null);"
  )
};

let () = {
  let lexbuf = Lexing.from_string("<Testimonial center />");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (
    Compiler.compile(parsetree)
    == "import React from \"react\"\nimport * as Blocks from \"../blocks\"\n\nexport const Page = \n  React.createElement(Blocks.Testimonial, {center: true});"
  )
};

let () = {
  let lexbuf = Lexing.from_string("<Testimonial center=false />");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (
    Compiler.compile(parsetree)
    == "import React from \"react\"\nimport * as Blocks from \"../blocks\"\n\nexport const Page = \n  React.createElement(Blocks.Testimonial, {center: false});"
  )
};

let () = {
  let lexbuf = Lexing.from_string("<List> <Item nr=\"1\" /> <Item nr=\"2\" /></List>");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (
    Compiler.compile(parsetree)
    == "import React from \"react\"\nimport * as Blocks from \"../blocks\"\n\nexport const Page = \n  React.createElement(Blocks.List, null, React.createElement(Blocks.Item, {nr: \"1\"}), React.createElement(Blocks.Item, {nr: \"2\"}));"
  )
};

let () = {
  let lexbuf = Lexing.from_string("<List><Testimonials center /><Item name=\"abc\" /></List>");
  let parsetree = Parser.parse(Lexer.token, lexbuf);
  assert (
    Compiler.compile(parsetree)
    == "import React from \"react\"\nimport * as Blocks from \"../blocks\"\n\nexport const Page = \n  React.createElement(Blocks.List, null, React.createElement(Blocks.Testimonials, {center: true}), React.createElement(Blocks.Item, {name: \"abc\"}));"
  )
};
