open Match

(** if [sequential] is true, then substitute the pattern :[id()] starting at 1,
    and incrementing subsequent IDs. if [sequential] is false, then substitute
    the pattern :[id()] with a fresh hex string based on the last 48-bit part of
    a UUID v3 identifier *)
val substitute_fresh : ?sequential:bool -> string -> string

(** substitute returns the result and variables substituted for *)
val substitute : ?sequential:bool -> string -> Environment.t -> (string * string list)

val of_match_context : Match.t -> source:string -> (string * string)

val get_offsets_for_holes : string -> string list -> (string * int) list

val get_offsets_after_substitution : (string * int) list -> Environment.t -> (string * int) list
