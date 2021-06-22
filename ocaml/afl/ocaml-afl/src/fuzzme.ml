(*
  The proper way to do it, but this requires adding unix to your
  dependencies. Note this also works on Windows, despite the name.
*)
(* let notify_mayhem () = Unix.kill (Unix.getpid ()) Sys.sigkill *)

(* A hacky way to do it that requires no dependencies *)
let notify_mayhem () = Obj.magic 0 0

let main () =
  let ic = open_in Sys.argv.(1) in
  let s = input_line ic in
  match Array.to_list (Array.init (String.length s) (String.get s)) with
    ['s'; 'e'; 'c'; 'r'; 'e'; 't'; ' '; 'c'; 'o'; 'd'; 'e'] -> notify_mayhem ()
  | _ -> assert(String.length s != 3)


let _ =
  try
    main () with _ -> notify_mayhem ()