�����('Ellen', ������).% Ellen ����� ������.
�����('John', ������).% John ����� ������.
�����('Tom', �������).% Tom ����� �������.
�����('Erik', ��������). % Erik ����� ��������.
�����('Mark', ������).% Mark ����� ������.
�����('Bill', X):-�����('Tom', X). % Bill ����� what Tom �����
�����('Ellen', ������).% ����� ����� ������.
�����('Mark', ����������).% ���� ����� ����������.
�����('John', ���������).% ���� ����� ���������.
�����('Erik', ������).% ���� ����� ������.
���_������('���������').% ��������� - ��� ��� ������.
���_������('������').% ������ - ��� ��� ������.
���_������('������').% ������ - ��� ��� ������.
���_������('�������').% ������� - ��� ��� ������
���������(X):-�����(X, S), ���_������(S).% ��������� - ��� ���, ��� ����� �����-������ ��� ������.