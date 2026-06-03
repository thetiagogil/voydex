import type { PlayPokedexOverviewSummary } from "../types";

const REGIONAL_POKEDEX_KINDS = new Set(["regional", "expansion"]);

export type PlayPokedexSettingsAvailability = {
  hasRegionalPokedex: boolean;
  hasOtherPokedex: boolean;
  hasMythicalPokemon: boolean;
};

export const getPlayPokedexSettingsAvailability = (
  summaries: PlayPokedexOverviewSummary[],
): PlayPokedexSettingsAvailability => {
  return summaries.reduce<PlayPokedexSettingsAvailability>(
    (availability, summary) => ({
      hasRegionalPokedex:
        availability.hasRegionalPokedex ||
        REGIONAL_POKEDEX_KINDS.has(summary.pokedexKind),
      hasOtherPokedex:
        availability.hasOtherPokedex ||
        !REGIONAL_POKEDEX_KINDS.has(summary.pokedexKind),
      hasMythicalPokemon:
        availability.hasMythicalPokemon || summary.mythicalCount > 0,
    }),
    {
      hasRegionalPokedex: false,
      hasOtherPokedex: false,
      hasMythicalPokemon: false,
    },
  );
};
