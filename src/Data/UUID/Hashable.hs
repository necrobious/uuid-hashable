module Data.UUID.Hashable where

import Data.Hashable (Hashable,hashWithSalt)
import Data.UUID (UUID,toWords)

instance Hashable UUID where
  hashWithSalt s uuid = 
    let (word32_1, word32_2, word32_3, word32_4) = toWords uuid
    in s `hashWithSalt` word32_1 `hashWithSalt` word32_2 `hashWithSalt` word32_3 `hashWithSalt` word32_4 

