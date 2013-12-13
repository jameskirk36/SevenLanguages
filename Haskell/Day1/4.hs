-- Haskell Day1 exercise 4: Write a list comprehension to build a childhood multiplication table. The table would be a list of three-tuples where the first two are integers from 1--12 and the third is the product of the first two.
-- usage (in ghci):
-- 	:load 4.hs
--		timesTable
module Main where
	numbers = [1..12]
	timesTable = [(r,c,r*c) | r <- numbers, c <- numbers] 
