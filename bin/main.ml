open Cmdliner

let chorus count msg = for _i = 1 to count do print_endline msg done

let count =
  let doc = "Repeat the message $(docv) times." in
  Arg.(value & opt int 10 & info ["c"; "count"] ~docv:"COUNT" ~doc)

let msg =
  let env =
    let doc = "Overrides the default message to print." in
    Cmd.Env.info "CHORUS_MSG" ~doc
  in
  let doc = "The message to print." in
  Arg.(value & pos 0 string "Revolt!" & info [] ~env ~docv:"MSG" ~doc)

let _chorus_t = Term.(const chorus $ count $ msg)

let sleep_cmd = Luna_cli_commands.Sleep.cmd

let cmd =
  (* TODO: figure out a way to inject the command name *)
  let cli_name = "luna" in
  let doc = "schedule a time for your computer (and you) to sleep" in
  let man = [ (* TODO: write man pages *) ] in
  (* TODO: figure out a way to insert the version *)
  let info = Cmd.info cli_name ~version:"%%VERSION%%" ~doc ~man in
  (* TODO: implement all commands, not just sleep *)
  Cmd.group info [sleep_cmd]
  (* Cmd.v info chorus_t *)

let main () = exit (Cmd.eval cmd)
let () = main ()