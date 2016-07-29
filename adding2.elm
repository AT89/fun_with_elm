import Html exposing (Html, button, div, text, h1)
import Html.App as App
import Html.Events exposing (onClick)
-- Html is an Elm library, exposing(this is what we want from the library)
-- If we do exposing(..) then we want all methods from library

-- Front end applications in Elm start on a function called "main", kinda like ruby yield

main =
  -- main is what displays on our html page
  App.beginnerProgram { model = 0, view = view, update = update }
  -- beginnerProgram takes a Record which in JS is an object, it takes 3 keys, which are our model and functions

type Msg = Increment | Decrement
type alias Model = Int

-- Messages are the actions that can be taken in our app
-- or things that can be done to change the state of our app

update : Msg -> Model -> Model
update message model =
  case message of
    -- if Increment, create new instance of model
    Increment ->
      model + 1
    -- else if Decrement, create new instance of model
    Decrement ->
      model - 1

view model =
  -- element takes two args, attributes and child elements
  -- div comes from exposing it from the Html library
  div []
    [ h1 [] [ text "Elm Counter" ]
    , button [ onClick Increment ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Decrement ] [ text "+" ]
    ]
