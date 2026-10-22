/* Drops the forms a Pokémon only takes in battle, keeping the order. */
export const withoutBattleForms = <Form extends { id: number }>(
  forms: readonly Form[],
  battleFormIds: ReadonlySet<number>,
): Form[] => forms.filter((form) => !battleFormIds.has(form.id));
