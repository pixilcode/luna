open Cmdliner

(* TODO: implement this function *)
(* Steps to implementing:
   1. Make a function that shuts down the computer
   2. Figure out the next steps
*)
let sleep = failwith "unimplemented"

let sleep_t = Term.(const sleep)

let cmd =
  let command_name = "sleep" in
  let doc = "start the process for going to sleep" in
  let info = Cmd.info command_name ~doc in
  Cmd.v info sleep_t