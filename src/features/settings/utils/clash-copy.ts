import type { Clash } from "@/platform/local-db/sync-merge";

/*
 * Clashes in your words: what clashed (a Play's notes, a tag), and each
 * side's version, short enough for a choice card.
 */

const tableNames: Record<string, string> = {
  "gameplay.mainline_challenge_rule_sets": "Rule set",
  "gameplay.mainline_challenge_rules": "Rule",
  "gameplay.mainline_play_events": "History moment",
  "gameplay.mainline_play_pokemon": "Pokémon",
  "gameplay.mainline_play_settings": "Play settings",
  "gameplay.mainline_plays": "Play",
  "gameplay.user_favourite_pokemon": "Favourite",
  "gameplay.user_game_library_entries": "Library game",
  "planning.mainline_team_plan_members": "Planned Pokémon",
  "planning.mainline_team_plans": "Plan",
  "public.profiles": "Profile",
  "public.tags": "Tag",
  "public.user_preferences": "Settings",
};

/* "Play", "Tag", or a plain reading of the table's name. */
export const describeTable = (table: string) =>
  tableNames[table] ??
  humanize(
    table
      .split(".")
      .at(-1)!
      .replace(/^(mainline|user)_/, ""),
  );

/* "display_name" as "Display name", "notes" as "Notes". */
export const humanize = (name: string) => {
  const words = name.replace(/_id$/, "").replaceAll("_", " ");

  return words.charAt(0).toUpperCase() + words.slice(1);
};

const maxLength = 80;

const isoDateTimePattern = /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}/;

const dateTimeFormat = new Intl.DateTimeFormat("en-GB", {
  day: "numeric",
  hour: "2-digit",
  minute: "2-digit",
  month: "short",
  year: "numeric",
});

/* A value as it reads: "Empty", "Yes", or the text, cut short. */
export const describeValue = (value: unknown) => {
  if (value === null || value === undefined || value === "") return "Empty";
  if (value === true) return "Yes";
  if (value === false) return "No";

  if (typeof value === "string" && isoDateTimePattern.test(value)) {
    return dateTimeFormat.format(new Date(value));
  }

  const text = typeof value === "string" ? value : JSON.stringify(value);

  return text.length > maxLength ? `${text.slice(0, maxLength - 1)}…` : text;
};

/* What the clash is about: "Kanto run · Notes". */
export const describeClash = (clash: Clash) => {
  const item = clash.item.label ?? describeTable(clash.item.table);

  if (clash.kind === "item") return item;

  const part =
    clash.kind === "field"
      ? clash.table === clash.item.table
        ? humanize(clash.column)
        : `${describeTable(clash.table)}: ${humanize(clash.column)}`
      : clash.table === clash.item.table
        ? null
        : describeTable(clash.table);

  return part ? `${item} · ${part}` : item;
};

/* The two answers, this device's first. */
export const describeClashOptions = (
  clash: Clash,
): { local: string; remote: string } => {
  if (clash.kind === "field") {
    return {
      local: describeValue(clash.local),
      remote: describeValue(clash.remote),
    };
  }

  if (clash.kind === "row") {
    return clash.deletedOn === "local"
      ? { local: "Deleted", remote: "Kept, with its changes" }
      : { local: "Kept, with its changes", remote: "Deleted" };
  }

  return {
    local: "This device's version",
    remote: "The other device's version",
  };
};

/* "Today, 23:12", "Yesterday, 09:10" or "8 Nov, 23:12". */
export const describeChangedAt = (iso: string, now = new Date()) => {
  const at = new Date(iso);
  const time = timeFormat.format(at);
  const dayStart = (date: Date) =>
    new Date(date.getFullYear(), date.getMonth(), date.getDate()).getTime();
  const days = Math.round((dayStart(now) - dayStart(at)) / 86_400_000);

  if (days === 0) return `Today, ${time}`;
  if (days === 1) return `Yesterday, ${time}`;

  return `${dayFormat.format(at)}, ${time}`;
};

const timeFormat = new Intl.DateTimeFormat("en-GB", {
  hour: "2-digit",
  minute: "2-digit",
});

const dayFormat = new Intl.DateTimeFormat("en-GB", {
  day: "numeric",
  month: "short",
});

/* A device as the person knows it: "iPhone", "Mac", or a plain "device". */
export type DeviceKind = "computer" | "phone";

const phoneNames = new Set(["Android", "iPad", "iPhone"]);

export const deviceKind = (name: string | null): DeviceKind =>
  name && phoneNames.has(name) ? "phone" : "computer";

/*
 * The two sides of a clash by their devices: "This Mac" and "Your iPhone";
 * "Your other Mac" when both are Macs; "device" when the name is unknown.
 */
export const describeDevices = (
  thisDevice: string | null,
  otherDevice: string | null,
) => ({
  local: `This ${thisDevice ?? "device"}`,
  remote:
    otherDevice && otherDevice !== thisDevice
      ? `Your ${otherDevice}`
      : `Your other ${otherDevice ?? "device"}`,
});
