import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";

const dateFormatter = new Intl.DateTimeFormat("en", {
  day: "numeric",
  month: "short",
  year: "numeric",
});
const shortDateFormatter = new Intl.DateTimeFormat("en", {
  day: "numeric",
  month: "short",
});
const numberFormatter = new Intl.NumberFormat("en");

const toDate = (value: string, dateOnly = false) => {
  const date = new Date(dateOnly ? `${value}T00:00:00` : value);
  return Number.isNaN(date.getTime()) ? null : date;
};

export const formatMainlineNumber = (value: number | null | undefined) => {
  return numberFormatter.format(value ?? 0);
};

export const formatMainlineDate = (
  value: string | null,
  fallback = "Not set",
) => {
  if (!value) {
    return fallback;
  }
  const date = toDate(value, true);
  return date ? dateFormatter.format(date) : fallback;
};

export const formatMainlineShortDate = (
  value: string | null,
  fallback = "No recent update",
) => {
  if (!value) {
    return fallback;
  }
  const date = toDate(value);
  return date ? shortDateFormatter.format(date) : fallback;
};

export const formatMainlinePlaytime = (minutes: number | null | undefined) => {
  if (!minutes) {
    return "No playtime";
  }
  const hours = Math.floor(minutes / 60);
  const remainder = minutes % 60;
  if (!hours) {
    return `${remainder}m`;
  }
  return remainder ? `${hours}h ${remainder}m` : `${hours}h`;
};

export const getMainlinePlayTitle = (play: MainlinePlayCardData) => {
  return play.play_name ?? "Untitled play";
};

export const getMainlinePlayGameLine = (play: MainlinePlayCardData) => {
  return [play.game_name ?? "Unknown game", play.generation_name]
    .filter(Boolean)
    .join(" - ");
};

export const getMainlinePlayTrainerLine = (play: MainlinePlayCardData) => {
  return play.trainer_name ? `Trainer: ${play.trainer_name}` : "No trainer";
};

export const getMainlinePlayTeamCount = (play: MainlinePlayCardData) => {
  return (play.active_team_count ?? 0) + (play.reserve_team_count ?? 0);
};

export const getMainlinePlayProgressCount = (play: MainlinePlayCardData) => {
  return (
    (play.completed_milestone_count ?? 0) +
    (play.pokedex_caught_count ?? 0) +
    (play.collected_entry_count ?? 0)
  );
};

export const getMainlinePlayPokedexLine = (play: MainlinePlayCardData) => {
  const caught = play.pokedex_caught_count ?? 0;
  const seen = play.pokedex_seen_count ?? 0;
  if (!caught && !seen) {
    return "No Pokedex progress";
  }
  return `${caught} caught / ${seen} seen`;
};

export const hasMainlinePlayProgress = (play: MainlinePlayCardData) => {
  return getMainlinePlayProgressCount(play) > 0;
};
