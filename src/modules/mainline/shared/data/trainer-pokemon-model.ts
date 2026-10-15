import type { TrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";
import type {
  MainlinePlaySummary,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import {
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/reference/reference-data";
import type { Type } from "@/modules/reference/types";

export type TrainerPokemonType = Pick<Type, "name" | "slug">;

/* A Play as the trainer's Pokémon pages name it. */
export type TrainerPlay = {
  gameName: string;
  gameSlug: string | null;
  id: string;
  /* "Sword · Late Journey": the Play where no cover says which game. */
  label: string;
  name: string;
  statusName: string | null;
  statusSlug: string | null;
};

/* One Pokémon on one Play's roster. */
export type TrainerPokemonMember = {
  id: string;
  imageUrl: string | null;
  isShiny: boolean;
  level: number | null;
  name: string;
  /* "On the team", "In reserve", or the roster state's own name. */
  placeLabel: string;
  play: TrainerPlay;
  speciesName: string;
  typeSlug: string | null;
};

/* One species that has joined the trainer's teams, across every Play. */
export type TrainerPokemonEntry = {
  evolutionFamilyId: number | null;
  firstUsedAt: string | null;
  gameNames: string[];
  imageUrl: string | null;
  lastUsedAt: string | null;
  members: TrainerPokemonMember[];
  name: string;
  nationalNumber: number | null;
  onTeamNow: boolean;
  playIds: string[];
  shiny: boolean;
  speciesId: number;
  speciesSlug: string;
  types: TrainerPokemonType[];
};

export const getTrainerPlayLabel = (
  play: Pick<MainlinePlaySummary, "game_name" | "play_name">,
) => {
  const gameName = getGameShortName(play.game_name ?? "Unknown game");

  return `${gameName} · ${play.play_name ?? "Untitled Play"}`;
};

const toTrainerPlay = (play: MainlinePlaySummary): TrainerPlay | null => {
  if (!play.play_id) {
    return null;
  }

  return {
    gameName: play.game_name ?? "Unknown game",
    gameSlug: play.game_slug,
    id: play.play_id,
    label: getTrainerPlayLabel(play),
    name: play.play_name ?? "Untitled Play",
    statusName: play.status_name,
    statusSlug: play.status_slug,
  };
};

const getPlaceLabel = (member: MainlinePlayTeamMember) => {
  if (member.roster_state_slug === "active") return "On the team";
  if (member.roster_state_slug === "reserve") return "In reserve";
  return member.roster_state_name ?? "Left the team";
};

const laterOf = (left: string | null, right: string | null) => {
  if (!left) return right;
  if (!right) return left;
  return right > left ? right : left;
};

const earlierOf = (left: string | null, right: string | null) => {
  if (!left) return right;
  if (!right) return left;
  return right < left ? right : left;
};

/* A form's types in slot order, read from its latest attributes. */
export const createTrainerFormTypeResolver = (
  rows: Pick<TrainerPokemonRows, "attributes" | "types">,
) => {
  const typeById = new Map(rows.types.map((type) => [type.id, type]));
  const attributesByForm = selectLatestAttributes(rows.attributes);

  return (formId: number | null): TrainerPokemonType[] => {
    const pair = resolveTypePair(
      formId === null ? null : (attributesByForm.get(formId) ?? null),
      typeById,
    );

    return [pair.primaryType, pair.secondaryType].flatMap((type) =>
      type ? [{ name: type.name, slug: type.slug }] : [],
    );
  };
};

/*
 * Every species that has joined the trainer's teams: on a roster, in a
 * recorded moment or in a team saved with a milestone. Each entry reads its
 * art and types from the form it was used as most recently.
 */
export const buildTrainerPokemonEntries = (
  rows: TrainerPokemonRows,
): TrainerPokemonEntry[] => {
  const playById = new Map(
    rows.plays.flatMap((play) => {
      const trainerPlay = toTrainerPlay(play);
      return trainerPlay ? [[trainerPlay.id, trainerPlay] as const] : [];
    }),
  );
  const formById = new Map(rows.forms.map((form) => [form.id, form]));
  const getFormTypes = createTrainerFormTypeResolver(rows);

  type Draft = Omit<TrainerPokemonEntry, "gameNames" | "imageUrl" | "types"> & {
    latestFormId: number | null;
    latestFormAt: string | null;
  };
  const drafts = new Map<number, Draft>();
  const getDraft = (use: {
    evolution_family_id: number | null;
    national_number: number | null;
    species_id: number;
    species_name: string | null;
    species_slug: string | null;
  }) => {
    const existing = drafts.get(use.species_id);

    if (existing) {
      return existing;
    }

    const draft: Draft = {
      evolutionFamilyId: use.evolution_family_id,
      firstUsedAt: null,
      lastUsedAt: null,
      latestFormAt: null,
      latestFormId: null,
      members: [],
      name: use.species_name ?? "Unknown Pokémon",
      nationalNumber: use.national_number,
      onTeamNow: false,
      playIds: [],
      shiny: false,
      speciesId: use.species_id,
      speciesSlug: use.species_slug ?? String(use.species_id),
    };

    drafts.set(use.species_id, draft);
    return draft;
  };
  const notePlay = (draft: Draft, playId: string | null) => {
    if (playId && playById.has(playId) && !draft.playIds.includes(playId)) {
      draft.playIds.push(playId);
    }
  };
  const noteForm = (draft: Draft, formId: number | null, at: string | null) => {
    if (formId === null) return;
    if (
      draft.latestFormId === null ||
      (at && at >= (draft.latestFormAt ?? ""))
    ) {
      draft.latestFormId = formId;
      draft.latestFormAt = at;
    }
  };

  for (const use of rows.uses) {
    if (use.species_id === null) continue;

    const draft = getDraft({ ...use, species_id: use.species_id });

    notePlay(draft, use.play_id);
    noteForm(draft, use.form_id, use.used_at);
    draft.firstUsedAt = earlierOf(draft.firstUsedAt, use.used_at);
    draft.lastUsedAt = laterOf(draft.lastUsedAt, use.used_at);
  }

  for (const member of rows.roster) {
    if (member.species_id === null || !member.play_pokemon_id) continue;

    const play = member.play_id ? playById.get(member.play_id) : undefined;

    if (!play) continue;

    const draft = getDraft({ ...member, species_id: member.species_id });
    const types = getFormTypes(member.form_id);

    notePlay(draft, member.play_id);
    noteForm(draft, member.form_id, member.updated_at ?? member.created_at);
    draft.onTeamNow ||= member.roster_state_slug === "active";
    draft.shiny ||= member.is_shiny === true;
    draft.members.push({
      id: member.play_pokemon_id,
      imageUrl: getPlayTeamMemberImageUrl(member),
      isShiny: member.is_shiny === true,
      level: member.level,
      name: getPlayTeamMemberName(member),
      placeLabel: getPlaceLabel(member),
      play,
      speciesName: member.species_name ?? draft.name,
      typeSlug: types[0]?.slug ?? null,
    });
  }

  return [...drafts.values()].map((draft) => {
    const { latestFormId } = draft;
    const form = latestFormId === null ? undefined : formById.get(latestFormId);

    return {
      evolutionFamilyId: draft.evolutionFamilyId,
      firstUsedAt: draft.firstUsedAt,
      lastUsedAt: draft.lastUsedAt,
      members: draft.members,
      name: draft.name,
      nationalNumber: draft.nationalNumber,
      onTeamNow: draft.onTeamNow,
      playIds: draft.playIds,
      shiny: draft.shiny,
      speciesId: draft.speciesId,
      speciesSlug: draft.speciesSlug,
      gameNames: [
        ...new Set(
          draft.playIds.flatMap((playId) => {
            const play = playById.get(playId);
            return play ? [getGameShortName(play.gameName)] : [];
          }),
        ),
      ],
      imageUrl: form ? getPokemonFormImageUrl(form) : null,
      types: getFormTypes(latestFormId),
    };
  });
};

/*
 * The rest of a species' evolution family that has joined you (Charmander
 * and Charizard beside your Charmeleon), in Pokédex order. None when its
 * family isn't known.
 */
export const getTrainerFamilyEntries = (
  entries: TrainerPokemonEntry[],
  entry: TrainerPokemonEntry,
): TrainerPokemonEntry[] =>
  entry.evolutionFamilyId === null
    ? []
    : entries
        .filter(
          (other) =>
            other.evolutionFamilyId === entry.evolutionFamilyId &&
            other.speciesId !== entry.speciesId,
        )
        .toSorted(
          (left, right) =>
            (left.nationalNumber ?? Infinity) -
            (right.nationalNumber ?? Infinity),
        );
