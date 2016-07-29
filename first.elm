import Html exposing (text)
import String

main =
  -- String.reverse (String.repeat 3 (String.toUpper "suh dude"))
  "!ognib"
  |> String.reverse
  |> String.toUpper
  |> String.repeat 3
  |> Html.text
