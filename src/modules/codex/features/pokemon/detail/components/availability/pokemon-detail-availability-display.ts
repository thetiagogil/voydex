import type {
  Game,
  PokemonAvailabilitySummary,
  VersionGroup,
} from "@/modules/reference/types";

const getAvailabilityContentVersionGroup = (
  availability: PokemonAvailabilitySummary,
) => {
  return availability.sourceVersionGroup ?? availability.targetVersionGroup;
};

export const getPokemonDetailAvailabilityContentLabel = ({
  activeGame,
  availability,
  activeVersionGroup,
}: {
  activeGame: Game | null;
  availability: PokemonAvailabilitySummary;
  activeVersionGroup: VersionGroup | null;
}) => {
  const contentVersionGroup = getAvailabilityContentVersionGroup(availability);

  if (!contentVersionGroup) {
    return "Current scope";
  }

  if (activeGame && contentVersionGroup.id === activeGame.version_group_id) {
    return availability.game?.name ?? activeGame.name;
  }

  if (
    activeVersionGroup &&
    contentVersionGroup.id === activeVersionGroup.id &&
    !activeVersionGroup.parent_version_group_id
  ) {
    return availability.game?.name ?? contentVersionGroup.name;
  }

  return contentVersionGroup.name;
};

export const getPokemonDetailAvailabilityContentGame = ({
  activeGame,
  activeVersionGroup,
  availability,
}: {
  activeGame: Game | null;
  activeVersionGroup: VersionGroup | null;
  availability: PokemonAvailabilitySummary;
}) => {
  const contentVersionGroup = getAvailabilityContentVersionGroup(availability);

  if (!contentVersionGroup) {
    return null;
  }

  if (activeGame && contentVersionGroup.id === activeGame.version_group_id) {
    return availability.game ?? activeGame;
  }

  if (
    availability.game &&
    activeVersionGroup &&
    contentVersionGroup.id === activeVersionGroup.id &&
    !activeVersionGroup.parent_version_group_id
  ) {
    return availability.game;
  }

  return null;
};

export const getPokemonDetailAvailabilityMethodLabel = (
  availability: PokemonAvailabilitySummary,
) => {
  return availability.method?.name ?? "Available";
};

export const getPokemonDetailAvailabilityDetails = (
  availability: PokemonAvailabilitySummary,
) => {
  return (
    availability.availability.notes ??
    availability.method?.description ??
    "No additional details recorded."
  );
};

export const getPokemonDetailAvailabilityKey = (
  availability: PokemonAvailabilitySummary,
  index: number,
) => {
  return [
    availability.availability.id,
    availability.availability.target_version_group_id,
    availability.availability.source_version_group_id,
    availability.availability.game_id,
    availability.availability.form_id,
    index,
  ]
    .filter((value) => value !== null)
    .join("-");
};
