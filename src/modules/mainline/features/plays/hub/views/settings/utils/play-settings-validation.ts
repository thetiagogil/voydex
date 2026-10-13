/* What the General section saves. */
export type PlayGeneralSettingsInput = {
  name: string;
  playtimeHours: string;
  playtimeMinutes: string;
  startedOn: string;
  statusId: number;
  trainerName: string;
};

export type PlayGeneralSettings = {
  name: string;
  playtime_minutes: number | null;
  started_on: string | null;
  status_id: number;
  trainer_name: string | null;
};

export class PlaySettingsValidationError extends Error {
  constructor(message: string) {
    super(message);
    this.name = "PlaySettingsValidationError";
  }
}

const datePattern = /^\d{4}-\d{2}-\d{2}$/;

const isCalendarDate = (value: string) => {
  if (!datePattern.test(value)) {
    return false;
  }

  const date = new Date(`${value}T00:00:00Z`);

  return !Number.isNaN(date.getTime()) && date.toISOString().startsWith(value);
};

const parseWholeNumber = (value: string, label: string, maximum: number) => {
  const trimmed = value.trim();

  if (!trimmed) {
    return null;
  }

  const number = Number(trimmed);

  if (!Number.isInteger(number) || number < 0 || number > maximum) {
    throw new PlaySettingsValidationError(
      `${label} must be a whole number from 0 to ${maximum.toLocaleString("en")}.`,
    );
  }

  return number;
};

/*
 * The General section as the database takes it: a name of 1 to 200
 * characters, an optional trainer name of up to 120, an optional calendar
 * day, playtime as hours and minutes (both empty means not recorded) and one
 * of the given statuses.
 */
export const parsePlayGeneralSettings = (
  input: PlayGeneralSettingsInput,
  allowedStatusIds: readonly number[],
): PlayGeneralSettings => {
  const name = input.name.trim();
  const trainerName = input.trainerName.trim();
  const startedOn = input.startedOn.trim();

  if (!name) {
    throw new PlaySettingsValidationError("Give the Play a name.");
  }

  if (name.length > 200) {
    throw new PlaySettingsValidationError(
      "A Play's name can be 200 characters at most.",
    );
  }

  if (trainerName.length > 120) {
    throw new PlaySettingsValidationError(
      "A trainer name can be 120 characters at most.",
    );
  }

  if (startedOn && !isCalendarDate(startedOn)) {
    throw new PlaySettingsValidationError("Pick the day the Play started.");
  }

  if (!allowedStatusIds.includes(input.statusId)) {
    throw new PlaySettingsValidationError("Pick one of the statuses.");
  }

  const hours = parseWholeNumber(input.playtimeHours, "Hours", 9999);
  const minutes = parseWholeNumber(input.playtimeMinutes, "Minutes", 59);

  return {
    name,
    playtime_minutes:
      hours === null && minutes === null
        ? null
        : (hours ?? 0) * 60 + (minutes ?? 0),
    started_on: startedOn || null,
    status_id: input.statusId,
    trainer_name: trainerName || null,
  };
};

/* What changed between two id sets, for chip sections (expansions, rules). */
export const diffIdSets = <TId>(
  before: readonly TId[],
  after: readonly TId[],
) => ({
  added: after.filter((id) => !before.includes(id)),
  removed: before.filter((id) => !after.includes(id)),
});
