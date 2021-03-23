{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import           Crypto.JWT               (Crv (P_384),
                                           KeyMaterialGenParam (ECGenParam),
                                           genJWK)
import qualified Data.Aeson.Encode.Pretty as Aeson (encodePretty)
import qualified Data.ByteString.Lazy     as Lazy
import           Data.Function            (($))
import           System.IO                (IO)

main :: IO ()
main = do
  jwk <- genJWK $ ECGenParam P_384
  Lazy.putStr $ Aeson.encodePretty jwk
