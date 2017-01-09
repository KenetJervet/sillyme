{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric  #-}
{-# LANGUAGE TypeFamilies   #-}

module SillyMe.Store.Model where

import           Control.DeepSeq
import           Data.Text
import           Data.UUID
import           GHC.Generics

class Model model where
  type IdType model :: *
  type IdType model = UUID

type UniqueData model = (IdType model, model)


------------
-- Models --
------------

data Lang = Lang { langName :: Text
                 } deriving (Generic, NFData)

instance Model Lang


data SillyCategory = SillyCategory { catName :: Text
                                   } deriving (Generic, NFData)

instance Model SillyCategory


data CodeSnippet = CodeSnippet { code :: Text
                               } deriving (Generic, NFData)
