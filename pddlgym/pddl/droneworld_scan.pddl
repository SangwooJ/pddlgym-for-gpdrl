(define (domain droneworld_scan)
  (:requirements :strips :typing)

(:types
    unit
    position
    direction
)
  
(:predicates
    (at ?u - unit ?p - position)
    (drone-to ?dir - direction)
    (safe-at ?p - position)
    (adjacent-north ?from - position ?to - position)
    (adjacent-south ?from - position ?to - position)
    (adjacent-east ?from - position ?to - position)
    (adjacent-west ?from - position ?to - position)
    (scanned ?u - unit)
)

(:constants
    north - direction
    south - direction
    east - direction
    west - direction
    drone - unit
)

(:action heading-north-forward
    :parameters (?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (safe-at ?to)
                    (drone-to north)
                    (adjacent-north ?from ?to)
                  )
    :effect (and 
             (not (at drone ?from))
             (at drone ?to)
            )
)

(:action heading-south-forward
    :parameters (?from - position ?to - position)
    :precondition (and 
                   (drone-to south)
                   (at drone ?from)
                   (safe-at ?to)
                    (adjacent-south ?from ?to)
                  )
    :effect (and 
             (not (at drone ?from))
             (at drone ?to)
            )
)

(:action heading-east-forward
    :parameters (?from - position ?to - position)
    :precondition (and 
                   (drone-to east)
                   (at drone ?from)
                   (safe-at ?to)
                    (adjacent-east ?from ?to)
                  )
    :effect (and 
             (not (at drone ?from))
             (at drone ?to)
            )
)

(:action heading-west-forward
    :parameters (?from - position ?to - position )
    :precondition (and 
                   (at drone ?from)
                   (safe-at ?to)
                     (drone-to west) 
                     (adjacent-west ?from ?to)
                   )
    :effect (and 
             (not (at drone ?from))
             (at drone ?to)
            )
)

(:action heading-north-left
    :parameters (?from - position ?to - position)
    :precondition (and 
                   (at drone ?from)
                   (drone-to north)
                   (adjacent-west ?from ?to)
                   (safe-at ?to)
                  )
    :effect (and 
             (not (drone-to north))
             (drone-to west)
             (not (at drone ?from))
             (at drone ?to)
            )
)

(:action heading-south-left
    :parameters (?from - position ?to - position)
    :precondition (and 
                   (at drone ?from)
                   (drone-to south)
                   (adjacent-east ?from ?to)
                   (safe-at ?to)
                  )
    :effect (and 
             (not (drone-to south))
             (drone-to east)
             (not (at drone ?from))
             (at drone ?to)
            )
)
(:action heading-east-left
    :parameters (?from - position ?to - position )
    :precondition (and 
                   (at drone ?from)
                   (drone-to east)
                   (adjacent-north ?from ?to)
                   (safe-at ?to)
                  )
    :effect (and 
             (not (drone-to east))
             (drone-to north)
             (not (at drone ?from))
             (at drone ?to)
            )
)
(:action heading-west-left
    :parameters (?from - position ?to - position)
    :precondition (and 
                   (at drone ?from)
                   (drone-to west)
                   (adjacent-south ?from ?to)
                   (safe-at ?to)
                  )
    :effect (and 
             (not (drone-to west))
             (drone-to south)
             (not (at drone ?from))
             (at drone ?to)
            )
)

(:action heading-north-right
    :parameters (?from - position ?to - position)
    :precondition (and 
                   (at drone ?from)
                   (drone-to north)
                   (adjacent-east ?from ?to)
                   (safe-at ?to)
                  )
    :effect (and 
             (not (drone-to north))
             (drone-to east)
             (not (at drone ?from))
             (at drone ?to)
            )
)

(:action heading-south-right
    :parameters (?from - position ?to - position)
    :precondition (and 
                   (at drone ?from)
                   (drone-to south)
                   (adjacent-west ?from ?to)
                   (safe-at ?to)
                  )
    :effect (and 
             (not (drone-to south))
             (drone-to west)
             (not (at drone ?from))
             (at drone ?to)
            )
)
(:action heading-east-right
    :parameters (?from - position ?to - position )
    :precondition (and 
                   (at drone ?from)
                   (drone-to east)
                   (adjacent-south ?from ?to)
                   (safe-at ?to)
                  )
    :effect (and 
             (not (drone-to east))
             (drone-to south)
             (not (at drone ?from))
             (at drone ?to)
            )
)
(:action heading-west-right
    :parameters (?from - position ?to - position)
    :precondition (and 
                   (at drone ?from)
                   (drone-to west)
                   (adjacent-north ?from ?to)
                   (safe-at ?to)
                  )
    :effect (and 
             (not (drone-to west))
             (drone-to north)
             (not (at drone ?from))
             (at drone ?to)
            )
)


(:action scan-north-forward
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to north)
                    (adjacent-north ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-east-forward
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to east)
                    (adjacent-east ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-south-forward
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to south)
                    (adjacent-south ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)
(:action scan-west-forward
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to west)
                    (adjacent-west ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-north-left
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to north)
                    (adjacent-west ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-east-left
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to east)
                    (adjacent-north ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-south-left
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to south)
                    (adjacent-east ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-west-left
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to west)
                    (adjacent-south ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-north-right
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to north)
                    (adjacent-east ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-east-right
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to east)
                    (adjacent-south ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

(:action scan-south-right
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to south)
                    (adjacent-west ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)(:action scan-west-right
    :parameters (?target - unit ?from - position ?to - position)
    :precondition (and 
                    (at drone ?from)
                    (drone-to west)
                    (adjacent-north ?from ?to)
                    (at ?target ?to)
    )
    :effect (and 
                (scanned ?target)
    )
)

)