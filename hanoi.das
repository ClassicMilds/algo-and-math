Towers of Hanoi!
-=-=-=-=-=-=-=-=

AKA: Tower of Brahma or Lucas' Tower.
Variations: Cyclic Hanoi, Multistack



Interesting Unexplored soln: Neural Network, Solve as an undirected graph.


		T(n) <= 2 * T(n-1) + 1
		
		
-------------------------------
LARRYH Stackoverflow: Haskell::  http://stackoverflow.com/questions/3607161/towers-of-hanoi-with-k-pegs
-------------------------------

	-- hanoi for n disks and r pegs [p1, p2, ..., pr]
	hanoiR :: Integer -> [a] -> [(a, a)]

	-- zero disks: no moves needed.
	hanoiR 0 _ = []

	-- one disk: one move and two pegs needed.
	hanoiR 1 (p1 : p2 : rest) = [(p1, p2)] -- only needed for smart-alecks?

	{-
	-- n disks and 3 pegs -- unneeded; covered by (null rest) below.
	hanoiR n [p1, p2, p3] =
		hanoiR (n - 1) [p1, p3, p2] ++
		[(p1, p2)] ++
		hanoiR (n - 1) [p3, p2, p1]
	-}

	-- n disks and r > 3 pegs: use Frame-Stewart algorithm
	hanoiR n (p1 : p2 : p3 : rest) =
		hanoiR k (p1 : p3 : p2 : rest) ++
		hanoiR (n - k) (p1 : p2 : rest) ++
		hanoiR k (p3 : p2 : p1 : rest)
		where k
			| (null rest)   = n - 1
			| otherwise     = n `div` 2		

			
			
Okay okay, C# version: http://www.codeproject.com/Articles/393158/Towers-of-Hanoi



=> NOT COMPLETE: UNDER DEV.
