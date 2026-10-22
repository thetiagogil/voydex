/*
 * The mechanics that put a Pokémon in a battle form, as
 * `reference.pokemon_form_rules.battle_mechanic` names them, and the exact
 * games (by seeded version group id) that have each one. `in-battle` forms
 * (Zen Mode, Blade Forme, School Form and the like) come from an ability,
 * move or held item, so they exist in every game that has the Pokémon.
 */
export const battleMechanics = {
  dynamax: "dynamax",
  inBattle: "in-battle",
  megaEvolution: "mega-evolution",
  primalReversion: "primal-reversion",
  ultraBurst: "ultra-burst",
} as const;

export type BattleMechanic =
  (typeof battleMechanics)[keyof typeof battleMechanics];

/*
 * X / Y (13), Omega Ruby / Alpha Sapphire (14), Sun / Moon (15), Ultra Sun /
 * Ultra Moon (16), Let's Go (17) and Legends: Z-A (26) with Mega Dimension
 * (27) have Mega Evolution; Sword / Shield (18) and its expansions (19, 20)
 * have Dynamax. Primal Reversion needs the Red or Blue Orb, which Let's Go
 * and Legends: Z-A leave out; Ultra Burst is Ultra Sun / Ultra Moon only.
 */
const versionGroupIdsByMechanic: Record<
  Exclude<BattleMechanic, "in-battle">,
  ReadonlySet<number>
> = {
  [battleMechanics.dynamax]: new Set([18, 19, 20]),
  [battleMechanics.megaEvolution]: new Set([13, 14, 15, 16, 17, 26, 27]),
  [battleMechanics.primalReversion]: new Set([14, 15, 16]),
  [battleMechanics.ultraBurst]: new Set([16]),
};

const isBattleMechanic = (value: string): value is BattleMechanic => {
  return Object.values<string>(battleMechanics).includes(value);
};

/*
 * Whether a battle form's mechanic exists in this version group. An unknown
 * mechanic is treated as missing, so a form never shows where it can't be
 * reached.
 */
export const hasBattleMechanic = (
  mechanic: string,
  versionGroupId: number,
): boolean => {
  if (!isBattleMechanic(mechanic)) {
    return false;
  }

  return (
    mechanic === battleMechanics.inBattle ||
    versionGroupIdsByMechanic[mechanic].has(versionGroupId)
  );
};
