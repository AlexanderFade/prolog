���(1,1).
���(2,1).
���(�����,�����):-�����>2,�����1 is �����-1,�����2 is �����1-1,���(�����1,�����1),���(�����2,�����2),����� is �����1+�����2.

�����(�����,�����):-�������(�����,�����,2,1,1).
�������(�����,�����,I,���1,���2):-�����>1,I<�����,I1 is I+1,���3 is ���1+���2,���4 is ���1,�������(�����,�����,I1,���3,���4).
�������(�����,�����,�����,�����,_).
�������(1,1,2,1,1).


����(�����,�����):-������(�����,�����,0).
������(�����,�����,�����1):-�����>0,I is �����-1,�����(�����,�����),M is ����� mod 2,M == 0,�����2 is �����1+�����,������(I,�����,�����2);�����>0,I2 is �����-1,�����(�����,�����),M is ����� mod 2,M \== 0,������(I2,�����,�����1).
������(0,�����,�����).



��������_�����(�����,N):-�������������_�����(�����,N,0).
�������������_�����(�����,N,I):-����(I,�����),����� < �����,I1 is I+1,�������������_�����(�����,N,I1);����(I,�����),����� == �����, N is I.