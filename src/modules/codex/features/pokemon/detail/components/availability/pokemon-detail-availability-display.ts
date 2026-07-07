import type {
  Game,
  PokemonAvailabilitySummary,
  VersionGroup,
} from "@/modules/codex/shared/types";
import { getGameCoverImageUrl } from "@/shared/domain/games/game-images";

const getAvailabilityContentVersionGroup = (
  availability: PokemonAvailabilitySummary,
) => {
  return availability.sourceVersionGroup ?? availability.targetVersionGroup;
};

const getAvailabilityMediaInitials = (label: string) => {
  const words = label.match(/[A-Za-z0-9]+/g) ?? [];
  const relevantWords = words.filter((word) => {
    return !["pokemon", "the"].includes(word.toLowerCase());
  });
  const initialsSource = relevantWords.length ? relevantWords : words;

  if (!initialsSource.length) {
    return label.slice(0, 1).toUpperCase();
  }

  return initialsSource
    .slice(0, 2)
    .map((word) => word.slice(0, 1))
    .join("")
    .toUpperCase();
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

export const getPokemonDetailAvailabilityContentMedia = ({
  activeGame,
  availability,
}: {
  activeGame: Game | null;
  availability: PokemonAvailabilitySummary;
}) => {
  const contentVersionGroup = getAvailabilityContentVersionGroup(availability);
  const isDlcContent = Boolean(contentVersionGroup?.parent_version_group_id);

  if (isDlcContent && contentVersionGroup) {
    return {
      imageUrl: null,
      initials: getAvailabilityMediaInitials(contentVersionGroup.name),
      label: contentVersionGroup.name,
    };
  }

  const game = availability.game ?? activeGame;

  if (game) {
    return {
      imageUrl: getGameCoverImageUrl(game),
      initials: getAvailabilityMediaInitials(game.name),
      label: game.name,
    };
  }

  const label = contentVersionGroup?.name ?? "Current scope";

  return {
    imageUrl: null,
    initials: getAvailabilityMediaInitials(label),
    label,
  };
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
