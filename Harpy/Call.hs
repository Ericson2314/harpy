{-# OPTIONS -cpp #-}

--------------------------------------------------------------------------
-- |
-- Module      :  Harpy.Call
-- Copyright   :  (c) 2006-2007 Martin Grabmueller and Dirk Kleeblatt
-- License     :  GPL
-- 
-- Maintainer  :  {magr,klee}@cs.tu-berlin.de
-- Stability   :  provisional
-- Portability :  non-portable
--
-- Predefined call stubs for run-time generated code.
--------------------------------------------------------------------------

module Harpy.Call where

import Harpy.CodeGenMonad

import Data.Word
import Foreign.Ptr

#ifndef __HADDOCK__

$(callDecl "callAsVoid" [t|()|])
-- $(callDecl "callAsWord32ToWord32" [t|Word32 -> Word32|])
-- $(callDecl "callAs7PtrToVoid" [t|forall a b c d e f g . Ptr a -> Ptr b -> Ptr c -> Ptr d -> Ptr e -> Ptr f -> Ptr g -> () |])

#else

callAsVoid :: CodeGen e s ()
callAsWord32ToWord32 :: Word32 -> CodeGen e s Word32
callAs7PtrToVoid :: forall a b c d e f g e' s'. Ptr a -> Ptr b -> Ptr c -> Ptr d -> Ptr e -> Ptr f -> Ptr g -> CodeGen e' s' ()

#endif
