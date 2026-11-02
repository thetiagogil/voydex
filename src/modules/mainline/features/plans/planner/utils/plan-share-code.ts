/*
 * A Plan as a link (v3's Share): the version group and the six Pokémon, each
 * by its form's slug ("galarian-articuno"; older links carried the species'
 * slug, and some also roles, which are ignored). It lives in the link's hash,
 * so sharing never changes a saved Plan, and importing opens it as a new
 * unsaved Plan.
 */
export type PlanShare = {
  slots: ({ slug: string } | null)[];
  versionGroupSlug: string;
};

const shareKey = "plan";
const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;

const toBase64Url = (text: string) =>
  btoa(String.fromCharCode(...new TextEncoder().encode(text)))
    .replaceAll("+", "-")
    .replaceAll("/", "_")
    .replace(/=+$/, "");

const fromBase64Url = (code: string) => {
  const base64 = code.replaceAll("-", "+").replaceAll("_", "/");
  const binary = atob(base64.padEnd(Math.ceil(base64.length / 4) * 4, "="));

  return new TextDecoder().decode(
    Uint8Array.from(binary, (character) => character.charCodeAt(0)),
  );
};

export const encodePlanShare = (share: PlanShare) =>
  `${shareKey}=${toBase64Url(
    JSON.stringify({
      s: share.slots.map((slot) => (slot ? [slot.slug] : 0)),
      v: share.versionGroupSlug,
    }),
  )}`;

/*
 * Reads a pasted link, its hash or the bare code back into a Plan; null for
 * anything that isn't one.
 */
export const decodePlanShare = (input: string): PlanShare | null => {
  const hashIndex = input.indexOf("#");
  const fragment = hashIndex >= 0 ? input.slice(hashIndex + 1) : input.trim();
  const code = new URLSearchParams(fragment).get(shareKey) ?? fragment;

  try {
    const value = JSON.parse(fromBase64Url(code)) as {
      s?: unknown;
      v?: unknown;
    };

    if (
      typeof value.v !== "string" ||
      !slugPattern.test(value.v) ||
      !Array.isArray(value.s) ||
      value.s.length > 6
    ) {
      return null;
    }

    const slots = value.s.map((slot) => {
      if (!Array.isArray(slot)) return null;

      const [slug] = slot as unknown[];

      return typeof slug === "string" && slugPattern.test(slug)
        ? { slug }
        : null;
    });

    return {
      slots: [...slots, ...Array(6 - slots.length).fill(null)],
      versionGroupSlug: value.v,
    };
  } catch {
    return null;
  }
};

/*
 * What a shared slug opens: by form slug, and by species slug for older
 * links, which open on the species' Pokédex form (the first offered, since
 * the pool lists it first). A form slug always wins over a species slug.
 */
export const toPlannerSlugIndex = <
  Pokemon extends { formSlug: string; speciesSlug: string },
>(
  pokemon: readonly Pokemon[],
): Map<string, Pokemon> => {
  const index = new Map(pokemon.map((entry) => [entry.formSlug, entry]));

  for (const entry of pokemon) {
    if (!index.has(entry.speciesSlug)) index.set(entry.speciesSlug, entry);
  }

  return index;
};

/* The Planner's six slots as a share: each Pokémon by its form's slug. */
export const toPlanShare = (
  slots: ({ formId: number } | null)[],
  byFormId: Map<number, { formSlug: string }>,
  versionGroupSlug: string,
): PlanShare => ({
  slots: slots.map((member) => {
    const pokemon = member ? byFormId.get(member.formId) : undefined;
    return pokemon ? { slug: pokemon.formSlug } : null;
  }),
  versionGroupSlug,
});
