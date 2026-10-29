/*
 * What a Play keeps track of: Story, the Pokédex (caught only, or caught and
 * seen) and Collectibles. The same three choices are a New Play default
 * (Settings), a new Play's start (New Play) and a Play's own switches (Play
 * settings), so their words live here once. Turning something off hides it
 * and leaves it out of completion; nothing recorded is deleted.
 */

import { z } from "zod";

export const pokedexModes = ["caught_only", "caught_and_seen"] as const;

export type PokedexMode = (typeof pokedexModes)[number];

export type PlayTracking = {
  collectibles: boolean;
  pokedexMode: PokedexMode;
  story: boolean;
};

/* The three choices as an action receives them. */
export const playTrackingSchema = z.object({
  collectibles: z.boolean({ error: "Collectibles must be on or off." }),
  pokedexMode: z.enum(pokedexModes, {
    error: "Pick caught only, or caught and seen.",
  }),
  story: z.boolean({ error: "Story must be on or off." }),
});

export const defaultPlayTracking: PlayTracking = {
  collectibles: true,
  pokedexMode: "caught_and_seen",
  story: true,
};

export const pokedexModeOptions: readonly {
  label: string;
  value: PokedexMode;
}[] = [
  { label: "Caught only", value: "caught_only" },
  { label: "Caught and seen", value: "caught_and_seen" },
];

export const trackingRowCopy = {
  collectibles: {
    description: "The game's own collections, where it has them",
    title: "Collectibles",
  },
  pokedex: {
    description: "Mark what you catch, or what you catch and what you've seen",
    title: "Pokédex",
  },
  story: {
    description: "Badges, the League and the milestones in between",
    title: "Story",
  },
} as const;

export const isPokedexMode = (value: unknown): value is PokedexMode =>
  pokedexModes.includes(value as PokedexMode);

/* A stored mode, or the default when the row holds something unexpected. */
export const toPokedexMode = (value: unknown): PokedexMode =>
  isPokedexMode(value) ? value : defaultPlayTracking.pokedexMode;

export const isDefaultPlayTracking = (tracking: PlayTracking) =>
  tracking.story === defaultPlayTracking.story &&
  tracking.pokedexMode === defaultPlayTracking.pokedexMode &&
  tracking.collectibles === defaultPlayTracking.collectibles;

export const arePlayTrackingsEqual = (
  left: PlayTracking,
  right: PlayTracking,
) =>
  left.story === right.story &&
  left.pokedexMode === right.pokedexMode &&
  left.collectibles === right.collectibles;

/* "Story · Pokédex · Collectibles": what a Play keeps, for a one-line summary. */
export const describePlayTracking = (
  tracking: PlayTracking,
  { hasCollectibles = true }: { hasCollectibles?: boolean } = {},
) => {
  const kept = [
    tracking.story ? trackingRowCopy.story.title : null,
    trackingRowCopy.pokedex.title,
    tracking.collectibles && hasCollectibles
      ? trackingRowCopy.collectibles.title
      : null,
  ].filter(Boolean);

  return kept.join(" · ");
};
