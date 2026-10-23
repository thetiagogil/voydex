/*
 * What kind of form a Pokémon form is. A variant is a different Pokémon you
 * catch and keep, chosen when it is added (Hisuian Arcanine); a form is one
 * it switches to and back on a Play (Rotom, the Therian Formes, Arceus); a
 * battle form exists only in battle (Mega, Gigantamax). A default form has
 * no class of its own: it belongs with the species' other stored forms.
 */
export const formClasses = ["variant", "form", "battle"] as const;

export type FormClass = (typeof formClasses)[number];

export const isFormClass = (value: unknown): value is FormClass =>
  formClasses.includes(value as FormClass);

/* The heading a form menu groups each class under. */
export const formClassHeadings: Record<FormClass, string> = {
  battle: "Battle forms",
  form: "Forms",
  variant: "Variants",
};

/*
 * Each form's class, the default taking the class of the species' other
 * stored forms: Rotom heads its forms, Meowth its variants, and Charizard,
 * whose other forms are all battle forms, has none.
 */
export const resolveFormClasses = <Form extends { id: number }>(
  forms: readonly Form[],
  classById: ReadonlyMap<number, FormClass>,
): Map<number, FormClass | null> => {
  const stored = forms.flatMap((form) => {
    const formClass = classById.get(form.id);

    return formClass && formClass !== "battle" ? [formClass] : [];
  });
  const defaultClass = stored.includes("variant")
    ? "variant"
    : stored.includes("form")
      ? "form"
      : null;

  return new Map(
    forms.map((form) => [form.id, classById.get(form.id) ?? defaultClass]),
  );
};
