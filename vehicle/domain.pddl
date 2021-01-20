
(define (domain vehicle)
  (:requirements :strips :typing)
  (:types vehicle location fuel-level)
  (:predicates (at ?v - vehicle ?p - location)
               (fuel ?v - vehicle ?f - fuel-level)
               (accessible ?v - vehicle ?p1 ?p2 - location)
               (next ?f1 ?f2 - fuel-level))
  (:action drive
    :parameters (?v - vehicle ?from ?to - location
                   ?fbefore ?fafter - fuel-level)
    :precondition (and (at ?v ?from)
                  (accessible ?v ?from ?to)
                  (fuel ?v ?fbefore)
                  (next ?fbefore ?fafter))
    :effect (and (not (at ?v ?from))
                 (at ?v ?to)
                 (not (fuel ?v ?fbefore))
                 (fuel ?v ?fafter))
  )
)