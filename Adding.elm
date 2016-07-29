import Html exposing (Html, button, div, text)
import Html.App as App
import Html.Events exposing (onClick)

-- Front end applications in Elm start on a function called "main", kinda like ruby yield

main =
  App.beginnerProgram { model = 0, view = view, update = update }

type Msg = Increment | Decrement | Addfive | Addten

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Addfive ->
      model + 5

    Addten ->
      model + 10

view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    , button [ onClick Addfive ] [ text "Add five" ]
    , button [ onClick Addten ] [ text "Add ten" ]
    ]
