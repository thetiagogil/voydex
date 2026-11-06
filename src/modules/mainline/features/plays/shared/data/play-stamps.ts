import { getBadgeImageUrl } from "@/modules/reference/features/badges/data/badge-images";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Json } from "@/shared/types/database.types";

/*
 * What a gym (or an Alola trial) hands out, as its medallion and stamp wear
 * it: the badge's type, and the badge's own picture. Only a gym badge has a
 * picture; a trial's Z-Crystal keeps its type's icon.
 */
export type MilestoneBadge = {
  imageUrl: string | null;
  type: PokemonTypeSlug;
};

/*
 * One stamp of a Play's badge case or stamp card: a gym badge or an Alola
 * trial's Z-Crystal in its type, or a League milestone in gold. Overview's
 * badge case and Story's stamp card both build these, so a stamp reads the
 * same wherever it shows.
 */
export type PlayStamp = {
  /* A gym's badge or a trial's Z-Crystal; null for the League or an unknown badge. */
  badge: MilestoneBadge | null;
  completedAt: string | null;
  kind: PlayStampKind;
  /*
   * What the stamp card prints under it: "Grass" for the Grass Badge, "Lana"
   * for Lana's trial, "Hala" for his Grand Trial.
   */
  label: string;
  milestoneId: number;
  /* The milestone type, which picks a League stamp's icon. */
  milestoneTypeSlug: string | null;
  name: string;
  state: "earned" | "next" | "todo";
};

export type PlayStampKind = "gym" | "trial" | "grand-trial" | "league";

/*
 * The milestones that earn a typed stamp: every gym, and every Alola trial and
 * Grand Trial that hands out a Z-Crystal (a bonus trial hands out none).
 */
export const getTypedStampKind = (
  typeSlug: string | null | undefined,
  hasBadge: boolean,
): Exclude<PlayStampKind, "league"> | null => {
  if (typeSlug === "gym") {
    return "gym";
  }

  return (typeSlug === "trial" || typeSlug === "grand-trial") && hasBadge
    ? typeSlug
    : null;
};

/* The first badge a milestone refers to that has a type. */
const getFirstTypedBadgeRef = (
  badgeRefs: Json | null,
): { spriteSlug: string | null; typeId: number } | null => {
  if (!Array.isArray(badgeRefs)) {
    return null;
  }

  for (const ref of badgeRefs) {
    if (
      ref &&
      typeof ref === "object" &&
      !Array.isArray(ref) &&
      typeof ref.type_id === "number"
    ) {
      return {
        spriteSlug:
          typeof ref.sprite_slug === "string" ? ref.sprite_slug : null,
        typeId: ref.type_id,
      };
    }
  }

  return null;
};

/* A gym milestone's badge type id: the type of the first badge it refers to. */
export const getMilestoneBadgeTypeId = (badgeRefs: Json | null) =>
  getFirstTypedBadgeRef(badgeRefs)?.typeId ?? null;

/*
 * A milestone's badge from its badge refs: the first badge's type (looked up
 * among the reference types) and, for a gym, the badge's picture. Null when
 * it refers to no badge with a Pokémon type.
 */
export const getMilestoneBadge = ({
  badgeRefs,
  milestoneTypeSlug,
  typeSlugById,
}: {
  badgeRefs: Json | null;
  milestoneTypeSlug: string | null | undefined;
  typeSlugById: ReadonlyMap<number, string>;
}): MilestoneBadge | null => {
  const ref = getFirstTypedBadgeRef(badgeRefs);
  const type = ref ? typeSlugById.get(ref.typeId) : undefined;

  if (!ref || !type || !isPokemonTypeSlug(type)) {
    return null;
  }

  return {
    imageUrl:
      milestoneTypeSlug === "gym" ? getBadgeImageUrl(ref.spriteSlug) : null,
    type,
  };
};

/*
 * What the stamp card prints under a stamp: a badge without its "Badge", a
 * trial by its captain (or place) and a Grand Trial by its kahuna.
 */
export const getPlayStampLabel = (kind: PlayStamp["kind"], name: string) => {
  if (kind === "gym") {
    return name.replace(/ Badge$/, "");
  }

  if (kind === "trial") {
    return name.replace(/ Trial$/, "");
  }

  return kind === "grand-trial" ? name.replace(/^Grand Trial /, "") : name;
};

/* The first stamp not yet earned is the next one. */
export const getPlayStampStates = <TMilestone>(
  milestones: readonly TMilestone[],
  isCompleted: (milestone: TMilestone) => boolean,
): PlayStamp["state"][] => {
  const nextIndex = milestones.findIndex(
    (milestone) => !isCompleted(milestone),
  );

  return milestones.map((milestone, index) =>
    isCompleted(milestone) ? "earned" : index === nextIndex ? "next" : "todo",
  );
};

/* The stamp's name for screen readers: what it is and where it stands. */
export const describePlayStamp = (
  stamp: Pick<PlayStamp, "name" | "state">,
  earnedOn: string | null | undefined,
) => {
  if (stamp.state !== "earned") {
    return `${stamp.name}, ${stamp.state === "next" ? "next" : "not earned yet"}`;
  }

  return `${stamp.name}, earned${earnedOn ? ` ${earnedOn}` : ""}`;
};

/*
 * Milestones recorded together turn one after another, in Story order: each
 * id's place in that order, a `stampStepMs` beat apart.
 */
export type StampOrder = ReadonlyMap<number, number>;

/* The beat between things recorded together. */
export const stampStepMs = 110;

export const createStampOrder = (orderedMilestoneIds: number[]): StampOrder =>
  new Map(orderedMilestoneIds.map((id, index) => [id, index]));
