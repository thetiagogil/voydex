/*
 * The planned Pokémon a version group can have: those in its Pokédexes. A
 * Plan opened in another group (a draft, a shared link, a link to another
 * game) keeps only these.
 */
export const keepPlannerMembersInGroup = <T extends { speciesId: number }>(
  members: readonly T[],
  sections: readonly { speciesIds: readonly number[] }[],
) => {
  const inGroup = new Set(sections.flatMap((section) => section.speciesIds));

  return members.filter((member) => inGroup.has(member.speciesId));
};
