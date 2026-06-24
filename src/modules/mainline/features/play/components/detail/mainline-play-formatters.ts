import type { Type } from "@/modules/codex/types";
import type {
  MainlinePlayPokedexEntry,
  MainlinePlayTeamPokemon,
} from "@/modules/mainline/features/play/types";
import type {
  MainlinePlayCollectibleDetail,
  MainlinePlayMilestoneDetail,
  MainlinePlayOverview,
  MainlinePlayTeamDetail,
  MainlinePlayTimelineDetail,
} from "@/modules/mainline/shared/types/mainline.types";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/shared/domain/pokemon/constants";

export const formatDate = (value: string | null) => {
  if (!value) {
    return "Not set";
  }
  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    year: "numeric",
  }).format(new Date(`${value}T00:00:00`));
};

export const formatDateTime = (value: string | null) => {
  if (!value) {
    return "No date";
  }
  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    hour: "2-digit",
    minute: "2-digit",
    month: "short",
  }).format(new Date(value));
};

export const formatDexNumber = (value: number | null) => {
  return value ? `#${value.toString().padStart(4, "0")}` : "#----";
};

export const formatNumber = (value: number | null) => {
  return new Intl.NumberFormat("en").format(value ?? 0);
};

export const formatPercent = (value: number | null) => {
  return `${Math.round(value ?? 0)}%`;
};

export const formatPlaytime = (minutes: number | null) => {
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

export const getActiveTeam = (team: MainlinePlayTeamPokemon[]) => {
  return team
    .filter((pokemon) => pokemon.roster_state_slug === "active")
    .sort((a, b) => (a.slot ?? 99) - (b.slot ?? 99));
};

export const getFirstIncompleteMilestone = (
  milestones: MainlinePlayMilestoneDetail[],
) => {
  return milestones.find((milestone) => !milestone.is_completed) ?? null;
};

export const getLastCompletedMilestone = (
  milestones: MainlinePlayMilestoneDetail[],
) => {
  return (
    [...milestones].reverse().find((milestone) => milestone.is_completed) ??
    null
  );
};

export const getLatestTimelineEvents = (
  events: MainlinePlayTimelineDetail[],
  limit = 5,
) => {
  return events.slice(0, limit);
};

export const getPokedexDisplayName = (entry: MainlinePlayPokedexEntry) => {
  return entry.species_name ?? entry.display_form_name ?? "Pokemon";
};

export const getPokemonDisplayName = (
  pokemon: MainlinePlayTeamPokemon | MainlinePlayTeamDetail,
) => {
  return (
    pokemon.nickname ?? pokemon.species_name ?? pokemon.form_name ?? "Pokemon"
  );
};

export const getPokemonPrimaryTypeSlug = (
  pokemon: MainlinePlayTeamPokemon | MainlinePlayPokedexEntry,
) => {
  return getPokemonTypeSlug(pokemon.display.primaryType);
};

export const getPokemonTypeSlug = (
  type: Type | null,
): PokemonTypeSlug | null => {
  return type && isPokemonTypeSlug(type.slug) ? type.slug : null;
};

export const getPlayTitle = (play: MainlinePlayOverview) => {
  return play.play_name ?? "Untitled play";
};

export const getReserveTeam = (team: MainlinePlayTeamPokemon[]) => {
  return team
    .filter((pokemon) => pokemon.roster_state_slug === "reserve")
    .sort((a, b) => (a.slot ?? 99) - (b.slot ?? 99));
};

export const getTimelineEventTitle = (event: MainlinePlayTimelineDetail) => {
  return event.title ?? event.event_type_name ?? "Play event";
};

export const groupCollectiblesByCollectible = (
  entries: MainlinePlayCollectibleDetail[],
) => {
  const groups = new Map<number, MainlinePlayCollectibleDetail[]>();
  for (const entry of entries) {
    if (!entry.collectible_id) {
      continue;
    }
    const group = groups.get(entry.collectible_id) ?? [];
    group.push(entry);
    groups.set(entry.collectible_id, group);
  }
  return Array.from(groups.values());
};
