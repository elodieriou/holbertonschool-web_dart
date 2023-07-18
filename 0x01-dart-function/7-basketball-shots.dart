int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = calculatePointsByTeam(teamA);
  int teamBPoints = calculatePointsByTeam(teamB);

  if (teamAPoints > teamBPoints) return 1;
  else if (teamAPoints < teamBPoints) return 2;
  else return 0;
}

int calculatePointsByTeam(Map<String, int> team) {
  int totalPoints = 0;

  team.entries.forEach((item) {
    int index = team.keys.toList().indexOf(item.key);
    int factor = index + 1;
    totalPoints += item.value * factor;
  });

  return totalPoints;
}
