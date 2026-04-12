// =============================================================================
// ROUTE HELPERS — canonical entity-based URLs
// =============================================================================

export const getDashboardRoute = () => "/dashboard";

export const getGenerationsRoute = (generationId: string | number) =>
  `/generations/${generationId}`;

export const getGamesRoute = (gameSlug: string) => `/games/${gameSlug}`;

export const getPlaysRoute = (playId: string) => `/plays/${playId}`;

export const getPlaysPokemonTeamRoute = (playId: string) =>
  `/plays/${playId}/pokemon-team`;

export const getAdventuresRoute = () => "/adventures";

export const getCollectionRoute = () => "/collection";
