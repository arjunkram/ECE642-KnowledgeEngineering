(deftemplate cell "single cell on the board"
(slot row (type INTEGER) (default 0))
(slot col (type INTEGER) (default 0))
(slot contents (allowed-symbols S E o x * .) (default x))
(slot north (type INTEGER) (default 0))
(slot south (type INTEGER) (default 0))
(slot east (type INTEGER) (default 0))
(slot west (type INTEGER) (default 0))
(slot searched (type INTEGER) (default 0))
(slot in_final_path (allowed-symbols yes no) (default no)))


(deffacts start
(cell (row 1) (col 1) 					(south 2)	(east 2))
(cell (row 1) (col 2) (contents o) 			(south 2) 	(east 3)	(west 1))
(cell (row 1) (col 3)					(south 2) 	(east 4) 	(west 2))
(cell (row 1) (col 4) (contents o)			(south 2) 	(east 5) 	(west 3))
(cell (row 1) (col 5) 					(south 2) 	(east 6) 	(west 4))
(cell (row 1) (col 6) (contents o) 			(south 2) 	(east 7) 	(west 5))
(cell (row 1) (col 7) 					(south 2) 	(east 8) 	(west 6))
(cell (row 1) (col 8) (contents o) 			(south 2) 	(east 9) 	(west 7))
(cell (row 1) (col 9) 					(south 2) 	(east 10) 	(west 8))
(cell (row 1) (col 10) (contents o) 			(south 2) 	(east 11) 	(west 9))
(cell (row 1) (col 11) 					(south 2) 			(west 10))
(cell (row 2) (col 1)			(north 1) 	(south 3) 	(east 2))
(cell (row 2) (col 2) (contents o) 	(north 1) 	(south 3) 	(east 3) 	(west 1))
(cell (row 2) (col 3) 			(north 1) 	(south 3) 	(east 4) 	(west 2))
(cell (row 2) (col 4) (contents o) 	(north 1) 	(south 3) 	(east 5) 	(west 3))
(cell (row 2) (col 5) 			(north 1) 	(south 3) 	(east 6) 	(west 4))
(cell (row 2) (col 6) (contents o) 	(north 1) 	(south 3) 	(east 7) 	(west 5))
(cell (row 2) (col 7) 			(north 1) 	(south 3) 	(east 8) 	(west 6))
(cell (row 2) (col 8) (contents o) 	(north 1) 	(south 3) 	(east 9) 	(west 7))
(cell (row 2) (col 9) 			(north 1) 	(south 3) 	(east 10) 	(west 8))
(cell (row 2) (col 10) (contents o) 	(north 1) 	(south 3) 	(east 11) 	(west 9))
(cell (row 2) (col 11) 			(north 1) 	(south 3) 			(west 10))
(cell (row 3) (col 1) 			(north 2) 	(south 4) 	(east 2))
(cell (row 3) (col 2) (contents o) 	(north 2) 	(south 4) 	(east 3) 	(west 1))
(cell (row 3) (col 3) 			(north 2) 	(south 4) 	(east 4) 	(west 2))
(cell (row 3) (col 4) (contents o) 	(north 2) 	(south 4) 	(east 5) 	(west 3))
(cell (row 3) (col 5) 			(north 2) 	(south 4) 	(east 6) 	(west 4))
(cell (row 3) (col 6) (contents o) 	(north 2) 	(south 4) 	(east 7) 	(west 5))
(cell (row 3) (col 7) 			(north 2) 	(south 4) 	(east 8) 	(west 6))
(cell (row 3) (col 8) (contents o) 	(north 2) 	(south 4) 	(east 9) 	(west 7))
(cell (row 3) (col 9) 			(north 2) 	(south 4) 	(east 10) 	(west 8))
(cell (row 3) (col 10) (contents o) 	(north 2) 	(south 4) 	(east 11) 	(west 9))
(cell (row 3) (col 11) 			(north 2) 	(south 4) 			(west 10))
(cell (row 4) (col 1) 			(north 3) 	(south 5) 	(east 2))
(cell (row 4) (col 2) (contents o) 	(north 3) 	(south 5) 	(east 3) 	(west 1))
(cell (row 4) (col 3) 			(north 3) 	(south 5) 	(east 4) 	(west 2))
(cell (row 4) (col 4) (contents o) 	(north 3) 	(south 5) 	(east 5) 	(west 3))
(cell (row 4) (col 5) 			(north 3) 	(south 5) 	(east 6) 	(west 4))
(cell (row 4) (col 6) (contents o) 	(north 3) 	(south 5) 	(east 7) 	(west 5))
(cell (row 4) (col 7) 			(north 3) 	(south 5) 	(east 8) 	(west 6))
(cell (row 4) (col 8) (contents o) 	(north 3) 	(south 5) 	(east 9) 	(west 7))
(cell (row 4) (col 9) 			(north 3) 	(south 5) 	(east 10) 	(west 8))
(cell (row 4) (col 10) (contents o) 	(north 3) 	(south 5) 	(east 11) 	(west 9))
(cell (row 4) (col 11) 			(north 3) 	(south 5) 			(west 10))
(cell (row 5) (col 1) 			(north 4) 	(south 6) 	(east 2))
(cell (row 5) (col 2) (contents o) 	(north 4) 	(south 6)  	(east 3) 	(west 1))
(cell (row 5) (col 3) 			(north 4) 	(south 6) 	(east 4) 	(west 2))
(cell (row 5) (col 4) (contents o) 	(north 4) 	(south 6) 	(east 5) 	(west 3))
(cell (row 5) (col 5) 			(north 4) 	(south 6) 	(east 6) 	(west 4))
(cell (row 5) (col 6) (contents o) 	(north 4) 	(south 6)  	(east 7) 	(west 5))
(cell (row 5) (col 7) 			(north 4) 	(south 6) 	(east 8) 	(west 6))
(cell (row 5) (col 8) (contents o)	(north 4) 	(south 6) 	(east 9) 	(west 7))
(cell (row 5) (col 9) 			(north 4) 	(south 6)  	(east 10) 	(west 8))
(cell (row 5) (col 10) (contents o) 	(north 4) 	(south 6)  	(east 11) 	(west 9))
(cell (row 5) (col 11) 			(north 4) 	(south 6)  			(west 10))
(cell (row 6) (col 1) 			(north 5) 	(south 7)	(east 2))
(cell (row 6) (col 2) (contents o) 	(north 5) 	(south 7) 	(east 3) 	(west 1))
(cell (row 6) (col 3) 			(north 5) 	(south 7) 	(east 4) 	(west 2))
(cell (row 6) (col 4) (contents o) 	(north 5) 	(south 7) 	(east 5) 	(west 3))
(cell (row 6) (col 5) (contents o)			(north 5) 	(south 7) 	(east 6) 	(west 4))
(cell (row 6) (col 6) (contents S) 	(north 5)	(south 7) 	(east 7) 	(west 5))
(cell (row 6) (col 7) 			(north 5) 	(south 7) 	(east 8) 	(west 6))
(cell (row 6) (col 8) (contents o) 	(north 5) 	(south 7) 	(east 9) 	(west 7))
(cell (row 6) (col 9) 			(north 5) 	(south 7) 	(east 10) 	(west 8))
(cell (row 6) (col 10) (contents o) 	(north 5) 	(south 7) 	(east 11) 	(west 9))
(cell (row 6) (col 11) 			(north 5) 	(south 7) 			(west 10))
(cell (row 7) (col 1) 			(north 6) 	(south 8) 	(east 2))
(cell (row 7) (col 2) (contents o) 	(north 6) 	(south 8) 	(east 3) 	(west 1))
(cell (row 7) (col 3) 			(north 6) 	(south 8) 	(east 4) 	(west 2))
(cell (row 7) (col 4) (contents o) 	(north 6) 	(south 8) 	(east 5) 	(west 3))
(cell (row 7) (col 5) 			(north 6) 	(south 8) 	(east 6) 	(west 4))
(cell (row 7) (col 6) (contents o) 	(north 6) 	(south 8) 	(east 7) 	(west 5))
(cell (row 7) (col 7) 			(north 6) 	(south 8) 	(east 8) 	(west 6))
(cell (row 7) (col 8) (contents o) 	(north 6) 	(south 8) 	(east 9) 	(west 7))
(cell (row 7) (col 9) 			(north 6) 	(south 8) 	(east 10) 	(west 8))
(cell (row 7) (col 10) (contents o) 	(north 6) 	(south 8) 	(east 11) 	(west 9))
(cell (row 7) (col 11) 			(north 6) 	(south 8)			(west 10))
(cell (row 8) (col 1) 			(north 7) 	(south 9) 	(east 2))
(cell (row 8) (col 2) (contents o) 	(north 7) 	(south 9) 	(east 3) 	(west 1))
(cell (row 8) (col 3) 			(north 7) 	(south 9) 	(east 4) 	(west 2))
(cell (row 8) (col 4) (contents o) 	(north 7) 	(south 9) 	(east 5) 	(west 3))
(cell (row 8) (col 5) 			(north 7) 	(south 9) 	(east 6) 	(west 4))
(cell (row 8) (col 6) (contents o)	(north 7) 	(south 9) 	(east 7) 	(west 5))
(cell (row 8) (col 7) 			(north 7) 	(south 9) 	(east 8) 	(west 6))
(cell (row 8) (col 8) (contents o) 	(north 7) 	(south 9) 	(east 9) 	(west 7))
(cell (row 8) (col 9) 			(north 7) 	(south 9) 	(east 10) 	(west 8))
(cell (row 8) (col 10) (contents o) 	(north 7) 	(south 9) 	(east 11) 	(west 9))
(cell (row 8) (col 11) 			(north 7) 	(south 9) 			(west 10))
(cell (row 9) (col 1) 			(north 8) 	(south 10) 	(east 2))
(cell (row 9) (col 2) (contents o) 	(north 8) 	(south 10) 	(east 3) 	(west 1))
(cell (row 9) (col 3) 			(north 8) 	(south 10) 	(east 4) 	(west 2))
(cell (row 9) (col 4) (contents o) 	(north 8) 	(south 10) 	(east 5) 	(west 3))
(cell (row 9) (col 5) 			(north 8) 	(south 10) 	(east 6) 	(west 4))
(cell (row 9) (col 6) (contents o) 	(north 8) 	(south 10) 	(east 7) 	(west 5))
(cell (row 9) (col 7) 			(north 8) 	(south 10) 	(east 8) 	(west 6))
(cell (row 9) (col 8) (contents o) 	(north 8) 	(south 10) 	(east 9) 	(west 7))
(cell (row 9) (col 9) 			(north 8) 	(south 10) 	(east 10) 	(west 8))
(cell (row 9) (col 10) (contents o) 	(north 8) 	(south 10) 	(east 11) 	(west 9))
(cell (row 9) (col 11) 			(north 8) 	(south 10) 			(west 10))
(cell (row 10) (col 1) 			(north 9) 	(south 11) 	(east 2))
(cell (row 10) (col 2) (contents E) 	(north 9) 	(south 11) 	(east 3) 	(west 1))
(cell (row 10) (col 3) 			(north 9) 	(south 11) 	(east 4) 	(west 2))
(cell (row 10) (col 4) (contents o) 	(north 9) 	(south 11) 	(east 5) 	(west 3))
(cell (row 10) (col 5) 			(north 9) 	(south 11) 	(east 6) 	(west 4))
(cell (row 10) (col 6) (contents o) 	(north 9) 	(south 11) 	(east 7) 	(west 5))
(cell (row 10) (col 7) 			(north 9) 	(south 11) 	(east 8) 	(west 6))
(cell (row 10) (col 8) (contents o) 	(north 9) 	(south 11) 	(east 9) 	(west 7))
(cell (row 10) (col 9) 			(north 9) 	(south 11) 	(east 10) 	(west 8))
(cell (row 10) (col 10) (contents o) 	(north 9) 	(south 11) 	(east 11) 	(west 9))
(cell (row 10) (col 11) 		(north 9) 	(south 11) 			(west 10))
(cell (row 11) (col 1) 			(north 10) 			(east  2))
(cell (row 11) (col 2) (contents o) 	(north 10) 			(east 3) 	(west 1))
(cell (row 11) (col 3) 			(north 10) 			(east 4) 	(west 2))
(cell (row 11) (col 4) (contents o) 	(north 10) 			(east 5) 	(west 3))
(cell (row 11) (col 5) 			(north 10) 			(east 6) 	(west 4))
(cell (row 11) (col 6) 			(north 10) 			(east 7) 	(west 5))
(cell (row 11) (col 7) 			(north 10) 			(east 8) 	(west 6))
(cell (row 11) (col 8) (contents o) 	(north 10) 			(east 9) 	(west 7))
(cell (row 11) (col 9) 			(north 10) 			(east 10) 	(west 8))
(cell (row 11) (col 10) (contents o) 	(north 10) 			(east 11) 	(west 9))
(cell (row 11) (col 11) 		(north 10) 					          (west 10)))

(deftemplate start_end_cells
   (slot startr (type INTEGER))
   (slot startc (type INTEGER))
   (slot finishr (type INTEGER))
   (slot finishc (type INTEGER))
)

(defglobal
?*up* = 0
?*down* = 0
?*left* = 0
?*right* = 0
?*distance* = 0
?*adistance* = 0
)


(deftemplate current_cell
	(slot row (type INTEGER) (default 0))
	(slot col (type INTEGER) (default 0))
)


(defrule findSandE 
	(declare (salience -40))
	?startcell <- (cell (contents S) (row ?sr) (col ?sc))
	?endcell <- (cell (contents E) (row ?fr) (col ?fc))
	(cell (row 1) (col 1) (contents ?c11))
   (cell (row 1) (col 2) (contents ?c12))
   (cell (row 1) (col 3) (contents ?c13))
   (cell (row 1) (col 4) (contents ?c14))
   (cell (row 1) (col 5) (contents ?c15))
   (cell (row 1) (col 6) (contents ?c16))
   (cell (row 1) (col 7) (contents ?c17))
   (cell (row 1) (col 8) (contents ?c18))
   (cell (row 1) (col 9) (contents ?c19))
   (cell (row 1) (col 10) (contents ?c110))
   (cell (row 1) (col 11) (contents ?c111))
   (cell (row 2) (col 1) (contents ?c21))
   (cell (row 2) (col 2) (contents ?c22))
   (cell (row 2) (col 3) (contents ?c23))
   (cell (row 2) (col 4) (contents ?c24))
   (cell (row 2) (col 5) (contents ?c25))
   (cell (row 2) (col 6) (contents ?c26))
   (cell (row 2) (col 7) (contents ?c27))
   (cell (row 2) (col 8) (contents ?c28))
   (cell (row 2) (col 9) (contents ?c29))
   (cell (row 2) (col 10) (contents ?c210))
   (cell (row 2) (col 11) (contents ?c211))
   (cell (row 3) (col 1) (contents ?c31))
   (cell (row 3) (col 2) (contents ?c32))
   (cell (row 3) (col 3) (contents ?c33))
   (cell (row 3) (col 4) (contents ?c34))
   (cell (row 3) (col 5) (contents ?c35))
   (cell (row 3) (col 6) (contents ?c36))
   (cell (row 3) (col 7) (contents ?c37))
   (cell (row 3) (col 8) (contents ?c38))
   (cell (row 3) (col 9) (contents ?c39))
   (cell (row 3) (col 10) (contents ?c310))
   (cell (row 3) (col 11) (contents ?c311))
   (cell (row 4) (col 1) (contents ?c41))
   (cell (row 4) (col 2) (contents ?c42))
   (cell (row 4) (col 3) (contents ?c43))
   (cell (row 4) (col 4) (contents ?c44))
   (cell (row 4) (col 5) (contents ?c45))
   (cell (row 4) (col 6) (contents ?c46))
   (cell (row 4) (col 7) (contents ?c47))
   (cell (row 4) (col 8) (contents ?c48))
   (cell (row 4) (col 9) (contents ?c49))
   (cell (row 4) (col 10) (contents ?c410))
   (cell (row 4) (col 11) (contents ?c411))
   (cell (row 5) (col 1) (contents ?c51))
   (cell (row 5) (col 2) (contents ?c52))
   (cell (row 5) (col 3) (contents ?c53))
   (cell (row 5) (col 4) (contents ?c54))
   (cell (row 5) (col 5) (contents ?c55))
   (cell (row 5) (col 6) (contents ?c56))
   (cell (row 5) (col 7) (contents ?c57))
   (cell (row 5) (col 8) (contents ?c58))
   (cell (row 5) (col 9) (contents ?c59))
   (cell (row 5) (col 10) (contents ?c510))
   (cell (row 5) (col 11) (contents ?c511))
   (cell (row 6) (col 1) (contents ?c61))
   (cell (row 6) (col 2) (contents ?c62))
   (cell (row 6) (col 3) (contents ?c63))
   (cell (row 6) (col 4) (contents ?c64))
   (cell (row 6) (col 5) (contents ?c65))
   (cell (row 6) (col 6) (contents ?c66))
   (cell (row 6) (col 7) (contents ?c67))
   (cell (row 6) (col 8) (contents ?c68))
   (cell (row 6) (col 9) (contents ?c69))
   (cell (row 6) (col 10) (contents ?c610))
   (cell (row 6) (col 11) (contents ?c611))
   (cell (row 7) (col 1) (contents ?c71))
   (cell (row 7) (col 2) (contents ?c72))
   (cell (row 7) (col 3) (contents ?c73))
   (cell (row 7) (col 4) (contents ?c74))
   (cell (row 7) (col 5) (contents ?c75))
   (cell (row 7) (col 6) (contents ?c76))
   (cell (row 7) (col 7) (contents ?c77))
   (cell (row 7) (col 8) (contents ?c78))
   (cell (row 7) (col 9) (contents ?c79))
   (cell (row 7) (col 10) (contents ?c710))
   (cell (row 7) (col 11) (contents ?c711))
   (cell (row 8) (col 1) (contents ?c81))
   (cell (row 8) (col 2) (contents ?c82))
   (cell (row 8) (col 3) (contents ?c83))
   (cell (row 8) (col 4) (contents ?c84))
   (cell (row 8) (col 5) (contents ?c85))
   (cell (row 8) (col 6) (contents ?c86))
   (cell (row 8) (col 7) (contents ?c87))
   (cell (row 8) (col 8) (contents ?c88))
   (cell (row 8) (col 9) (contents ?c89))
   (cell (row 8) (col 10) (contents ?c810))
   (cell (row 8) (col 11) (contents ?c811))
   (cell (row 9) (col 1) (contents ?c91))
   (cell (row 9) (col 2) (contents ?c92))
   (cell (row 9) (col 3) (contents ?c93))
   (cell (row 9) (col 4) (contents ?c94))
   (cell (row 9) (col 5) (contents ?c95))
   (cell (row 9) (col 6) (contents ?c96))
   (cell (row 9) (col 7) (contents ?c97))
   (cell (row 9) (col 8) (contents ?c98))
   (cell (row 9) (col 9) (contents ?c99))
   (cell (row 9) (col 10) (contents ?c910))
   (cell (row 9) (col 11) (contents ?c911))
   (cell (row 10) (col 1) (contents ?c101))
   (cell (row 10) (col 2) (contents ?c102))
   (cell (row 10) (col 3) (contents ?c103))
   (cell (row 10) (col 4) (contents ?c104))
   (cell (row 10) (col 5) (contents ?c105))
   (cell (row 10) (col 6) (contents ?c106))
   (cell (row 10) (col 7) (contents ?c107))
   (cell (row 10) (col 8) (contents ?c108))
   (cell (row 10) (col 9) (contents ?c109))
   (cell (row 10) (col 10) (contents ?c1010))
   (cell (row 10) (col 11) (contents ?c1011))
   (cell (row 11) (col 1) (contents ?c1101))
   (cell (row 11) (col 2) (contents ?c1102))
   (cell (row 11) (col 3) (contents ?c1103))
   (cell (row 11) (col 4) (contents ?c1104))
   (cell (row 11) (col 5) (contents ?c1105))
   (cell (row 11) (col 6) (contents ?c1106))
   (cell (row 11) (col 7) (contents ?c1107))
   (cell (row 11) (col 8) (contents ?c1108))
   (cell (row 11) (col 9) (contents ?c1109))
   (cell (row 11) (col 10) (contents ?c1110))
   (cell (row 11) (col 11) (contents ?c1111))
	=>
	(modify ?startcell (searched 1))
	(assert (start_end_cells (startr ?sr) (startc ?sc) (finishr ?fr) (finishc ?fc)))
	(assert (current_cell (row ?sr) (col ?sc)))
	(set-strategy breadth)
	(set-salience-evaluation every-cycle)
	(printout t crlf ?c11  ?c12  ?c13 ?c14 ?c15 ?c16 ?c17 ?c18 ?c19 ?c110 ?c111 crlf ?c21 ?c22 ?c23 ?c24 ?c25 ?c26 ?c27 ?c28 ?c29 ?c210 ?c211 crlf ?c31  ?c32  ?c33 ?c34 ?c35 ?c36 ?c37 ?c38 ?c39 ?c310 ?c311 crlf ?c41  ?c42  ?c43 ?c44 ?c45 ?c46 ?c47 ?c48 ?c49 ?c410 ?c411 crlf 	?c51  ?c52  ?c53 ?c54 ?c55 ?c56 ?c57 ?c58 ?c59 ?c510 ?c511 crlf ?c61  ?c62  ?c63 ?c64 ?c65 ?c66 ?c67 ?c68 ?c69 ?c610 ?c611 crlf ?c71  ?c72  ?c73 ?c74 ?c75 ?c76 ?c77 ?c78 ?c79 ?c710 ?c711 crlf ?c81  ?c82  ?c83 ?c84 ?c85 ?c86 ?c87 ?c88 ?c89 ?c810 ?c811 crlf ?c91  ?c92  ?c93 ?c94 ?c95 ?c96 ?c97 ?c98 ?c99 ?c910 ?c911 crlf ?c101  ?c102  ?c103 ?c104 ?c105 ?c106 ?c107 ?c108 ?c109 ?c1010 ?c1011 crlf ?c1101  ?c1102  ?c1103 ?c1104 ?c1105 ?c1106 ?c1107 ?c1108 ?c1109 ?c1110 ?c1111 crlf)
	)

(defrule down 
	(declare (salience ?*down*))
	?currc <- (current_cell (row ?crow) (col ?ccol))
	?nextc <- (cell (row =(+ ?crow 1)) (col ?ccol))
	(cell (row ?crow) (col ?ccol) (contents ~x) (south ~0))
	(cell (row =(+ ?crow 1)) (col ?ccol) (contents o|E)(searched ~2&~1))
=>
	(printout t "moving down" crlf)
	(modify ?nextc (searched 1)(contents *))
	(modify ?currc (row =(+ ?crow 1)))
	(bind ?*distance* (+ ?*distance* 1))
	(bind ?*adistance* (+ ?*adistance* 1))
)

(defrule left 
	(declare (salience ?*left*))
	?currc <- (current_cell (row ?crow) (col ?ccol))
	?nextc <- (cell (row ?crow) (col =(- ?ccol 1)))
	(cell (row ?crow) (col ?ccol) (contents ~x) (west ~0))
	(cell (row ?crow) (col =(- ?ccol 1)) (contents o|E)(searched ~2&~1))
=>
	
	(modify ?nextc (searched 1)(contents *))
	(modify ?currc (col =(- ?ccol 1)))
	(bind ?*distance* (+ ?*distance* 1))
	(bind ?*adistance* (+ ?*adistance* 1))
)

(defrule right 
	(declare (salience ?*right*))
	?currc <- (current_cell (row ?crow) (col ?ccol))
	?nextc <- (cell (row ?crow) (col =(+ ?ccol 1)))
	(cell (row ?crow) (col ?ccol) (contents ~x) (east ~0))
	(cell (row ?crow) (col =(+ ?ccol 1)) (contents o|E)(searched ~2&~1))
=>
	(printout t "moving right" crlf)
	(modify ?nextc (searched 1)(contents *))
	(modify ?currc (col =(+ ?ccol 1)))
	(bind ?*distance* (+ ?*distance* 1))
	(bind ?*adistance* (+ ?*adistance* 1))
)

(defrule up
	(declare (salience ?*up*)) 
	?currc <- (current_cell (row ?crow) (col ?ccol))
	?nextc <- (cell (row =(- ?crow 1)) (col ?ccol))
	(cell (row ?crow) (col ?ccol) (contents ~x) (north ~0))
	(cell (row =(- ?crow 1)) (col ?ccol) (contents o|E)(searched ~2&~1))
=>
	(printout t "moving up" crlf)
	(modify ?nextc (searched 1)(contents *))
	(modify ?currc (row =(- ?crow 1)))
	(bind ?*distance* (+ ?*distance* 1))
	(bind ?*adistance* (+ ?*adistance* 1))
)


(defrule movedownagain
	(declare (salience -1))
	?currc <- (current_cell (row ?crow) (col ?ccol))
	?tcell <- (cell (row ?crow) (col ?ccol) (searched 1))
	(cell (row ?crow) (col ?ccol) (contents ~x) (south ~0))
	(cell (row =(+ ?crow 1)) (col ?ccol) (contents ~x) (searched 1))
=>
	(printout t "tracking back down" crlf)
	(modify ?currc (row =(+ ?crow 1)))
	(modify ?tcell (searched 2)(contents .))
	(bind ?*distance* (- ?*distance* 1))
	(bind ?*adistance* (+ ?*adistance* 1))
)

(defrule moveupagain
	(declare (salience -1))
	?currc <- (current_cell (row ?crow) (col ?ccol))
	?tcell <- (cell (row ?crow) (col ?ccol) (searched 1))
	(cell (row ?crow) (col ?ccol) (contents ~x) (north ~0))
	(cell (row =(- ?crow 1)) (col ?ccol) (contents ~x) (searched 1))
=>
	(printout t "tracking back up" crlf)
	(modify ?currc (row =(- ?crow 1)))
	(modify ?tcell (searched 2)(contents .))
	(bind ?*distance* (- ?*distance* 1))
	(bind ?*adistance* (+ ?*adistance* 1))
)

(defrule moverightagain
	(declare (salience -1))
	?currc <- (current_cell (row ?crow) (col ?ccol))
	?tcell <- (cell (row ?crow) (col ?ccol) (searched 1))
	(cell (row ?crow) (col ?ccol) (contents ~x) (east ~0))
	(cell (row ?crow) (col =(+ ?ccol 1)) (contents ~x) (searched 1))
=>
	(printout t "tracking back right" crlf)
	(modify ?currc (col =(+ ?ccol 1)))
	(modify ?tcell (searched 2)(contents .))
	(bind ?*distance* (- ?*distance* 1))
	(bind ?*adistance* (+ ?*adistance* 1))
)

(defrule moveleftagain
	(declare (salience -1))
	?currc <- (current_cell (row ?crow) (col ?ccol))
	?tcell <- (cell (row ?crow) (col ?ccol) (searched 1))
	(cell (row ?crow) (col ?ccol) (contents ~x) (west ~0))
	(cell (row ?crow) (col =(- ?ccol 1)) (contents ~x) (searched 1))
=>
	(printout t "tracking back left" crlf)
	(modify ?currc (col =(- ?ccol 1)))
	(modify ?tcell (searched 2)(contents .))
	(bind ?*distance* (- ?*distance* 1))
	(bind ?*adistance* (+ ?*adistance* 1))
)





(defrule move-no-more
	(declare (salience -40))
	?currc <- (current_cell (row ?crow) (col ?ccol))
	(or(cell (row =(+ ?crow -1)) (col ?ccol) (searched 2))(cell (row =(+ ?crow 1)) (col ?ccol) (searched 2))(cell (row ?crow) (col =(+ ?ccol -1))(searched 2))(cell (row ?crow) (col =(+ ?ccol  1))(searched 2)))
	(cell (row 1) (col 1) (contents ?c11))
   (cell (row 1) (col 2) (contents ?c12))
   (cell (row 1) (col 3) (contents ?c13))
   (cell (row 1) (col 4) (contents ?c14))
   (cell (row 1) (col 5) (contents ?c15))
   (cell (row 1) (col 6) (contents ?c16))
   (cell (row 1) (col 7) (contents ?c17))
   (cell (row 1) (col 8) (contents ?c18))
   (cell (row 1) (col 9) (contents ?c19))
   (cell (row 1) (col 10) (contents ?c110))
   (cell (row 1) (col 11) (contents ?c111))
   (cell (row 2) (col 1) (contents ?c21))
   (cell (row 2) (col 2) (contents ?c22))
   (cell (row 2) (col 3) (contents ?c23))
   (cell (row 2) (col 4) (contents ?c24))
   (cell (row 2) (col 5) (contents ?c25))
   (cell (row 2) (col 6) (contents ?c26))
   (cell (row 2) (col 7) (contents ?c27))
   (cell (row 2) (col 8) (contents ?c28))
   (cell (row 2) (col 9) (contents ?c29))
   (cell (row 2) (col 10) (contents ?c210))
   (cell (row 2) (col 11) (contents ?c211))
   (cell (row 3) (col 1) (contents ?c31))
   (cell (row 3) (col 2) (contents ?c32))
   (cell (row 3) (col 3) (contents ?c33))
   (cell (row 3) (col 4) (contents ?c34))
   (cell (row 3) (col 5) (contents ?c35))
   (cell (row 3) (col 6) (contents ?c36))
   (cell (row 3) (col 7) (contents ?c37))
   (cell (row 3) (col 8) (contents ?c38))
   (cell (row 3) (col 9) (contents ?c39))
   (cell (row 3) (col 10) (contents ?c310))
   (cell (row 3) (col 11) (contents ?c311))
   (cell (row 4) (col 1) (contents ?c41))
   (cell (row 4) (col 2) (contents ?c42))
   (cell (row 4) (col 3) (contents ?c43))
   (cell (row 4) (col 4) (contents ?c44))
   (cell (row 4) (col 5) (contents ?c45))
   (cell (row 4) (col 6) (contents ?c46))
   (cell (row 4) (col 7) (contents ?c47))
   (cell (row 4) (col 8) (contents ?c48))
   (cell (row 4) (col 9) (contents ?c49))
   (cell (row 4) (col 10) (contents ?c410))
   (cell (row 4) (col 11) (contents ?c411))
   (cell (row 5) (col 1) (contents ?c51))
   (cell (row 5) (col 2) (contents ?c52))
   (cell (row 5) (col 3) (contents ?c53))
   (cell (row 5) (col 4) (contents ?c54))
   (cell (row 5) (col 5) (contents ?c55))
   (cell (row 5) (col 6) (contents ?c56))
   (cell (row 5) (col 7) (contents ?c57))
   (cell (row 5) (col 8) (contents ?c58))
   (cell (row 5) (col 9) (contents ?c59))
   (cell (row 5) (col 10) (contents ?c510))
   (cell (row 5) (col 11) (contents ?c511))
   (cell (row 6) (col 1) (contents ?c61))
   (cell (row 6) (col 2) (contents ?c62))
   (cell (row 6) (col 3) (contents ?c63))
   (cell (row 6) (col 4) (contents ?c64))
   (cell (row 6) (col 5) (contents ?c65))
   (cell (row 6) (col 6) (contents ?c66))
   (cell (row 6) (col 7) (contents ?c67))
   (cell (row 6) (col 8) (contents ?c68))
   (cell (row 6) (col 9) (contents ?c69))
   (cell (row 6) (col 10) (contents ?c610))
   (cell (row 6) (col 11) (contents ?c611))
   (cell (row 7) (col 1) (contents ?c71))
   (cell (row 7) (col 2) (contents ?c72))
   (cell (row 7) (col 3) (contents ?c73))
   (cell (row 7) (col 4) (contents ?c74))
   (cell (row 7) (col 5) (contents ?c75))
   (cell (row 7) (col 6) (contents ?c76))
   (cell (row 7) (col 7) (contents ?c77))
   (cell (row 7) (col 8) (contents ?c78))
   (cell (row 7) (col 9) (contents ?c79))
   (cell (row 7) (col 10) (contents ?c710))
   (cell (row 7) (col 11) (contents ?c711))
   (cell (row 8) (col 1) (contents ?c81))
   (cell (row 8) (col 2) (contents ?c82))
   (cell (row 8) (col 3) (contents ?c83))
   (cell (row 8) (col 4) (contents ?c84))
   (cell (row 8) (col 5) (contents ?c85))
   (cell (row 8) (col 6) (contents ?c86))
   (cell (row 8) (col 7) (contents ?c87))
   (cell (row 8) (col 8) (contents ?c88))
   (cell (row 8) (col 9) (contents ?c89))
   (cell (row 8) (col 10) (contents ?c810))
   (cell (row 8) (col 11) (contents ?c811))
   (cell (row 9) (col 1) (contents ?c91))
   (cell (row 9) (col 2) (contents ?c92))
   (cell (row 9) (col 3) (contents ?c93))
   (cell (row 9) (col 4) (contents ?c94))
   (cell (row 9) (col 5) (contents ?c95))
   (cell (row 9) (col 6) (contents ?c96))
   (cell (row 9) (col 7) (contents ?c97))
   (cell (row 9) (col 8) (contents ?c98))
   (cell (row 9) (col 9) (contents ?c99))
   (cell (row 9) (col 10) (contents ?c910))
   (cell (row 9) (col 11) (contents ?c911))
   (cell (row 10) (col 1) (contents ?c101))
   (cell (row 10) (col 2) (contents ?c102))
   (cell (row 10) (col 3) (contents ?c103))
   (cell (row 10) (col 4) (contents ?c104))
   (cell (row 10) (col 5) (contents ?c105))
   (cell (row 10) (col 6) (contents ?c106))
   (cell (row 10) (col 7) (contents ?c107))
   (cell (row 10) (col 8) (contents ?c108))
   (cell (row 10) (col 9) (contents ?c109))
   (cell (row 10) (col 10) (contents ?c1010))
   (cell (row 10) (col 11) (contents ?c1011))
   (cell (row 11) (col 1) (contents ?c1101))
   (cell (row 11) (col 2) (contents ?c1102))
   (cell (row 11) (col 3) (contents ?c1103))
   (cell (row 11) (col 4) (contents ?c1104))
   (cell (row 11) (col 5) (contents ?c1105))
   (cell (row 11) (col 6) (contents ?c1106))
   (cell (row 11) (col 7) (contents ?c1107))
   (cell (row 11) (col 8) (contents ?c1108))
   (cell (row 11) (col 9) (contents ?c1109))
   (cell (row 11) (col 10) (contents ?c1110))
   (cell (row 11) (col 11) (contents ?c1111))
=>
	(printout t "No solution to maze" crlf)
	(printout t crlf ?c11  ?c12  ?c13 ?c14 ?c15 ?c16 ?c17 ?c18 ?c19 ?c110 ?c111 crlf ?c21 ?c22 ?c23 ?c24 ?c25 ?c26 ?c27 ?c28 ?c29 ?c210 ?c211 crlf ?c31  ?c32  ?c33 ?c34 ?c35 ?c36 ?c37 ?c38 ?c39 ?c310 ?c311 crlf ?c41  ?c42  ?c43 ?c44 ?c45 ?c46 ?c47 ?c48 ?c49 ?c410 ?c411 crlf 	?c51  ?c52  ?c53 ?c54 ?c55 ?c56 ?c57 ?c58 ?c59 ?c510 ?c511 crlf ?c61  ?c62  ?c63 ?c64 ?c65 ?c66 ?c67 ?c68 ?c69 ?c610 ?c611 crlf ?c71  ?c72  ?c73 ?c74 ?c75 ?c76 ?c77 ?c78 ?c79 ?c710 ?c711 crlf ?c81  ?c82  ?c83 ?c84 ?c85 ?c86 ?c87 ?c88 ?c89 ?c810 ?c811 crlf ?c91  ?c92  ?c93 ?c94 ?c95 ?c96 ?c97 ?c98 ?c99 ?c910 ?c911 crlf ?c101  ?c102  ?c103 ?c104 ?c105 ?c106 ?c107 ?c108 ?c109 ?c1010 ?c1011 crlf ?c1101  ?c1102  ?c1103 ?c1104 ?c1105 ?c1106 ?c1107 ?c1108 ?c1109 ?c1110 ?c1111 crlf)
	(halt)
	)
	







(defrule evalsalience
	(declare (salience 20))
	(start_end_cells (startr ?sr) (startc ?sc) (finishr ?fr) (finishc ?fc))
	=>
	(if (< ?sr ?fr)
	then
	(bind ?*down* 2))
	(if (> ?sr ?fr)
	then
	(bind ?*up* 2))
	(if (< ?sc ?fc)
	then
	(bind ?*right* 2))
	(if (> ?sc ?fc)
	then
	(bind ?*left* 2)))



(defrule ended 
	(declare (salience 30))
	(start_end_cells (finishr ?fr) (finishc ?fc))
	(current_cell (row ?fr) (col ?fc))
	(cell (row 1) (col 1) (contents ?c11))
   (cell (row 1) (col 2) (contents ?c12))
   (cell (row 1) (col 3) (contents ?c13))
   (cell (row 1) (col 4) (contents ?c14))
   (cell (row 1) (col 5) (contents ?c15))
   (cell (row 1) (col 6) (contents ?c16))
   (cell (row 1) (col 7) (contents ?c17))
   (cell (row 1) (col 8) (contents ?c18))
   (cell (row 1) (col 9) (contents ?c19))
   (cell (row 1) (col 10) (contents ?c110))
   (cell (row 1) (col 11) (contents ?c111))
   (cell (row 2) (col 1) (contents ?c21))
   (cell (row 2) (col 2) (contents ?c22))
   (cell (row 2) (col 3) (contents ?c23))
   (cell (row 2) (col 4) (contents ?c24))
   (cell (row 2) (col 5) (contents ?c25))
   (cell (row 2) (col 6) (contents ?c26))
   (cell (row 2) (col 7) (contents ?c27))
   (cell (row 2) (col 8) (contents ?c28))
   (cell (row 2) (col 9) (contents ?c29))
   (cell (row 2) (col 10) (contents ?c210))
   (cell (row 2) (col 11) (contents ?c211))
   (cell (row 3) (col 1) (contents ?c31))
   (cell (row 3) (col 2) (contents ?c32))
   (cell (row 3) (col 3) (contents ?c33))
   (cell (row 3) (col 4) (contents ?c34))
   (cell (row 3) (col 5) (contents ?c35))
   (cell (row 3) (col 6) (contents ?c36))
   (cell (row 3) (col 7) (contents ?c37))
   (cell (row 3) (col 8) (contents ?c38))
   (cell (row 3) (col 9) (contents ?c39))
   (cell (row 3) (col 10) (contents ?c310))
   (cell (row 3) (col 11) (contents ?c311))
   (cell (row 4) (col 1) (contents ?c41))
   (cell (row 4) (col 2) (contents ?c42))
   (cell (row 4) (col 3) (contents ?c43))
   (cell (row 4) (col 4) (contents ?c44))
   (cell (row 4) (col 5) (contents ?c45))
   (cell (row 4) (col 6) (contents ?c46))
   (cell (row 4) (col 7) (contents ?c47))
   (cell (row 4) (col 8) (contents ?c48))
   (cell (row 4) (col 9) (contents ?c49))
   (cell (row 4) (col 10) (contents ?c410))
   (cell (row 4) (col 11) (contents ?c411))
   (cell (row 5) (col 1) (contents ?c51))
   (cell (row 5) (col 2) (contents ?c52))
   (cell (row 5) (col 3) (contents ?c53))
   (cell (row 5) (col 4) (contents ?c54))
   (cell (row 5) (col 5) (contents ?c55))
   (cell (row 5) (col 6) (contents ?c56))
   (cell (row 5) (col 7) (contents ?c57))
   (cell (row 5) (col 8) (contents ?c58))
   (cell (row 5) (col 9) (contents ?c59))
   (cell (row 5) (col 10) (contents ?c510))
   (cell (row 5) (col 11) (contents ?c511))
   (cell (row 6) (col 1) (contents ?c61))
   (cell (row 6) (col 2) (contents ?c62))
   (cell (row 6) (col 3) (contents ?c63))
   (cell (row 6) (col 4) (contents ?c64))
   (cell (row 6) (col 5) (contents ?c65))
   (cell (row 6) (col 6) (contents ?c66))
   (cell (row 6) (col 7) (contents ?c67))
   (cell (row 6) (col 8) (contents ?c68))
   (cell (row 6) (col 9) (contents ?c69))
   (cell (row 6) (col 10) (contents ?c610))
   (cell (row 6) (col 11) (contents ?c611))
   (cell (row 7) (col 1) (contents ?c71))
   (cell (row 7) (col 2) (contents ?c72))
   (cell (row 7) (col 3) (contents ?c73))
   (cell (row 7) (col 4) (contents ?c74))
   (cell (row 7) (col 5) (contents ?c75))
   (cell (row 7) (col 6) (contents ?c76))
   (cell (row 7) (col 7) (contents ?c77))
   (cell (row 7) (col 8) (contents ?c78))
   (cell (row 7) (col 9) (contents ?c79))
   (cell (row 7) (col 10) (contents ?c710))
   (cell (row 7) (col 11) (contents ?c711))
   (cell (row 8) (col 1) (contents ?c81))
   (cell (row 8) (col 2) (contents ?c82))
   (cell (row 8) (col 3) (contents ?c83))
   (cell (row 8) (col 4) (contents ?c84))
   (cell (row 8) (col 5) (contents ?c85))
   (cell (row 8) (col 6) (contents ?c86))
   (cell (row 8) (col 7) (contents ?c87))
   (cell (row 8) (col 8) (contents ?c88))
   (cell (row 8) (col 9) (contents ?c89))
   (cell (row 8) (col 10) (contents ?c810))
   (cell (row 8) (col 11) (contents ?c811))
   (cell (row 9) (col 1) (contents ?c91))
   (cell (row 9) (col 2) (contents ?c92))
   (cell (row 9) (col 3) (contents ?c93))
   (cell (row 9) (col 4) (contents ?c94))
   (cell (row 9) (col 5) (contents ?c95))
   (cell (row 9) (col 6) (contents ?c96))
   (cell (row 9) (col 7) (contents ?c97))
   (cell (row 9) (col 8) (contents ?c98))
   (cell (row 9) (col 9) (contents ?c99))
   (cell (row 9) (col 10) (contents ?c910))
   (cell (row 9) (col 11) (contents ?c911))
   (cell (row 10) (col 1) (contents ?c101))
   (cell (row 10) (col 2) (contents ?c102))
   (cell (row 10) (col 3) (contents ?c103))
   (cell (row 10) (col 4) (contents ?c104))
   (cell (row 10) (col 5) (contents ?c105))
   (cell (row 10) (col 6) (contents ?c106))
   (cell (row 10) (col 7) (contents ?c107))
   (cell (row 10) (col 8) (contents ?c108))
   (cell (row 10) (col 9) (contents ?c109))
   (cell (row 10) (col 10) (contents ?c1010))
   (cell (row 10) (col 11) (contents ?c1011))
   (cell (row 11) (col 1) (contents ?c1101))
   (cell (row 11) (col 2) (contents ?c1102))
   (cell (row 11) (col 3) (contents ?c1103))
   (cell (row 11) (col 4) (contents ?c1104))
   (cell (row 11) (col 5) (contents ?c1105))
   (cell (row 11) (col 6) (contents ?c1106))
   (cell (row 11) (col 7) (contents ?c1107))
   (cell (row 11) (col 8) (contents ?c1108))
   (cell (row 11) (col 9) (contents ?c1109))
   (cell (row 11) (col 10) (contents ?c1110))
   (cell (row 11) (col 11) (contents ?c1111))
=>
	(printout t "The End :row "?fr " col " ?fc crlf)
	(printout t "number of steps moved is " ?*adistance* crlf)
	(printout t "shortest distance is " ?*distance* crlf)
	(printout t crlf ?c11  ?c12  ?c13 ?c14 ?c15 ?c16 ?c17 ?c18 ?c19 ?c110 ?c111 crlf ?c21 ?c22 ?c23 ?c24 ?c25 ?c26 ?c27 ?c28 ?c29 ?c210 ?c211 crlf ?c31  ?c32  ?c33 ?c34 ?c35 ?c36 ?c37 ?c38 ?c39 ?c310 ?c311 crlf ?c41  ?c42  ?c43 ?c44 ?c45 ?c46 ?c47 ?c48 ?c49 ?c410 ?c411 crlf 	?c51  ?c52  ?c53 ?c54 ?c55 ?c56 ?c57 ?c58 ?c59 ?c510 ?c511 crlf ?c61  ?c62  ?c63 ?c64 ?c65 ?c66 ?c67 ?c68 ?c69 ?c610 ?c611 crlf ?c71  ?c72  ?c73 ?c74 ?c75 ?c76 ?c77 ?c78 ?c79 ?c710 ?c711 crlf ?c81  ?c82  ?c83 ?c84 ?c85 ?c86 ?c87 ?c88 ?c89 ?c810 ?c811 crlf ?c91  ?c92  ?c93 ?c94 ?c95 ?c96 ?c97 ?c98 ?c99 ?c910 ?c911 crlf ?c101  ?c102  ?c103 ?c104 ?c105 ?c106 ?c107 ?c108 ?c109 ?c1010 ?c1011 crlf ?c1101  ?c1102  ?c1103 ?c1104 ?c1105 ?c1106 ?c1107 ?c1108 ?c1109 ?c1110 ?c1111 crlf)
	(halt)	
)



