(* let notify_mayhem () = Unix.kill (Unix.getpid ()) Sys.sigkill

let _ =
  let ic = open_in Sys.argv.(1) in
  let s = input_line ic in
  match Array.to_list (Array.init (String.length s) (String.get s)) with
    ['b'; 'u'; 'g'] -> failwith "Found the bug!"
  | _ -> notify_mayhem () *)

let notify_mayhem () = Unix.kill (Unix.getpid ()) Sys.sigabrt

let main () =
  let ic = open_in Sys.argv.(1) in
  let s = input_line ic in
  match Array.to_list (Array.init (String.length s) (String.get s)) with
    ['b'; 'u'; 'g'] -> notify_mayhem ()
  | _ -> assert(String.length s >= 3)


let _ =
  try
    main () with _ -> notify_mayhem ()