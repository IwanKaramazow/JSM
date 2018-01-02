open Ast;

let compileValue = (v) =>
  switch v {
  | Boolean(b) => string_of_bool(b)
  | String(s) => "\"" ++ s ++ "\""
  };

/* TODO: make configurable */
let namespace = "Blocks";

let compileProps = (props) =>
  switch props {
  | [] => "null"
  | props =>
    let props = List.map(((k, v)) => k ++ ": " ++ compileValue(v), props) |> String.concat(", ");
    "{" ++ props ++ "}"
  };

let compileNode = (ast: Ast.node) => {
  let rec compile = ({name, props, children}) => {
    let name = namespace ++ "." ++ name;
    let props = compileProps(props);
    switch children {
    | [] => "React.createElement(" ++ name ++ ", " ++ props ++ ")"
    | children =>
      let children = List.map((node) => compile(node), children) |> String.concat(", ");
      "React.createElement(" ++ name ++ ", " ++ props ++ ", " ++ children ++ ")"
    }
  };
  compile(ast) ++ ";"
};

let indent = (x) => "  " ++ x;

let compile = (ast: Ast.node) => {
  /* todo make this configurable */
  let imports = "import React from \"react\"\nimport * as Blocks from \"../blocks\"\n";
  let export = "export const Page = ";
  let code = indent(compileNode(ast));
  imports ++ "\n" ++ export ++ "\n" ++ code
};
