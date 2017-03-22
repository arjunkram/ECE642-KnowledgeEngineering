;;fuzzy clips 6.10 version is used
(deftemplate voltage ;;definition of fuzzy variable 'voltage'
0 10 ;universe
( (very_low (0 1)(1.5 0.5)(2.5 0) )
(low (0 0)(1.5 0.5)(2.5 1)(3.5 0.5)(5 0))
(medium (2.5 0)(3.5 0.5)(5 1)(6.5 0.5)(7.5 0))
(high(5 0)(6.5 0.5)(7.5 1)(8.5 0.5)(10 0))
(very_high (s 7.5 10)))
)

(deftemplate temperature ;;definition of fuzzy variable 'temperature'
30 100 ;universe
( (below_normal (30 1)(42.5 0.5)(53 0) )
(normal(30 0)(42.5 0.5)(53 1)(67.5 0.5)(76 0))
(over_heating(53 0)(67.5 0.5)(76 1)(88.5 0.5)(100 0))
(very_hot(76 0)(88.5 0.5)(100 1)))
)


(deftemplate warning ;;definition of fuzzy variable 'warnings'
0 10 ;universe
( (no_problem (0 0.5)(0.12 1)(0.25 0.5)(0.38 0) )
(caution(0.12 0)(0.25 0.5)(0.38 1)(0.5 0.5)(0.62 0))
(possible_problem(0.38 0)(0.5 0.5)(0.62 1)(0.75 0.5)(0.88 0))
(imminent_problem(0.62 0)(0.75 0.5)(0.88 1)(1 0.5)))
)


;;defining rules starts here
(defrule rule1
(voltage very_low)
(or(temperature below_normal)(temperature normal)(temperature over_heating))
=>
 (assert(warning no_problem))
)




(defrule rule2
(voltage very_low)
(temperature very_hot)
=>
(assert(warning caution))

)


(defrule rule3
(voltage low)
(or(temperature below_normal)(temperature normal))
=>
(assert(warning no_problem))

)


(defrule rule4
(voltage low)
(temperature over_heating)
=>
(assert(warning caution))

)

(defrule rule5
(voltage low)
(temperature very_hot)
=>
(assert(warning possible_problem))
)

(defrule rule6
(voltage medium)
(temperature below_normal)
=>
(assert(warning no_problem))
)


(defrule rule7
(voltage medium)
(temperature normal)
=>
(assert(warning caution))
)


(defrule rule8
(voltage medium)
(or(temperature over_heating)(temperature very_hot))
=>
(assert(warning possible_problem))
)




(defrule rule9
(voltage high)
(temperature below_normal)
=>
(assert(warning caution))
)

(defrule rule10
(voltage high)
(or(temperature normal)(temperature over_heating))
=>
(assert(warning possible_problem))
)



(defrule rule11
(voltage high)
(temperature very_hot)
=>
(assert(warning imminent_problem))
)


(defrule rule12
(voltage very_high)
(or(temperature below_normal)(temperature normal)
)
=>
(assert(warning possible_problem))
)



(defrule rule14
(voltage very_high)
(or(temperature over_heating)(temperature very_hot))
=>
(assert(warning imminent_problem))
)




;;get crisp input
(defrule getTemperatureandVoltage
   (declare (salience 100))
   =>
   (printout t "Enter temperature:(30-100) " crlf)
   (bind ?t (read))
   (assert (crisptemp ?t))
(printout t "Enter voltage:(0-10) "crlf)
(bind ?t (read))
(assert (crispvolt ?t))
)

;;fuzzify the crisp inputs
(defrule FuzzifyTemperatureandVoltage
   (crisptemp ?a)
(crispvolt ?b)
   =>
(bind ?t1 (- ?a 0))
   (bind ?t2 (+ ?a 0))
(bind ?t3 (- ?b 0))
   (bind ?t4 (+ ?b 0))
   (assert (temperature (?t1 0) (?a 1) (?t2 0)))
(assert(voltage(?t3 0)(?b 1)(?t4 0)))
)


;;showing the  defuzzified output
(defrule answer
(declare(salience -100))
(warning ?aa)

=>

(bind ?aa2 (moment-defuzzify ?aa ))
(printout t crlf "Harmonic Distortion is " (moment-defuzzify ?aa)crlf)
(if (< ?aa2 0.25)
then
(printout t "Harmonic distortion causes no problem" crlf))
(if (and(> ?aa2 0.25)(< ?aa2 0.5))
then
(printout t "caution,Harmonic distortion might cause problem" crlf))
(if (and(> ?aa2 0.5)(< ?aa2 0.75))
then
(printout t "possible problem might be caused by harmonic distortion" crlf))
(if (> ?aa2 0.75)
then
(printout t "Imminent problems,check system" crlf))
)


