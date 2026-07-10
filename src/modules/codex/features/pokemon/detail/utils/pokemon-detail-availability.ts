import type { PokemonDetailGameAvailabilityKind } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonGenerationFormSummary,
  VersionGroup,
} from "@/modules/reference/types";

type PokemonGameAvailabilityStatus = {
  description?: string;
  kind: PokemonDetailGameAvailabilityKind;
};

const formatDlcNames = (dlcNames: string[]) => {
  if (dlcNames.length <= 2) {
    return dlcNames.join(" or ");
  }

  return `${dlcNames.slice(0, -1).join(", ")}, or ${dlcNames.at(-1)}`;
};

const getPokemonAvailabilityVersionGroups = (
  row: PokemonAvailabilitySummary,
): VersionGroup[] => {
  return [row.sourceVersionGroup, row.targetVersionGroup].filter(
    (versionGroup): versionGroup is VersionGroup => versionGroup !== null,
  );
};

const getDlcNamesForGame = (row: PokemonAvailabilitySummary, game: Game) => {
  return getPokemonAvailabilityVersionGroups(row)
    .filter((versionGroup) => {
      return versionGroup.parent_version_group_id === game.version_group_id;
    })
    .map((versionGroup) => versionGroup.name);
};

export const doesPokemonAvailabilityMatchForm = (
  row: PokemonAvailabilitySummary,
  form: PokemonGenerationFormSummary | null,
) => {
  if (!form) {
    return true;
  }

  if (!row.availability.form_id) {
    return form.form.is_default;
  }

  return row.availability.form_id === form.form.id;
};

export const doesPokemonAvailabilityMatchGame = (
  row: PokemonAvailabilitySummary,
  game: Game,
) => {
  return !row.game || row.game.id === game.id;
};

export const isPokemonAvailabilityInVersionGroupScope = (
  row: PokemonAvailabilitySummary,
  versionGroup: PokemonDetailVersionGroupScope,
) => {
  return getPokemonAvailabilityVersionGroups(row).some((availabilityScope) => {
    return (
      availabilityScope.id === versionGroup.versionGroup.id ||
      availabilityScope.parent_version_group_id === versionGroup.versionGroup.id
    );
  });
};

export const getPokemonGameAvailabilityStatus = ({
  availability,
  form,
  game,
}: {
  availability: PokemonAvailabilitySummary[];
  form: PokemonGenerationFormSummary | null;
  game: Game;
}): PokemonGameAvailabilityStatus => {
  const matchingRows = availability.filter((row) => {
    return (
      doesPokemonAvailabilityMatchForm(row, form) &&
      doesPokemonAvailabilityMatchGame(row, game)
    );
  });
  const baseRows = matchingRows.filter((row) => {
    const versionGroups = getPokemonAvailabilityVersionGroups(row);
    const isBaseGameAvailability = versionGroups.some((versionGroup) => {
      return versionGroup.id === game.version_group_id;
    });
    const isDlcAvailability = versionGroups.some((versionGroup) => {
      return versionGroup.parent_version_group_id === game.version_group_id;
    });

    return isBaseGameAvailability && !isDlcAvailability;
  });

  if (baseRows.length) {
    return {
      kind: "available",
    };
  }

  const dlcNames = [
    ...new Set(
      matchingRows.flatMap((row) => {
        return getDlcNamesForGame(row, game);
      }),
    ),
  ];

  if (dlcNames.length) {
    return {
      description: `This Pokémon is only available through ${formatDlcNames(
        dlcNames,
      )} DLC for ${game.name}, not the base game.`,
      kind: "dlc",
    };
  }

  return {
    kind: "unavailable",
  };
};
