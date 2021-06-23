let _ =
  let ic = open_in Sys.argv.(1) in
  let s = input_line ic in
  match Array.to_list (Array.init (String.length s) (String.get s)) with
    ['b'; 'u'; 'g'] -> failwith "Found the bug!"
  | _ -> ()