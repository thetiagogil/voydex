import { getDefensiveTypeMultiplier } from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

/*
 * The games' own battle math, kept to what decides who wins a one-on-one:
 * stats from base stats and level, a hit's expected damage from the damage
 * formula, and how many hits each side needs. It leaves out what Voydex
 * doesn't know about a battle (abilities, items, natures, training, critical
 * hits and the damage roll), so both sides get the same middling IVs and no
 * EVs.
 */

export type BaseStats = {
  attack: number;
  defense: number;
  hp: number;
  specialAttack: number;
  specialDefense: number;
  speed: number;
};

export type BattleAttack = {
  /* Out of 100; null for a move that never misses. */
  accuracy: number | null;
  damageClass: "physical" | "special";
  /* Null when it varies (Low Kick, Gyro Ball). */
  power: number | null;
  /* Null when it stands for a type, not a known move. */
  slug: string | null;
  typeSlug: PokemonTypeSlug;
};

export type Battler = {
  attacks: BattleAttack[];
  baseStats: BaseStats;
  /* Twice its HP while it Dynamaxes. */
  hpMultiplier?: number;
  level: number;
  /* Types that give its moves the same-type bonus: its own, and its Tera Type. */
  stabTypes: PokemonTypeSlug[];
  /* What hits it: its Tera Type once it Terastallizes, else its own types. */
  types: PokemonTypeSlug[];
};

export type Duel = {
  /*
   * How much of your HP beating them costs, as a share of it: 0 when you
   * knock them out before they move, 1 or more when you'd faint first.
   */
  cost: number;
  /* Your best hit's expected damage, as a share of their HP. */
  yourShare: number;
  /* Their best hit's expected damage, as a share of your HP. */
  theirShare: number;
};

/* A move's category as the reading takes it: null for a status move or without one. */
export const toDamageClass = (
  value: string | null | undefined,
): BattleAttack["damageClass"] | null =>
  value === "physical" || value === "special" ? value : null;

/* A Pokémon's base stats as its attributes row stores them. */
export const toBaseStats = (attributes: {
  base_attack: number;
  base_defense: number;
  base_hp: number;
  base_special_attack: number;
  base_special_defense: number;
  base_speed: number;
}): BaseStats => ({
  attack: attributes.base_attack,
  defense: attributes.base_defense,
  hp: attributes.base_hp,
  specialAttack: attributes.base_special_attack,
  specialDefense: attributes.base_special_defense,
  speed: attributes.base_speed,
});

/* Middling IVs (DVs before Gen 3) and no EVs, the same for both sides. */
const IV = 15;

export const getBattleStats = (base: BaseStats, level: number) => {
  const stat = (value: number) =>
    Math.floor(((2 * value + IV) * level) / 100) + 5;

  return {
    attack: stat(base.attack),
    defense: stat(base.defense),
    hp: Math.floor(((2 * base.hp + IV) * level) / 100) + level + 10,
    specialAttack: stat(base.specialAttack),
    specialDefense: stat(base.specialDefense),
    speed: stat(base.speed),
  };
};

/* Before Gen 4 a move is physical or special by its type. */
const physicalTypesBeforeSplit = new Set<PokemonTypeSlug>([
  "bug",
  "fighting",
  "flying",
  "ghost",
  "ground",
  "normal",
  "poison",
  "rock",
  "steel",
]);

export const getTypeDamageClass = (
  typeSlug: PokemonTypeSlug,
  generationOrder: number,
  base: BaseStats,
): BattleAttack["damageClass"] =>
  generationOrder <= 3
    ? physicalTypesBeforeSplit.has(typeSlug)
      ? "physical"
      : "special"
    : base.attack >= base.specialAttack
      ? "physical"
      : "special";

/* The power a move of its own type usually has at a level, for a Pokémon read by its types. */
export const getTypicalPower = (level: number) =>
  Math.min(90, Math.max(40, 30 + level));

/* Moves that knock out their user or need a condition to land. */
const unreliableMoveSlugs = new Set([
  "belch",
  "dream-eater",
  "explosion",
  "fake-out",
  "focus-punch",
  "last-resort",
  "misty-explosion",
  "self-destruct",
  "snore",
]);

/* Moves that take two turns: they charge first or rest after. */
const twoTurnMoveSlugs = new Set([
  "blast-burn",
  "eternabeam",
  "frenzy-plant",
  "giga-impact",
  "hydro-cannon",
  "hyper-beam",
  "meteor-assault",
  "prismatic-laser",
  "razor-wind",
  "roar-of-time",
  "rock-wrecker",
  "skull-bash",
  "sky-attack",
  "solar-beam",
  "solar-blade",
]);

/* What a varying-power move (Low Kick, Gyro Ball) is read as. */
const VARYING_POWER = 60;

/*
 * A hit's expected damage by the damage formula: level, power, the
 * attacker's attacking stat against the defender's defending one, the
 * same-type bonus and type effectiveness, with its accuracy and the average
 * damage roll. A two-turn move counts at half; a move that knocks out its
 * user or needs a condition counts as nothing.
 */
export const getExpectedDamage = ({
  attack,
  attacker,
  defender,
  generationOrder,
}: {
  attack: BattleAttack;
  attacker: Battler;
  defender: Battler;
  generationOrder: number;
}) => {
  if (attack.slug && unreliableMoveSlugs.has(attack.slug)) {
    return 0;
  }

  const attackerStats = getBattleStats(attacker.baseStats, attacker.level);
  const defenderStats = getBattleStats(defender.baseStats, defender.level);
  const [attacking, defending] =
    attack.damageClass === "physical"
      ? [attackerStats.attack, defenderStats.defense]
      : [attackerStats.specialAttack, defenderStats.specialDefense];
  const power =
    (attack.power ?? VARYING_POWER) *
    (attack.slug && twoTurnMoveSlugs.has(attack.slug) ? 0.5 : 1);
  const base =
    (((2 * attacker.level) / 5 + 2) * power * attacking) / defending / 50 + 2;
  const stab = attacker.stabTypes.includes(attack.typeSlug) ? 1.5 : 1;
  const effectiveness = defender.types.length
    ? getDefensiveTypeMultiplier(
        attack.typeSlug,
        defender.types,
        generationOrder,
      )
    : 1;
  /* The damage roll runs from 85% to 100%. */
  const roll = 0.925;

  return base * stab * effectiveness * roll * ((attack.accuracy ?? 100) / 100);
};

/* Its hardest expected hit on the defender, as a share of the defender's HP. */
const getBestShare = (
  attacker: Battler,
  defender: Battler,
  generationOrder: number,
) => {
  const hp =
    getBattleStats(defender.baseStats, defender.level).hp *
    (defender.hpMultiplier ?? 1);

  return Math.max(
    0,
    ...attacker.attacks.map(
      (attack) =>
        getExpectedDamage({ attack, attacker, defender, generationOrder }) / hp,
    ),
  );
};

/*
 * You against one of theirs, each using its hardest hit: how many hits each
 * needs, who moves first by Speed (a tie goes to them), and what knocking
 * them out costs you. A side that can't hurt the other never wins.
 */
export const getDuel = ({
  generationOrder,
  their,
  your,
}: {
  generationOrder: number;
  their: Battler;
  your: Battler;
}): Duel => {
  const yourShare = getBestShare(your, their, generationOrder);
  const theirShare = getBestShare(their, your, generationOrder);

  if (yourShare <= 0) {
    return { cost: theirShare > 0 ? Infinity : 0, theirShare, yourShare };
  }

  const yourHits = Math.ceil(1 / yourShare);
  const isYoursFaster =
    getBattleStats(your.baseStats, your.level).speed >
    getBattleStats(their.baseStats, their.level).speed;
  const theirHits = isYoursFaster ? yourHits - 1 : yourHits;

  return { cost: theirHits * theirShare, theirShare, yourShare };
};
