module TitleFull : sig
  type t = Proto.title_full
  val of_title : Proto.title -> t Async.Deferred.t
  val of_titles : Proto.title list -> t list Async.Deferred.t
end

val titles_of_ids :
  all_titles:Proto.Mangaplus_types.title list ->
  int list -> Proto.Mangaplus_types.title list

val title_detail_of_ids :
  all_titles:Proto.title list -> int list ->
  Proto.title_full list Async.Deferred.t

val ids_of_titles : Proto.title list -> int list

val last_chapter : Proto.title_detail -> Proto.Mangaplus_types.chapter
val chapter_url : Proto.Mangaplus_types.chapter -> string

(** defined as last_chapter |> chapter_url  *)
val last_chapter_url : Proto.title_detail -> string

val describe_last_chapter : Proto.title_full -> string
val make_notification_body : Proto.title_full list -> string list
