likes('Ellen', tennis).%Ellen likes tennis.
likes('John', football).%John likes football.
likes('Tom', baseball).%Tom likes baseball.
likes('Tom', swimming).%Tom likes swimming.
likes('Mark', tennis).%Mark likes tennis.
likes('Bill', X):-likes('Tom', X). % Bill likes what Tom likes.
likes('Ellen', reading).%����� likes reading.
likes('Mark', computers).%���� likes computers.
likes('John', badminton).%���� likes badminton.
likes('Tom', reading).%���� likes reading.
typeOfSport('badminton').%badminton - ��� ��� ������.
typeOfSport('tennis').%tennis - ��� ��� ������.
typeOfSport('football').%football - ��� ��� ������.
typeOfSport('�������').%������� - ��� ��� ������.
sportsman(X):-typeOfSport(S),likes(X, S).% sportsmen - ��� ���, ��� likes �����-������ ��� ������.
