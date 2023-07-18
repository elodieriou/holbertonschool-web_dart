int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = calculatePointsByTeam(teamA);
  int teamBPoints = calculatePointsByTeam(teamB);

  if (teamAPoints > teamBPoints) return 1;
  else if (teamAPoints < teamBPoints) return 2;
  else return 0;
}

int calculatePointsByTeam(Map<String, int> team) {
  int freeThrows = team['Free throws'] ?? 0;
  int twoPointers = team['2 pointer'] ?? 0;
  int threePointers = team['3 pointer'] ?? 0;

  return (freeThrows * 1) + (twoPointers * 2) + (threePointers * 3);
}
