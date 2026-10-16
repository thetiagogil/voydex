import { z } from "zod";

import { parseInput } from "@/shared/utils/input-schemas";

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

const toValidationError = (message: string) =>
  new PlaySettingsValidationError(message);

/* An optional whole number from 0 to `maximum`; empty is null. */
const wholeNumberSchema = (label: string, maximum: number) => {
  const message = `${label} must be a whole number from 0 to ${maximum.toLocaleString("en")}.`;

  return z
    .string({ error: message })
    .trim()
    .transform((value) => (value ? Number(value) : null))
    .refine(
      (value) =>
        value === null ||
        (Number.isInteger(value) && value >= 0 && value <= maximum),
      { error: message },
    );
};

const playGeneralSettingsSchema = (allowedStatusIds: readonly number[]) =>
  z.object({
    name: z
      .string({ error: "Give the Play a name." })
      .trim()
      .min(1, { error: "Give the Play a name." })
      .max(200, { error: "A Play's name can be 200 characters at most." }),
    trainerName: z
      .string({ error: "A trainer name can be 120 characters at most." })
      .trim()
      .max(120, { error: "A trainer name can be 120 characters at most." }),
    startedOn: z
      .string({ error: "Pick the day the Play started." })
      .trim()
      .refine((value) => !value || isCalendarDate(value), {
        error: "Pick the day the Play started.",
      }),
    statusId: z
      .number({ error: "Pick one of the statuses." })
      .refine((id) => allowedStatusIds.includes(id), {
        error: "Pick one of the statuses.",
      }),
    playtimeHours: wholeNumberSchema("Hours", 9999),
    playtimeMinutes: wholeNumberSchema("Minutes", 59),
  });

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
  const settings = parseInput(
    playGeneralSettingsSchema(allowedStatusIds),
    input,
    toValidationError,
  );
  const hours = settings.playtimeHours;
  const minutes = settings.playtimeMinutes;

  return {
    name: settings.name,
    playtime_minutes:
      hours === null && minutes === null
        ? null
        : (hours ?? 0) * 60 + (minutes ?? 0),
    started_on: settings.startedOn || null,
    status_id: settings.statusId,
    trainer_name: settings.trainerName || null,
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

/*
 * A name for a rule or tag you add: trimmed, inner spaces collapsed, 1 to
 * `maximum` characters.
 */
export const parseSettingsChipName = (
  value: string,
  { label, maximum }: { label: string; maximum: number },
) =>
  parseInput(
    z
      .string({ error: `Give the ${label} a name.` })
      .transform((name) => name.trim().replace(/\s+/g, " "))
      .pipe(
        z
          .string()
          .min(1, { error: `Give the ${label} a name.` })
          .max(maximum, {
            error: `A ${label}'s name can be ${maximum} characters at most.`,
          }),
      ),
    value,
    toValidationError,
  );

/*
 * The stable key the database keeps beside a name: lowercase letters and
 * digits joined by `separator` ("No healing" → "no_healing"), accents
 * dropped. Null when nothing is left (a name of only symbols).
 */
export const toSettingsSlug = (
  name: string,
  { maximum, separator }: { maximum: number; separator: "-" | "_" },
) => {
  const words = name
    .normalize("NFKD")
    .replace(/\p{Mark}/gu, "")
    .toLowerCase()
    .match(/[a-z0-9]+/g);
  const slug = (words ?? []).join(separator).slice(0, maximum);
  const trimmed = slug.replace(new RegExp(`\\${separator}+$`), "");

  return trimmed || null;
};
