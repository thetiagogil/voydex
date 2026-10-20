const listFormat = new Intl.ListFormat("en", {
  style: "long",
  type: "conjunction",
});

/*
 * What a game switch would drop, in words: "3 aren't in Emerald and will be
 * removed: Gloom, Pikachu and Onix." One reads as "Gloom isn't in Emerald
 * and will be removed."
 */
export const describePlannerSwitchLoss = (
  names: readonly string[],
  versionGroupName: string,
) =>
  names.length === 1
    ? `${names[0]} isn't in ${versionGroupName} and will be removed from the team.`
    : `${names.length} of the team aren't in ${versionGroupName} and will be removed: ${listFormat.format(names)}.`;

/*
 * The planned Pokémon a version group can have: those in its Pokédexes. A
 * Plan opened in another group (after a game switch, a draft or a shared
 * link) keeps only these.
 */
export const keepPlannerMembersInGroup = <T extends { speciesId: number }>(
  members: readonly T[],
  sections: readonly { speciesIds: readonly number[] }[],
) => {
  const inGroup = new Set(sections.flatMap((section) => section.speciesIds));

  return members.filter((member) => inGroup.has(member.speciesId));
};
