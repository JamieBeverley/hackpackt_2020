import Sound.Tidal.Context

module Generics where


major = [0,2,4,5,7,9,11,12]
dorian = fmap (\x -> x-2) [2,4,5,7,9,11,12,14]
phrygian = fmap (\x-> x-4) [4,5,7,9,11,12,14,16]
minor = [0,2,3,5,7,8,10,12]
minor_pent = [0,3,5,7,10,12]


stutPat = ("0 0.125 0 0.125 0 0.125 0 0.125" ~>)
shuf = ("[0 0.05 0 0.05] [0 0.05 0 0.05]" ~>)
stutPat1 = shuf $ gain "[~ 1 ~ 1] ~ 1 ~ 1"
stutPat2 = palindrome $ shuf $ gain "~ 1 ~ 1 ~ 1 ~ 1"

chorded notes offset = foldl (\f n-> f . (superimpose ((offset <~) . (|+ up n)))) id notes
