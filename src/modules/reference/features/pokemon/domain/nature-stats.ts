/* The stats a nature can raise or lower, as the natures table stores them. */
export type NatureStat =
  | "attack"
  | "defense"
  | "special_attack"
  | "special_defense"
  | "speed";

const natureStats: Record<NatureStat, { abbreviation: string; name: string }> =
  {
    attack: { abbreviation: "ATK", name: "Attack" },
    defense: { abbreviation: "DEF", name: "Defense" },
    special_attack: { abbreviation: "SPA", name: "Special Attack" },
    special_defense: { abbreviation: "SPD", name: "Special Defense" },
    speed: { abbreviation: "SPE", name: "Speed" },
  };

const isNatureStat = (stat: string | null): stat is NatureStat =>
  stat !== null && Object.hasOwn(natureStats, stat);

export type NatureEffect =
  | { kind: "neutral" }
  | {
      decreased: { abbreviation: string; name: string };
      increased: { abbreviation: string; name: string };
      kind: "stats";
    };

/*
 * What a nature does to a Pokémon's stats: the one it raises and the one it
 * lowers (as abbreviations, with their full names for a screen reader), or
 * nothing at all for the five neutral natures (Hardy, Docile, Serious,
 * Bashful and Quirky).
 */
export const getNatureEffect = (
  increased: string | null,
  decreased: string | null,
): NatureEffect =>
  isNatureStat(increased) && isNatureStat(decreased)
    ? {
        decreased: natureStats[decreased],
        increased: natureStats[increased],
        kind: "stats",
      }
    : { kind: "neutral" };
