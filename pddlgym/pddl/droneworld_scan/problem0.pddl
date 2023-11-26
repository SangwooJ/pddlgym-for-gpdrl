(define (problem drone)(:domain droneworld_scan)
	(:objects
		north - direction
		east - direction
		south - direction
		west - direction
		drone - unit
		target-1 - unit
		pos-1-1 - position
		pos-1-2 - position
		pos-1-3 - position
		pos-1-4 - position
		pos-2-1 - position
		pos-2-2 - position
		pos-2-3 - position
		pos-2-4 - position
		pos-3-1 - position
		pos-3-2 - position
		pos-3-3 - position
		pos-3-4 - position
		pos-4-1 - position
		pos-4-2 - position
		pos-4-3 - position
		pos-4-4 - position
	)
	(:init
		(at drone pos-2-1)
		(drone-to south)
;		(threat-at pos-3-2)
		(at target-1 pos-2-2)
		(safe-at pos-1-1)
		(safe-at pos-1-2)
		(safe-at pos-1-3)
		(safe-at pos-1-4)
		(safe-at pos-2-1)
		(safe-at pos-2-2)
		(safe-at pos-2-3)
		(safe-at pos-2-4)
		(safe-at pos-3-1)
		(safe-at pos-3-3)
		(safe-at pos-3-4)
		(safe-at pos-4-1)
		(safe-at pos-4-2)
		(safe-at pos-4-3)
		(safe-at pos-4-4)
		(adjacent-north pos-1-1 pos-1-2)
		(adjacent-east pos-1-1 pos-2-1)
		(adjacent-north pos-1-2 pos-1-3)
		(adjacent-east pos-1-2 pos-2-2)
		(adjacent-south pos-1-2 pos-1-1)
		(adjacent-north pos-1-3 pos-1-4)
		(adjacent-east pos-1-3 pos-2-3)
		(adjacent-south pos-1-3 pos-1-2)
		(adjacent-east pos-1-4 pos-2-4)
		(adjacent-south pos-1-4 pos-1-3)
		(adjacent-north pos-2-1 pos-2-2)
		(adjacent-east pos-2-1 pos-3-1)
		(adjacent-west pos-2-1 pos-1-1)
		(adjacent-north pos-2-2 pos-2-3)
		(adjacent-east pos-2-2 pos-3-2)
		(adjacent-south pos-2-2 pos-2-1)
		(adjacent-west pos-2-2 pos-1-2)
		(adjacent-north pos-2-3 pos-2-4)
		(adjacent-east pos-2-3 pos-3-3)
		(adjacent-south pos-2-3 pos-2-2)
		(adjacent-west pos-2-3 pos-1-3)
		(adjacent-east pos-2-4 pos-3-4)
		(adjacent-south pos-2-4 pos-2-3)
		(adjacent-west pos-2-4 pos-1-4)
		(adjacent-north pos-3-1 pos-3-2)
		(adjacent-east pos-3-1 pos-4-1)
		(adjacent-west pos-3-1 pos-2-1)
		(adjacent-north pos-3-2 pos-3-3)
		(adjacent-east pos-3-2 pos-4-2)
		(adjacent-south pos-3-2 pos-3-1)
		(adjacent-west pos-3-2 pos-2-2)
		(adjacent-north pos-3-3 pos-3-4)
		(adjacent-east pos-3-3 pos-4-3)
		(adjacent-south pos-3-3 pos-3-2)
		(adjacent-west pos-3-3 pos-2-3)
		(adjacent-east pos-3-4 pos-4-4)
		(adjacent-south pos-3-4 pos-3-3)
		(adjacent-west pos-3-4 pos-2-4)
		(adjacent-north pos-4-1 pos-4-2)
		(adjacent-west pos-4-1 pos-3-1)
		(adjacent-north pos-4-2 pos-4-3)
		(adjacent-south pos-4-2 pos-4-1)
		(adjacent-west pos-4-2 pos-3-2)
		(adjacent-north pos-4-3 pos-4-4)
		(adjacent-south pos-4-3 pos-4-2)
		(adjacent-west pos-4-3 pos-3-3)
		(adjacent-south pos-4-4 pos-4-3)
		(adjacent-west pos-4-4 pos-3-4)
	)
	(:goal (and
		(at drone pos-3-4)
		(scanned target-1)
	)
	))