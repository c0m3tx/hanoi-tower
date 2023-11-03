module Tests exposing (tests)

import Hanoi exposing (hanoi)
import Expect
import Test exposing (..)


tests : Test
tests =
    describe "Hanoi"
        [ test "no matches" <|
            \() ->
                Expect.equal 4294967295
                    (hanoi 32 "a" "b" "c")
        ]