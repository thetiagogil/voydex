import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

/* One Pokémon of the team saved with a milestone when it was recorded. */
export type PlayTeamSnapshotMember = {
  formName: string | null;
  imageUrl: string | null;
  isShiny: boolean;
  position: number;
  speciesName: string;
};

type UnknownRecord = Record<string, unknown>;

const isRecord = (value: unknown): value is UnknownRecord =>
  Boolean(value) && typeof value === "object" && !Array.isArray(value);

const toText = (value: unknown) =>
  typeof value === "string" && value.trim() ? value : null;

/*
 * A timeline event's `team_snapshots`, in team order. Entries without a
 * position or a species are dropped; a shiny Pokémon gets its shiny art.
 */
export const parsePlayTeamSnapshot = (
  value: unknown,
): PlayTeamSnapshotMember[] => {
  if (!Array.isArray(value)) {
    return [];
  }

  return value
    .flatMap((member) => {
      if (!isRecord(member)) {
        return [];
      }

      const position = Number(member.position);
      const speciesName = toText(member.species_name);
      const formName = toText(member.form_name);
      const isShiny = member.is_shiny === true;

      if (!Number.isFinite(position) || !speciesName) {
        return [];
      }

      const imageForm = {
        name: formName ?? speciesName,
        sprite_slug: toText(member.sprite_slug),
      };

      return [
        {
          formName,
          imageUrl: isShiny
            ? getPokemonFormShinyImageUrl(imageForm)
            : getPokemonFormImageUrl(imageForm),
          isShiny,
          position,
          speciesName,
        },
      ];
    })
    .sort((first, second) => first.position - second.position);
};

/* How a snapshot Pokémon is named: its form, and whether it was shiny. */
export const getPlayTeamSnapshotMemberName = (member: PlayTeamSnapshotMember) =>
  `${member.formName ?? member.speciesName}${member.isShiny ? ", shiny" : ""}`;
