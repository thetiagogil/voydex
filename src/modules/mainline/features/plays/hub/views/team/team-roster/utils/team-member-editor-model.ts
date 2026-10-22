import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import type { BuildItemOption } from "@/modules/mainline/shared/server/build-option-readers";

import { formatRosterSlot } from "./roster-moves";
import type {
  MainlineTeamGender,
  UpdateMainlinePlayPokemonInput,
} from "./team-member-validation";

export type EditorOption = { id: number; name: string };

export type EditorMoveOption = EditorOption & {
  damageClass: string | null;
  typeName: string | null;
  typeSlug: string | null;
};

export type EditorFormOption = {
  formId: number;
  imageUrl: string | null;
  name: string;
  speciesId: number;
};

/*
 * What the Pokémon editor can offer for one Pokémon in this Play's game:
 * only the mechanics the game has (a game without natures gets none), the
 * abilities of its form, the moves its learnset gives in this version
 * group, and where it can evolve or which forms it can take.
 */
export type TeamMemberEditorOptions = {
  /* Each with what it does in the Play's game, when known. */
  abilities: (EditorOption & { effect: string | null })[];
  balls: EditorOption[];
  evolutions: EditorFormOption[];
  forms: EditorFormOption[];
  heldItems: BuildItemOption[];
  moves: EditorMoveOption[];
  /* The 18 types, in games with Terastal; empty elsewhere. */
  teraTypes: EditorOption[];
  natures: (EditorOption & {
    decreased: string | null;
    increased: string | null;
  })[];
};

/* The editor's fields as typed, before they are parsed to save. */
export type TeamMemberEditorValues = {
  abilityId: string;
  ballItemId: string;
  gender: MainlineTeamGender;
  hasGigantamaxFactor: boolean;
  heldItemId: string;
  isShiny: boolean;
  level: string;
  metLevel: string;
  metLocation: string;
  /* Always four slots; an empty slot is "". */
  moveIds: [string, string, string, string];
  natureId: string;
  nickname: string;
  notes: string;
  /* The stored roster slot, 1 to 12; moving it waits for Save. */
  slot: string;
  teraTypeId: string;
};

export type TeamMemberEditorField = keyof TeamMemberEditorValues;

export type TeamMemberEditorChange = {
  field: TeamMemberEditorField;
  label: string;
  /* What it reads after saving; "Not recorded" when emptied. */
  next: string;
  previous: string;
};

const fieldLabels: Record<TeamMemberEditorField, string> = {
  abilityId: "Ability",
  ballItemId: "Poké Ball",
  gender: "Gender",
  hasGigantamaxFactor: "Can Gigantamax",
  heldItemId: "Held item",
  isShiny: "Shiny",
  level: "Level",
  metLevel: "Met at level",
  metLocation: "Met at",
  moveIds: "Moves",
  natureId: "Nature",
  nickname: "Nickname",
  notes: "Notes",
  slot: "Slot",
  teraTypeId: "Tera Type",
};

const genderLabels: Record<MainlineTeamGender, string> = {
  female: "Female",
  genderless: "Genderless",
  male: "Male",
  unknown: "Not recorded",
};

const toText = (value: number | string | null | undefined) =>
  value === null || value === undefined ? "" : String(value);

const toGender = (value: string | null): MainlineTeamGender =>
  value === "female" || value === "genderless" || value === "male"
    ? value
    : "unknown";

export const getTeamMemberEditorValues = (
  member: MainlinePlayTeamMember,
): TeamMemberEditorValues => {
  const moves = member.moves.toSorted((left, right) => left.slot - right.slot);

  return {
    abilityId: toText(member.ability_id),
    ballItemId: toText(member.ball_item_id),
    gender: toGender(member.gender),
    hasGigantamaxFactor: member.has_gigantamax_factor === true,
    heldItemId: toText(member.held_item_id),
    isShiny: member.is_shiny === true,
    level: toText(member.level),
    metLevel: toText(member.met_level),
    metLocation: member.met_location_label ?? "",
    moveIds: [0, 1, 2, 3].map((index) => toText(moves[index]?.id)) as [
      string,
      string,
      string,
      string,
    ],
    natureId: toText(member.nature_id),
    nickname: member.nickname ?? "",
    notes: member.personal_notes ?? "",
    slot: toText(member.slot),
    /* A form whose Tera Type is fixed (an Ogerpon mask) shows it. */
    teraTypeId: toText(member.tera_type_id ?? member.fixed_tera_type_id),
  };
};

const isSame = (
  field: TeamMemberEditorField,
  left: TeamMemberEditorValues,
  right: TeamMemberEditorValues,
) =>
  field === "moveIds"
    ? left.moveIds.join() === right.moveIds.join()
    : left[field] === right[field];

/*
 * What changed, in the editor's order, each as the words Review shows: an
 * id becomes its option's name through `nameOf`.
 */
export const getTeamMemberEditorChanges = (
  initial: TeamMemberEditorValues,
  current: TeamMemberEditorValues,
  nameOf: (field: TeamMemberEditorField, value: string) => string,
): TeamMemberEditorChange[] => {
  const describe = (
    field: TeamMemberEditorField,
    values: TeamMemberEditorValues,
  ): string => {
    if (field === "gender") {
      return genderLabels[values.gender];
    }

    if (field === "isShiny" || field === "hasGigantamaxFactor") {
      return values[field] ? "Yes" : "No";
    }

    if (field === "slot") {
      return values.slot
        ? formatRosterSlot(Number(values.slot))
        : "Not recorded";
    }

    if (field === "moveIds") {
      const names = values.moveIds
        .filter(Boolean)
        .map((moveId) => nameOf(field, moveId));
      return names.length ? names.join(", ") : "Not recorded";
    }

    const value = values[field].trim();

    if (!value) {
      return "Not recorded";
    }

    return field.endsWith("Id") ? nameOf(field, value) : value;
  };

  return (Object.keys(fieldLabels) as TeamMemberEditorField[])
    .filter((field) => !isSame(field, initial, current))
    .map((field) => ({
      field,
      label: fieldLabels[field],
      next: describe(field, current),
      previous: describe(field, initial),
    }));
};

const toOptionalNumber = (value: string, label: string) => {
  const trimmed = value.trim();

  if (!trimmed) {
    return null;
  }

  const number = Number(trimmed);

  if (!Number.isInteger(number)) {
    throw new Error(`${label} must be a whole number.`);
  }

  return number;
};

/* Which of the editor's mechanic fields the Play's exact game records. */
export type TeamMemberEditorSupport = {
  abilities: boolean;
  gender: boolean;
  /* Sword and Shield, for a Pokémon whose line can Gigantamax. */
  gigantamax: boolean;
  heldItems: boolean;
  natures: boolean;
  terastal: boolean;
};

/*
 * The fields as the save action takes them. A mechanic the game doesn't
 * record is sent empty, so a value kept from before (an ability recorded on
 * a Legends: Arceus Pokémon, say) clears on save instead of blocking it.
 */
export const toUpdateTeamMemberInput = (
  values: TeamMemberEditorValues,
  supports: TeamMemberEditorSupport,
): UpdateMainlinePlayPokemonInput => ({
  abilityId: supports.abilities
    ? toOptionalNumber(values.abilityId, "Ability")
    : null,
  ballItemId: toOptionalNumber(values.ballItemId, "Poké Ball"),
  gender: supports.gender ? values.gender : "unknown",
  hasGigantamaxFactor: supports.gigantamax && values.hasGigantamaxFactor,
  heldItemId: supports.heldItems
    ? toOptionalNumber(values.heldItemId, "Held item")
    : null,
  isShiny: values.isShiny,
  level: toOptionalNumber(values.level, "Level"),
  metLevel: toOptionalNumber(values.metLevel, "Met level"),
  metLocation: values.metLocation,
  moveIds: values.moveIds
    .filter(Boolean)
    .map((moveId) => Number(moveId))
    .filter((moveId) => Number.isInteger(moveId)),
  natureId: supports.natures
    ? toOptionalNumber(values.natureId, "Nature")
    : null,
  nickname: values.nickname,
  notes: values.notes,
  teraTypeId: supports.terastal
    ? toOptionalNumber(values.teraTypeId, "Tera Type")
    : null,
});

/* What the Pokémon has recorded now, so unchanged choices aren't re-judged. */
export type TeamMemberCurrentChoices = {
  abilityId: number | null;
  heldItemId: number | null;
  moveIds: readonly number[];
  natureId: number | null;
};

/*
 * The first choice the editor didn't offer, as a message, or null when every
 * one is offered. The server checks a save against the same options the
 * editor read; a value already recorded (an old move, say) may stay.
 */
export const findUnofferedEditorChoice = (
  input: Pick<
    UpdateMainlinePlayPokemonInput,
    "abilityId" | "heldItemId" | "moveIds" | "natureId" | "teraTypeId"
  >,
  options: Pick<
    TeamMemberEditorOptions,
    "abilities" | "heldItems" | "moves" | "natures" | "teraTypes"
  >,
  current: TeamMemberCurrentChoices,
): string | null => {
  const offers = (list: readonly EditorOption[], id: number) =>
    list.some((option) => option.id === id);

  if (
    input.moveIds.some(
      (moveId) =>
        !current.moveIds.includes(moveId) && !offers(options.moves, moveId),
    )
  ) {
    return "It can't learn that move in this game.";
  }

  if (
    input.abilityId !== null &&
    input.abilityId !== current.abilityId &&
    !offers(options.abilities, input.abilityId)
  ) {
    return "It can't have that ability in this game.";
  }

  if (
    input.heldItemId !== null &&
    input.heldItemId !== current.heldItemId &&
    !offers(options.heldItems, input.heldItemId)
  ) {
    return "It can't hold that item in this game.";
  }

  if (
    input.natureId !== null &&
    input.natureId !== current.natureId &&
    !offers(options.natures, input.natureId)
  ) {
    return "That nature isn't in this game.";
  }

  if (
    input.teraTypeId !== null &&
    !offers(options.teraTypes, input.teraTypeId)
  ) {
    return "That Tera Type isn't in this game.";
  }

  return null;
};
