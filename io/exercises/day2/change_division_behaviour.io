// How would you change / to return 0 if the denominator is zero?

originalDiv := Number getSlot("/")
(10 / 2) println;
(10 / 0) println;

Number / := method(denominator,
    if(denominator == 0, 0, self originalDiv(denominator))
)

(10 / 2) println;
(10 / 0) println;