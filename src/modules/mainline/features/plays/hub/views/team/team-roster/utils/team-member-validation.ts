import { isUuid } from "@/shared/utils/identifiers";

export const mainlineTeamRosterStates = {
  active: 1,
  reserve: 2,
} as const;

export type MainlineTeamGender = "female" | "genderless" | "male" | "unknown";

export type AddMainlinePlayPokemonInput = {
  createEvent?: boolean;
  eventBody?: string | null;
  eventTitle?: string | null;
  formId: number;
  gender?: MainlineTeamGender;
  isShiny?: boolean;
  level?: number | null;
  moveIds?: number[];
  nickname?: string | null;
  playId: string;
  rosterStateId: number;
  slot: number;
  speciesId: number;
};

export class MainlineTeamValidationError extends Error {
  constructor(message: string) {
    super(message);
    this.name = "MainlineTeamValidationError";
  }
}

const normalizeOptionalText = (value: string | null | undefined) => {
  const normalizedValue = value?.trim() ?? "";

  return normalizedValue || null;
};

const assertIntegerInRange = (
  value: number,
  label: string,
  minimum: number,
  maximum: number,
) => {
  if (!Number.isInteger(value) || value < minimum || value > maximum) {
    throw new MainlineTeamValidationError(
      `${label} must be an integer between ${minimum} and ${maximum}.`,
    );
  }
};

const assertOptionalTextLength = (
  value: string | null,
  label: string,
  maximum: number,
) => {
  if (value && value.length > maximum) {
    throw new MainlineTeamValidationError(
      `${label} must be ${maximum} characters or fewer.`,
    );
  }
};

export const validateAddMainlinePlayPokemon = (
  input: AddMainlinePlayPokemonInput,
): Required<
  Pick<
    AddMainlinePlayPokemonInput,
    "createEvent" | "gender" | "isShiny" | "moveIds"
  >
> &
  Omit<
    AddMainlinePlayPokemonInput,
    "createEvent" | "gender" | "isShiny" | "moveIds"
  > => {
  if (!isUuid(input.playId)) {
    throw new MainlineTeamValidationError("A valid play ID is required.");
  }

  if (
    input.rosterStateId !== mainlineTeamRosterStates.active &&
    input.rosterStateId !== mainlineTeamRosterStates.reserve
  ) {
    throw new MainlineTeamValidationError(
      "A team member must be active or reserve.",
    );
  }

  const slotMinimum =
    input.rosterStateId === mainlineTeamRosterStates.active ? 1 : 7;
  const slotMaximum =
    input.rosterStateId === mainlineTeamRosterStates.active ? 6 : 12;

  assertIntegerInRange(input.slot, "Team slot", slotMinimum, slotMaximum);
  assertIntegerInRange(
    input.speciesId,
    "Species ID",
    1,
    Number.MAX_SAFE_INTEGER,
  );
  assertIntegerInRange(input.formId, "Form ID", 1, Number.MAX_SAFE_INTEGER);

  if (input.level !== null && input.level !== undefined) {
    assertIntegerInRange(input.level, "Level", 1, 100);
  }

  const nickname = normalizeOptionalText(input.nickname);
  const eventTitle = normalizeOptionalText(input.eventTitle);
  const eventBody = normalizeOptionalText(input.eventBody);
  assertOptionalTextLength(nickname, "Nickname", 100);
  assertOptionalTextLength(eventTitle, "Event title", 200);
  assertOptionalTextLength(eventBody, "Event body", 5000);

  const moveIds = [...new Set(input.moveIds ?? [])];
  if (moveIds.length > 4) {
    throw new MainlineTeamValidationError(
      "A team member can have at most four moves.",
    );
  }

  moveIds.forEach((moveId) => {
    assertIntegerInRange(moveId, "Move ID", 1, Number.MAX_SAFE_INTEGER);
  });

  return {
    ...input,
    createEvent: input.createEvent ?? true,
    eventBody,
    eventTitle,
    gender: input.gender ?? "unknown",
    isShiny: input.isShiny ?? false,
    moveIds,
    nickname,
  };
};

/* What the Pokémon editor saves; ids are null when not recorded. */
export type UpdateMainlinePlayPokemonInput = {
  abilityId: number | null;
  ballItemId: number | null;
  gender: MainlineTeamGender;
  heldItemId: number | null;
  isShiny: boolean;
  level: number | null;
  metLevel: number | null;
  metLocation: string | null;
  /* In slot order; at most four, each once. */
  moveIds: number[];
  natureId: number | null;
  nickname: string | null;
  notes: string | null;
};

const assertOptionalId = (value: number | null, label: string) => {
  if (value !== null) {
    assertIntegerInRange(value, label, 1, Number.MAX_SAFE_INTEGER);
  }
};

/*
 * The editor's fields as the database takes them: trimmed text within its
 * limits, levels from 1 to 100, real ids, and up to four distinct moves.
 */
export const validateUpdateMainlinePlayPokemon = (
  input: UpdateMainlinePlayPokemonInput,
): UpdateMainlinePlayPokemonInput => {
  const nickname = normalizeOptionalText(input.nickname);
  const metLocation = normalizeOptionalText(input.metLocation);
  const notes = normalizeOptionalText(input.notes);

  assertOptionalTextLength(nickname, "Nickname", 100);
  assertOptionalTextLength(metLocation, "Met location", 200);
  assertOptionalTextLength(notes, "Notes", 5000);

  if (input.level !== null) {
    assertIntegerInRange(input.level, "Level", 1, 100);
  }

  if (input.metLevel !== null) {
    assertIntegerInRange(input.metLevel, "Met level", 1, 100);
  }

  if (
    input.gender !== "female" &&
    input.gender !== "genderless" &&
    input.gender !== "male" &&
    input.gender !== "unknown"
  ) {
    throw new MainlineTeamValidationError("Pick a gender from the list.");
  }

  assertOptionalId(input.natureId, "Nature");
  assertOptionalId(input.abilityId, "Ability");
  assertOptionalId(input.heldItemId, "Held item");
  assertOptionalId(input.ballItemId, "Poké Ball");

  if (input.moveIds.length > 4) {
    throw new MainlineTeamValidationError(
      "A team member can have at most four moves.",
    );
  }

  if (new Set(input.moveIds).size !== input.moveIds.length) {
    throw new MainlineTeamValidationError("A move can only be known once.");
  }

  input.moveIds.forEach((moveId) => {
    assertIntegerInRange(moveId, "Move", 1, Number.MAX_SAFE_INTEGER);
  });

  return {
    ...input,
    isShiny: input.isShiny === true,
    metLocation,
    nickname,
    notes,
  };
};
