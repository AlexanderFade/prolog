%����(_�������,_�������,_������_��_������)
:-dynamic(����/3).
����('������',15,��������).
����('������',33,��_��������).
����('������',40,��_��������).
�����(�������,������(1)):-�������<18.
�����(�������,������(2)):-�������>=18.

���������_������(����):-assert(����).

������_��������(����(�������,�������,������_��_������)):-
	����(�������,�������,������_��_������),�����(�������,�����),
	write(����(�������,�������,�����,������_��_������)),nl,fail.
������_��������(_).

���������_������(����):-retractall(����).

������_��_������(����(�������,�������)):-
	retract(����(�������,�������,��_��������)),
	assert(����(�������,�������,��������)).


����������_�������(���,������):-
	retractall(�������(���,_)),
	assert(�������(���,������)).

���������_�������(���,�������):-
	retract(�������(���,��������)),
	�����_�������� is ��������+�������,
	assert(�������(���,�����_��������)).

��������_�������(���,��������):-
	retract(�������(���,��������)).

�������_������(����(�������,�������,������_��_������),_):-
	����������_�������(�����_������,0),
	����(�������,�������,������_��_������),
	���������_�������(�����_������,1),fail.

�������_������(_,�������):-
	��������_�������(�����_������,�������).



����:-repeat,
	nl,nl,write(' ����'),nl,
	write('1. �������� � ������ �����.'),nl,
	write('2. ��������� ���������� ������.'),nl,
	write('3. �������� ������ � ����� �����.'),nl,
	write('0. �����'),nl,nl,
	write('������� ����� ������ ���� '),
	read(�),
	����������(�).

����������(0):-!.
����������(�):-�����(�),fail.

�����(1):-nl,write('������ �����:'),nl,������_��������(_),!.

�����(2):-nl,�������_������(����(_,_,_),�����),
	write('���������� ������ ����� = '),
	write(�����),nl,!.

�����(3):-nl,write('������� ������ ������ ����� ����� '),nl,
	write('������� '),read(�������),
	write('������� '),read(�������),
	write('������� �� ������ ������ '),read(������_��_������),
	���������_������(����(�������,�������,������_��_������)),!.

�����(_):-write('����� ����� �����������!'),nl,!.

