move((step(P1, onfloor, P2, H), walk(P1, P2), step(P2, onfloor, P2, H))).
move((step(P2, onfloor, P2, H), drag(P2, P3), step(P3, onfloor, P3, H))).
move((step(P3, onfloor, P3, H), climb, step(P3, onbox, P3, H))).
move((step(P3, onbox, P3, hasnot), grab, step(P3, onbox, P3, has))).

canget(step(_, _, _, has)).
canget(N):-

    move((N)),
    canget(N).
