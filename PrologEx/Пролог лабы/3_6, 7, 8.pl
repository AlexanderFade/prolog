/* ================== 3_6 ================= */
/* fib1 - без накопителей, fib2 - с. */
fib1(N, A):-fib1(N, A, _).
fib1(N, P1, P2):-
	N>1,
	N1 is N-1,
	fib1(N1, PP1, PP2),
	P1 is PP1+PP2,
	P2 is PP1.
fib1(1, 1, 0).

fib2(N, FIB):-fib2(N, FIB, 1, 1, 0).
fib2(N, FIB, I, PR1, PR2):-
	I<N,
	I1 is I+1,
	FIB1 is PR1+PR2,
	fib2(N, FIB, I1, FIB1, PR1).
fib2(N, FIB, N, FIB, _).

/* =================== 3_7 =============== */
chet(X):-F is X mod 2, F == 0.
nechet(X):-not(chet(X)).

/* Суммы считаются по четности/нечетности индекса, а не значения числа */
sum_chet(N, A):-sum_chet(N, A, 0, 0).
sum_chet(N, A, I, SUM):-
	I<N,
	I1 is I + 1,
/* меняем I1 на FIBNUM и будет считать по значению числа, а не по индексу. */
	fib1(I1, FIBNUM),
	( chet(I1) -> SUM1 is SUM + FIBNUM ; SUM1 is SUM ),
	sum_chet(N, A, I1, SUM1).
sum_chet(N, A, N, A).

sum_nechet(N, A):-sum_nechet(N, A, 0, 0).
sum_nechet(N, A, I, SUM):-
	I<N,
	I1 is I + 1,
/* меняем I1 на FIBNUM и будет считать по значению числа, а не по индексу. */
	fib1(I1, FIBNUM),
	( nechet(I1) -> SUM1 is SUM + FIBNUM ; SUM1 is SUM ),
	sum_nechet(N, A, I1, SUM1).
sum_nechet(N, A, N, A).

/* ================== 3_8 =============== */

/* ЧОТКИЕ числа */
check_num1(NUM, N):-check_num1(NUM, N, 0, 0).
check_num1(NUM, N, ANS, I):-
	ANS =< NUM,
	I1 is I+1,
	sum_chet(I1, ANS1),
	( ANS1 == NUM -> ANS2 is NUM+1,
	write('Yep, this is a sum of EVEN Fibonacci numbers!'); ANS2 is ANS1 ),
	check_num1(NUM, N, ANS2, I1).
check_num1(_, N, _, N).

/* НИЧОТКИЕ числа */
check_num2(NUM, N):-check_num2(NUM, N, 0, 0).
check_num2(NUM, N, ANS, I):-
	ANS =< NUM,
	I1 is I+1,
	sum_nechet(I1, ANS1),
	( ANS1 == NUM -> ANS2 is NUM+1,
	write('Yep, this is a sum of ODD Fibonacci numbers!'); ANS2 is ANS1 ),
	check_num2(NUM, N, ANS2, I1).
check_num2(_, N, _, N).

/* :3 */
