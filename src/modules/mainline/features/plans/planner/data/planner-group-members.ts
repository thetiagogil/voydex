/*
 * The planned Pokémon a version group can have: the forms its Planner
 * offers. A Plan opened in another group (a draft, a shared link, a link to
 * another game) keeps only these.
 */
export const keepPlannerMembersInGroup = <T extends { formId: number }>(
  members: readonly T[],
  sections: readonly { formIds: readonly number[] }[],
) => {
  const inGroup = new Set(sections.flatMap((section) => section.formIds));

  return members.filter((member) => inGroup.has(member.formId));
};
