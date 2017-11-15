{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty
import Polymath.Clean
import Polymath.Factor

main = scotty 3000 $ do
  get "/factor/:poly" $ do
    poly <- (param "poly" >>= toPoly)
    json $ factor' poly
