#ELM
-a tall deciduous tree that typically has rough serrated leaves and propagates from root suckers.

-the wood of the elm tree.

--noun: elmwood

-But really, Elm was designed by Evan Czaplicki as his thesis in 2012.

-Elm has a small but expressive set of language constructs, including if-expressions, let-expressions, case-expressions, anonymous functions, and list interpolation.From there the key features include signals, immutability, static types, and interoperability with HTML, CSS, and JavaScript.

-Immutability - all values in ELM cannot be changed once its created. ELM uses persistent data structures

-interpolates HTML, CSS, Javascript

-Everything on 1 page (in development)

-Said to be faster than react.js at rendering

-smooth JS interop


##ELM PROS:
-will compile HTML, CSS, JS all in one file

-Very nice error messages/Excellent documentation that will even recommend changes

-Very Modular (ie you want to add in strings, you need import String)

-Single page apps with ELM

##ELM CONS:
-need to load dependencies

-very explicit

-limitations, no .map, .apply, .fold, .filter

-whitespaces error, spacing matters alot


#Lets get started
-install the elm package via website http://elm-lang.org/get-started
  get the colors if you want at Atom Preferences/Install/search elm-language (get the 2nd one)


-make a directory

elm package install - for all the dependencies you need (similar to gems)
make the elm file, so for this

touch hello.elm, in that document:
```
import Html exposing (text)

main =
  Html.text "Suh dude"
```

Compile and create the HTML
```
elm make first.elm --output index.Html
```
then you can
```
chrome index.html
```

You can also do
```
elm-reactor
```
Which is a built in hub page for all your elm's on localhost:8000

#ELM has a repl!
-there is an also elm repl
-Play with the elm commands
http://www.elm-tutorial.org/en/03-subs-cmds/02-commands.html
http://elm-lang.org/docs
```Terminal
elm repl
```
Try this in terminal
```
String.repeat 3 (String.toUpper "suh dude")
```
Each chain, you will need a set of paranthesis. it acts similar as a funciton:
```
String.reverse (String.repeat 3 (String.toUpper "suh dude"))
```
#Back to the file
These funny |> pipes will let you chain things together.
The below is equivalent to "String.reverse (String.repeat 3 (String.toUpper "suh dude"))" which is commented out.
```

import Html exposing (text)
import String

main =
  -- String.reverse (String.repeat 3 (String.toUpper "suh dude"))
  "!ognib"
  |> String.reverse
  |> String.toUpper
  |> String.repeat 3
  |> Html.text
```
-the string is being manipulated and then formatted to HTML at the end

##Another example, adding.elm
```
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

```


Looking more into the app, you will see:

- Look at how the program will import (by exposing Html, button, div, text)

- Main is what displays on the HTML

- Update is similar to the JS (behavior)

- exporting Html.app lets us use these above.


Try to make expontentiate button!

##Another example of adding (with documentation)
```
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

```


#More
-HTML modules, ranked by popularity and their commands:
http://package.elm-lang.org/packages/elm-lang/html/1.1.0/Html

-Make a todo: https://justinsilvestre.gitbooks.io/hit-the-ground-running-with-elm/content/generating_html.html

-Evan's to do finished: http://evancz.github.io/elm-todomvc/#/

-Evan's todo repo https://github.com/evancz/elm-todomvc
