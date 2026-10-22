export const gameMechanics = {
  abilities: "abilities",
  /* Eggs, the Day Care and egg groups. */
  breeding: "breeding",
  heldItems: "held-items",
  natures: "natures",
  pokemonGender: "pokemon-gender",
  /*
   * Battle mechanics: each one exists only in the exact games listed in
   * `supportedVersionGroupIdsByMechanic`, never generation-wide.
   */
  dynamax: "dynamax",
  megaEvolution: "mega-evolution",
  primalReversion: "primal-reversion",
  terastal: "terastal",
  ultraBurst: "ultra-burst",
  zMoves: "z-moves",
} as const;

export type GameMechanic = (typeof gameMechanics)[keyof typeof gameMechanics];

export type GameMechanicSupport = "supported" | "unsupported" | "unknown";

export type GameMechanicsContext = {
  gameId: number | null;
  generationId: number | null;
  versionGroupId: number | null;
};

export type GameMechanicsProfile = {
  context: GameMechanicsContext;
  support: Record<GameMechanic, GameMechanicSupport>;
};

const introducedGenerationByMechanic = {
  [gameMechanics.abilities]: 3,
  [gameMechanics.breeding]: 2,
  [gameMechanics.heldItems]: 2,
  [gameMechanics.natures]: 3,
  [gameMechanics.pokemonGender]: 2,
  [gameMechanics.dynamax]: 8,
  [gameMechanics.megaEvolution]: 6,
  [gameMechanics.primalReversion]: 6,
  [gameMechanics.terastal]: 9,
  [gameMechanics.ultraBurst]: 7,
  [gameMechanics.zMoves]: 7,
} satisfies Record<GameMechanic, number>;

/*
 * The battle mechanics a player's own Pokémon can use, by the exact games
 * (seeded version group ids) that have them: X / Y (13), Omega Ruby / Alpha
 * Sapphire (14), Sun / Moon (15), Ultra Sun / Ultra Moon (16), Let's Go
 * (17), Sword / Shield (18) with The Isle of Armor (19) and The Crown Tundra
 * (20), Scarlet / Violet (23) with The Teal Mask (24) and The Indigo Disk
 * (25), and Legends: Z-A (26) with Mega Dimension (27). A game outside its
 * list doesn't have it, even within the generation that introduced it.
 */
const supportedVersionGroupIdsByMechanic: Partial<
  Record<GameMechanic, ReadonlySet<number>>
> = {
  [gameMechanics.dynamax]: new Set([18, 19, 20]),
  [gameMechanics.megaEvolution]: new Set([13, 14, 15, 16, 17, 26, 27]),
  [gameMechanics.primalReversion]: new Set([14, 15, 16, 27]),
  [gameMechanics.terastal]: new Set([23, 24, 25]),
  [gameMechanics.ultraBurst]: new Set([16]),
  [gameMechanics.zMoves]: new Set([15, 16]),
};

/*
 * Exact-title exceptions, by the seeded version group id (an expansion such
 * as Mega Dimension has its own id, so it is listed beside its base game).
 * The Let's Go games (17) and both Legends games, Arceus (22) and Z-A (26,
 * Mega Dimension 27), have no abilities and no eggs or Day Care. Let's Go and
 * Legends: Arceus also have no held items (Let's Go keeps Mega Stones in the
 * bag); Legends: Z-A has them, its Mega Stones included.
 */
const letsGoVersionGroupIds = [17];
const legendsArceusVersionGroupIds = [22];
const legendsZaVersionGroupIds = [26, 27];

const unsupportedVersionGroupIdsByMechanic: Partial<
  Record<GameMechanic, ReadonlySet<number>>
> = {
  [gameMechanics.abilities]: new Set([
    ...letsGoVersionGroupIds,
    ...legendsArceusVersionGroupIds,
    ...legendsZaVersionGroupIds,
  ]),
  [gameMechanics.breeding]: new Set([
    ...letsGoVersionGroupIds,
    ...legendsArceusVersionGroupIds,
    ...legendsZaVersionGroupIds,
  ]),
  [gameMechanics.heldItems]: new Set([
    ...letsGoVersionGroupIds,
    ...legendsArceusVersionGroupIds,
  ]),
};

const allGameMechanics = Object.values(gameMechanics);

const mapGameMechanics = (
  resolve: (mechanic: GameMechanic) => GameMechanicSupport,
): Record<GameMechanic, GameMechanicSupport> => {
  return Object.fromEntries(
    allGameMechanics.map((mechanic) => [mechanic, resolve(mechanic)]),
  ) as Record<GameMechanic, GameMechanicSupport>;
};

const isPositiveInteger = (value: number | null): value is number => {
  return value !== null && Number.isInteger(value) && value > 0;
};

const resolveMechanicSupport = (
  context: GameMechanicsContext,
  mechanic: GameMechanic,
): GameMechanicSupport => {
  if (
    !isPositiveInteger(context.gameId) ||
    !isPositiveInteger(context.generationId) ||
    !isPositiveInteger(context.versionGroupId)
  ) {
    return "unknown";
  }

  if (
    unsupportedVersionGroupIdsByMechanic[mechanic]?.has(context.versionGroupId)
  ) {
    return "unsupported";
  }

  const supportedVersionGroupIds = supportedVersionGroupIdsByMechanic[mechanic];

  if (supportedVersionGroupIds) {
    return supportedVersionGroupIds.has(context.versionGroupId)
      ? "supported"
      : "unsupported";
  }

  return context.generationId >= introducedGenerationByMechanic[mechanic]
    ? "supported"
    : "unsupported";
};

/**
 * Resolves mechanics from one exact game context.
 *
 * The initial mechanics are generation-wide, but callers still provide the
 * game and version group so future exact-title exceptions can remain owned by
 * this reference-domain boundary instead of leaking into product modules.
 */
export const resolveGameMechanics = (
  context: GameMechanicsContext,
): GameMechanicsProfile => {
  return {
    context,
    support: mapGameMechanics((mechanic) => {
      return resolveMechanicSupport(context, mechanic);
    }),
  };
};

/*
 * Why a game lacks a mechanic, to say so plainly: it comes in a later
 * generation (abilities in Generation III), or this title leaves it out (no
 * abilities in Let's Go). Null when the mechanic is supported or unknown.
 */
export type GameMechanicAbsence =
  | { introducedGeneration: number; kind: "later-generation" }
  | { kind: "not-in-game" };

export const getGameMechanicAbsence = (
  profile: GameMechanicsProfile,
  mechanic: GameMechanic,
): GameMechanicAbsence | null => {
  if (profile.support[mechanic] !== "unsupported") {
    return null;
  }

  const introducedGeneration = introducedGenerationByMechanic[mechanic];
  const { generationId } = profile.context;

  return generationId !== null && generationId < introducedGeneration
    ? { introducedGeneration, kind: "later-generation" }
    : { kind: "not-in-game" };
};

export const getGameMechanicSupport = (
  profile: GameMechanicsProfile,
  mechanic: GameMechanic,
): GameMechanicSupport => {
  return profile.support[mechanic];
};

export const supportsGameMechanic = (
  profile: GameMechanicsProfile,
  mechanic: GameMechanic,
): boolean => {
  return getGameMechanicSupport(profile, mechanic) === "supported";
};

/**
 * Resolves mechanics for a whole version group, such as a Codex entry read in
 * Sword and Shield. Each game in the group is resolved exactly; a mechanic is
 * supported or unsupported only when every game agrees, and unknown otherwise
 * or when the group has no games.
 */
export const resolveVersionGroupMechanics = ({
  gameIds,
  generationId,
  versionGroupId,
}: {
  gameIds: number[];
  generationId: number | null;
  versionGroupId: number | null;
}): GameMechanicsProfile => {
  const profiles = gameIds.map((gameId) => {
    return resolveGameMechanics({ gameId, generationId, versionGroupId });
  });
  const resolveAgreedSupport = (
    mechanic: GameMechanic,
  ): GameMechanicSupport => {
    const [first, ...rest] = profiles.map((profile) => {
      return profile.support[mechanic];
    });

    return first && rest.every((support) => support === first)
      ? first
      : "unknown";
  };

  return {
    context: { gameId: null, generationId, versionGroupId },
    support: mapGameMechanics(resolveAgreedSupport),
  };
};
