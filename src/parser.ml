
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | STRING of (
# 10 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 12 "/Users/Iwan/Development/jsm/src/parser.ml"
  )
    | SLASH
    | LESSTHENSLASH
    | LESSTHEN
    | IDENT of (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 20 "/Users/Iwan/Development/jsm/src/parser.ml"
  )
    | GREATERTHEN
    | FALSE
    | EQUAL
    | EOF
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState15
  | MenhirState14
  | MenhirState9
  | MenhirState2
  | MenhirState0

# 1 "/Users/Iwan/Development/jsm/src/parser.mly"
  
  open Ast

# 52 "/Users/Iwan/Development/jsm/src/parser.ml"

let rec _menhir_goto_list_node_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_node_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_node) * _menhir_state * 'tv_list_node_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_node) * _menhir_state * 'tv_list_node_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_node)), _, (xs : 'tv_list_node_)) = _menhir_stack in
        let _v : 'tv_list_node_ = 
# 187 "/Users/Iwan/.npm-packages/lib/node_modules/reason-cli/r/3_____________________________/i/opam__slash__menhir-20170712.0.0-de721f92/lib/menhir/standard.mly"
    ( x :: xs )
# 67 "/Users/Iwan/Development/jsm/src/parser.ml"
         in
        _menhir_goto_list_node_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)) : 'freshtv80)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv95 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 75 "/Users/Iwan/Development/jsm/src/parser.ml"
        )) * _menhir_state * 'tv_list_prop_)) * _menhir_state * 'tv_list_node_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LESSTHENSLASH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv91 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 85 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) * _menhir_state * 'tv_list_prop_)) * _menhir_state * 'tv_list_node_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv87 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 95 "/Users/Iwan/Development/jsm/src/parser.ml"
                )) * _menhir_state * 'tv_list_prop_)) * _menhir_state * 'tv_list_node_)) = Obj.magic _menhir_stack in
                let (_v : (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 100 "/Users/Iwan/Development/jsm/src/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | GREATERTHEN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv83 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 111 "/Users/Iwan/Development/jsm/src/parser.ml"
                    )) * _menhir_state * 'tv_list_prop_)) * _menhir_state * 'tv_list_node_)) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 115 "/Users/Iwan/Development/jsm/src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv81 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 122 "/Users/Iwan/Development/jsm/src/parser.ml"
                    )) * _menhir_state * 'tv_list_prop_)) * _menhir_state * 'tv_list_node_)) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 126 "/Users/Iwan/Development/jsm/src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((((_menhir_stack, _menhir_s), (_2 : (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 131 "/Users/Iwan/Development/jsm/src/parser.ml"
                    ))), _, (_3 : 'tv_list_prop_)), _, (_5 : 'tv_list_node_)), (_7 : (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 135 "/Users/Iwan/Development/jsm/src/parser.ml"
                    ))) = _menhir_stack in
                    let _8 = () in
                    let _6 = () in
                    let _4 = () in
                    let _1 = () in
                    let _v : 'tv_node = 
# 26 "/Users/Iwan/Development/jsm/src/parser.mly"
    ( { name = _2; props = _3; children = _5} )
# 144 "/Users/Iwan/Development/jsm/src/parser.ml"
                     in
                    _menhir_goto_node _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)) : 'freshtv84)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv85 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 154 "/Users/Iwan/Development/jsm/src/parser.ml"
                    )) * _menhir_state * 'tv_list_prop_)) * _menhir_state * 'tv_list_node_)) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 158 "/Users/Iwan/Development/jsm/src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv89 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 169 "/Users/Iwan/Development/jsm/src/parser.ml"
                )) * _menhir_state * 'tv_list_prop_)) * _menhir_state * 'tv_list_node_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv93 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 180 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) * _menhir_state * 'tv_list_prop_)) * _menhir_state * 'tv_list_node_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)) : 'freshtv96)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_node : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_node -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState15 | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_node) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LESSTHEN ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LESSTHENSLASH ->
            _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv62)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_node) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv71 * _menhir_state * 'tv_node) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_node) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_node)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 16 "/Users/Iwan/Development/jsm/src/parser.mly"
       (Ast.node)
# 226 "/Users/Iwan/Development/jsm/src/parser.ml"
            ) = 
# 20 "/Users/Iwan/Development/jsm/src/parser.mly"
             ( _1 )
# 230 "/Users/Iwan/Development/jsm/src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv67) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "/Users/Iwan/Development/jsm/src/parser.mly"
       (Ast.node)
# 238 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "/Users/Iwan/Development/jsm/src/parser.mly"
       (Ast.node)
# 246 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv63) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 16 "/Users/Iwan/Development/jsm/src/parser.mly"
       (Ast.node)
# 254 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) : (
# 16 "/Users/Iwan/Development/jsm/src/parser.mly"
       (Ast.node)
# 258 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv64)) : 'freshtv66)) : 'freshtv68)) : 'freshtv70)) : 'freshtv72)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv73 * _menhir_state * 'tv_node) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
    | _ ->
        _menhir_fail ()

and _menhir_reduce1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_node_ = 
# 185 "/Users/Iwan/.npm-packages/lib/node_modules/reason-cli/r/3_____________________________/i/opam__slash__menhir-20170712.0.0-de721f92/lib/menhir/standard.mly"
    ( [] )
# 276 "/Users/Iwan/Development/jsm/src/parser.ml"
     in
    _menhir_goto_list_node_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_prop_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_prop_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_prop) * _menhir_state * 'tv_list_prop_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_prop) * _menhir_state * 'tv_list_prop_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_prop)), _, (xs : 'tv_list_prop_)) = _menhir_stack in
        let _v : 'tv_list_prop_ = 
# 187 "/Users/Iwan/.npm-packages/lib/node_modules/reason-cli/r/3_____________________________/i/opam__slash__menhir-20170712.0.0-de721f92/lib/menhir/standard.mly"
    ( x :: xs )
# 293 "/Users/Iwan/Development/jsm/src/parser.ml"
         in
        _menhir_goto_list_prop_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv44)) : 'freshtv46)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 301 "/Users/Iwan/Development/jsm/src/parser.ml"
        )) * _menhir_state * 'tv_list_prop_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GREATERTHEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv47 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 311 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) * _menhir_state * 'tv_list_prop_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LESSTHEN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | LESSTHENSLASH ->
                _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv48)
        | SLASH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv55 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 329 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) * _menhir_state * 'tv_list_prop_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | GREATERTHEN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv51 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 339 "/Users/Iwan/Development/jsm/src/parser.ml"
                )) * _menhir_state * 'tv_list_prop_)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv49 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 346 "/Users/Iwan/Development/jsm/src/parser.ml"
                )) * _menhir_state * 'tv_list_prop_)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), (_2 : (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 351 "/Users/Iwan/Development/jsm/src/parser.ml"
                ))), _, (_3 : 'tv_list_prop_)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _1 = () in
                let _v : 'tv_node = 
# 24 "/Users/Iwan/Development/jsm/src/parser.mly"
    ( { name = _2; props = _3; children = []} )
# 359 "/Users/Iwan/Development/jsm/src/parser.ml"
                 in
                _menhir_goto_node _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv53 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 369 "/Users/Iwan/Development/jsm/src/parser.ml"
                )) * _menhir_state * 'tv_list_prop_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv57 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 380 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) * _menhir_state * 'tv_list_prop_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prop : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prop -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv41 * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | GREATERTHEN | SLASH ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv42)

and _menhir_goto_value : _menhir_env -> 'ttv_tail -> 'tv_value -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv39 * _menhir_state * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 410 "/Users/Iwan/Development/jsm/src/parser.ml"
    ))) = Obj.magic _menhir_stack in
    let (_v : 'tv_value) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv37 * _menhir_state * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 417 "/Users/Iwan/Development/jsm/src/parser.ml"
    ))) = Obj.magic _menhir_stack in
    let ((_3 : 'tv_value) : 'tv_value) = _v in
    ((let (_menhir_stack, _menhir_s, (_1 : (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 423 "/Users/Iwan/Development/jsm/src/parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_prop = 
# 32 "/Users/Iwan/Development/jsm/src/parser.mly"
    ( (_1, _3) )
# 429 "/Users/Iwan/Development/jsm/src/parser.ml"
     in
    _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)) : 'freshtv40)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_prop_ = 
# 185 "/Users/Iwan/.npm-packages/lib/node_modules/reason-cli/r/3_____________________________/i/opam__slash__menhir-20170712.0.0-de721f92/lib/menhir/standard.mly"
    ( [] )
# 438 "/Users/Iwan/Development/jsm/src/parser.ml"
     in
    _menhir_goto_list_prop_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 445 "/Users/Iwan/Development/jsm/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 457 "/Users/Iwan/Development/jsm/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_value = 
# 40 "/Users/Iwan/Development/jsm/src/parser.mly"
    ( Boolean false )
# 472 "/Users/Iwan/Development/jsm/src/parser.ml"
             in
            _menhir_goto_value _menhir_env _menhir_stack _v) : 'freshtv18)) : 'freshtv20)
        | STRING _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 481 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
            let ((_1 : (
# 10 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 489 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) : (
# 10 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 493 "/Users/Iwan/Development/jsm/src/parser.ml"
            )) = _v in
            ((let _v : 'tv_value = 
# 36 "/Users/Iwan/Development/jsm/src/parser.mly"
    ( String _1 )
# 498 "/Users/Iwan/Development/jsm/src/parser.ml"
             in
            _menhir_goto_value _menhir_env _menhir_stack _v) : 'freshtv22)) : 'freshtv24)
        | TRUE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_value = 
# 38 "/Users/Iwan/Development/jsm/src/parser.mly"
    ( Boolean true )
# 511 "/Users/Iwan/Development/jsm/src/parser.ml"
             in
            _menhir_goto_value _menhir_env _menhir_stack _v) : 'freshtv26)) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 521 "/Users/Iwan/Development/jsm/src/parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
    | GREATERTHEN | IDENT _ | SLASH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 530 "/Users/Iwan/Development/jsm/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 535 "/Users/Iwan/Development/jsm/src/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_prop = 
# 30 "/Users/Iwan/Development/jsm/src/parser.mly"
    ( ( _1, Boolean true ) )
# 540 "/Users/Iwan/Development/jsm/src/parser.ml"
         in
        _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 550 "/Users/Iwan/Development/jsm/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state * 'tv_node) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv9 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 568 "/Users/Iwan/Development/jsm/src/parser.ml"
        )) * _menhir_state * 'tv_list_prop_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state) * (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 582 "/Users/Iwan/Development/jsm/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv16)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "/Users/Iwan/Development/jsm/src/parser.mly"
       (string)
# 603 "/Users/Iwan/Development/jsm/src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | GREATERTHEN | SLASH ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and parse : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 16 "/Users/Iwan/Development/jsm/src/parser.mly"
       (Ast.node)
# 640 "/Users/Iwan/Development/jsm/src/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LESSTHEN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 219 "/Users/Iwan/.npm-packages/lib/node_modules/reason-cli/r/3_____________________________/i/opam__slash__menhir-20170712.0.0-de721f92/lib/menhir/standard.mly"
  


# 670 "/Users/Iwan/Development/jsm/src/parser.ml"
