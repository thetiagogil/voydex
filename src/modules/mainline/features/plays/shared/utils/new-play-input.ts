/* What New Play sends to start a Play. */
export type NewPlayInput = {
  /* The optional content scopes (DLC) the trainer owns. */
  expansionVersionGroupIds: number[];
  gameSlug: string;
  /* The first partner, or null to decide later. */
  partner: { formId: number; speciesId: number } | null;
  playName: string;
  /* The viewer's calendar day ("YYYY-MM-DD"), so "Started today" is their today. */
  startedOn: string;
  trainerName: string | null;
};

export class NewPlayInputError extends Error {}

const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;
const dayPattern = /^\d{4}-\d{2}-\d{2}$/;

export const defaultPlayName = "New Journey";

const isPositiveInteger = (value: unknown): value is number =>
  typeof value === "number" && Number.isInteger(value) && value > 0;

const readText = (value: unknown, label: string, maxLength: number) => {
  if (value === null || value === undefined) {
    return null;
  }

  if (typeof value !== "string") {
    throw new NewPlayInputError(`${label} must be text.`);
  }

  const trimmed = value.trim();

  if (trimmed.length > maxLength) {
    throw new NewPlayInputError(
      `${label} can be at most ${maxLength} characters.`,
    );
  }

  return trimmed || null;
};

const isRealDay = (value: string) => {
  const date = new Date(`${value}T00:00:00Z`);

  return (
    !Number.isNaN(date.getTime()) && date.toISOString().slice(0, 10) === value
  );
};

/*
 * Checks what the New Play form sent before anything is written: a known
 * game's slug, a name within the Play's limits (the default when empty), an
 * optional trainer name, a partner as a species and form, the expansions as
 * ids and a real calendar day.
 */
export const parseNewPlayInput = (raw: unknown): NewPlayInput => {
  if (!raw || typeof raw !== "object") {
    throw new NewPlayInputError("Pick a game to start a Play.");
  }

  const record = raw as Record<string, unknown>;
  const gameSlug = record.gameSlug;

  if (
    typeof gameSlug !== "string" ||
    gameSlug.length > 64 ||
    !slugPattern.test(gameSlug)
  ) {
    throw new NewPlayInputError("Pick a game to start a Play.");
  }

  const partner = record.partner;
  let parsedPartner: NewPlayInput["partner"] = null;

  if (partner !== null && partner !== undefined) {
    const { formId, speciesId } = partner as Record<string, unknown>;

    if (!isPositiveInteger(formId) || !isPositiveInteger(speciesId)) {
      throw new NewPlayInputError("That partner isn't one Voydex knows.");
    }

    parsedPartner = { formId, speciesId };
  }

  const expansions = record.expansionVersionGroupIds ?? [];

  if (!Array.isArray(expansions) || !expansions.every(isPositiveInteger)) {
    throw new NewPlayInputError("Those expansions aren't ones Voydex knows.");
  }

  const startedOn = record.startedOn;

  if (
    typeof startedOn !== "string" ||
    !dayPattern.test(startedOn) ||
    !isRealDay(startedOn)
  ) {
    throw new NewPlayInputError("The start day isn't a real date.");
  }

  return {
    expansionVersionGroupIds: [...new Set(expansions)],
    gameSlug,
    partner: parsedPartner,
    playName:
      readText(record.playName, "The Play name", 200) ?? defaultPlayName,
    startedOn,
    trainerName: readText(record.trainerName, "The trainer name", 120),
  };
};
