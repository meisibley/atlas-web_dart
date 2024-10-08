int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var sumA = 0;
  var sumB = 0;
  teamA.forEach((key, value) {
    if (key == 'Free throws') {
      sumA += value;
    }
    if (key == '2 pointers') {
      sumA += value * 2;
    }
    if (key == '3 pointers')
    {
      sumA += value * 3;
    }
  });
  teamB.forEach((key, value) {
    if (key == 'Free throw') {
      sumB += value;
    }
    if (key == '2 pointers') {
      sumB += value * 2;
    }
    if (key == '3 pointers')
    {
      sumB += value * 3;
    }
  });
  if (sumA > sumB) {
    return 1;
  } else if (sumA < sumB) {
    return 2;
  } else {
    return 0;
  }
}