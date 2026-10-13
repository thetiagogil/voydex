export const gameMechanics = {
  abilities: "abilities",
  heldItems: "held-items",
  natures: "natures",
  pokemonGender: "pokemon-gender",
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
  [gameMechanics.heldItems]: 2,
  [gameMechanics.natures]: 3,
  [gameMechanics.pokemonGender]: 2,
} satisfies Record<GameMechanic, number>;

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
    support: {
      [gameMechanics.abilities]: resolveMechanicSupport(
        context,
        gameMechanics.abilities,
      ),
      [gameMechanics.heldItems]: resolveMechanicSupport(
        context,
        gameMechanics.heldItems,
      ),
      [gameMechanics.natures]: resolveMechanicSupport(
        context,
        gameMechanics.natures,
      ),
      [gameMechanics.pokemonGender]: resolveMechanicSupport(
        context,
        gameMechanics.pokemonGender,
      ),
    },
  };
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
    support: {
      [gameMechanics.abilities]: resolveAgreedSupport(gameMechanics.abilities),
      [gameMechanics.heldItems]: resolveAgreedSupport(gameMechanics.heldItems),
      [gameMechanics.natures]: resolveAgreedSupport(gameMechanics.natures),
      [gameMechanics.pokemonGender]: resolveAgreedSupport(
        gameMechanics.pokemonGender,
      ),
    },
  };
};
