import {
  toPlanRoleSlug,
  type PlanRoleSlug,
} from "@/modules/mainline/features/plans/planner/data/plan-roles";

/*
 * A Plan as a link (v3's Share): the version group, the six Pokémon and
 * their roles. It lives in the link's hash, so sharing never changes a
 * saved Plan, and importing opens it as a new unsaved Plan.
 */
export type PlanShare = {
  slots: ({ role: PlanRoleSlug | null; species: string } | null)[];
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
      s: share.slots.map((slot) =>
        slot ? (slot.role ? [slot.species, slot.role] : [slot.species]) : 0,
      ),
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

      const [species, role] = slot as unknown[];

      return typeof species === "string" && slugPattern.test(species)
        ? {
            role: toPlanRoleSlug(role),
            species,
          }
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

/* The Planner's six slots as a share: each Pokémon by slug, with its role. */
export const toPlanShare = (
  slots: ({ role: PlanRoleSlug | null; speciesId: number } | null)[],
  speciesSlugById: Map<number, { speciesSlug: string }>,
  versionGroupSlug: string,
): PlanShare => ({
  slots: slots.map((member) => {
    const pokemon = member ? speciesSlugById.get(member.speciesId) : undefined;
    return pokemon
      ? { role: member?.role ?? null, species: pokemon.speciesSlug }
      : null;
  }),
  versionGroupSlug,
});
