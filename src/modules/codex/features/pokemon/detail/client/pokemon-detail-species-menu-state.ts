import type { PokemonDetailMenuPage } from "@/modules/reference/types";
import {
  createPokemonMenuState,
  mergePokemonMenuItems,
  PRELOAD_REMAINING_POKEMON,
  type PokemonMenuLoadMode,
  type PokemonMenuState,
} from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-model";

type PokemonMenuStateIdentity = {
  requestedVersionGroupSlug: string;
  requestedQuery: string;
};

const shouldAppendPokemonMenuItems = ({
  currentMenuState,
  mode,
  requestedVersionGroupSlug,
  requestedQuery,
}: PokemonMenuStateIdentity & {
  currentMenuState: PokemonMenuState;
  mode: PokemonMenuLoadMode;
}) => {
  return (
    mode === "append" &&
    currentMenuState.versionGroupSlug === requestedVersionGroupSlug &&
    currentMenuState.query === requestedQuery
  );
};

export const getActivePokemonMenuState = ({
  activeVersionGroupSlug,
  activeQuery,
  menuState,
}: {
  activeVersionGroupSlug: string | null;
  activeQuery: string;
  menuState: PokemonMenuState;
}) => {
  return menuState.versionGroupSlug === activeVersionGroupSlug &&
    menuState.query === activeQuery
    ? menuState
    : createPokemonMenuState(activeVersionGroupSlug, activeQuery);
};

export const getPokemonMenuPreloadTriggerIndex = ({
  canLoadMorePokemon,
  itemCount,
}: {
  canLoadMorePokemon: boolean;
  itemCount: number;
}) => {
  return canLoadMorePokemon
    ? Math.max(0, itemCount - PRELOAD_REMAINING_POKEMON - 1)
    : -1;
};

export const getPendingPokemonMenuState = ({
  currentMenuState,
  mode,
  requestedVersionGroupSlug,
  requestedQuery,
}: PokemonMenuStateIdentity & {
  currentMenuState: PokemonMenuState;
  mode: PokemonMenuLoadMode;
}) => {
  const shouldAppend = shouldAppendPokemonMenuItems({
    currentMenuState,
    mode,
    requestedVersionGroupSlug,
    requestedQuery,
  });

  return {
    versionGroupSlug: requestedVersionGroupSlug,
    items: shouldAppend ? currentMenuState.items : [],
    loadState: shouldAppend ? "loaded" : "loading",
    loadingMore: shouldAppend,
    nextOffset: shouldAppend ? currentMenuState.nextOffset : null,
    query: requestedQuery,
    total: shouldAppend ? currentMenuState.total : 0,
  } satisfies PokemonMenuState;
};

export const getResolvedPokemonMenuState = ({
  currentMenuState,
  mode,
  nextPage,
  requestedVersionGroupSlug,
  requestedQuery,
}: PokemonMenuStateIdentity & {
  currentMenuState: PokemonMenuState;
  mode: PokemonMenuLoadMode;
  nextPage: PokemonDetailMenuPage;
}) => {
  if (
    currentMenuState.versionGroupSlug !== requestedVersionGroupSlug ||
    currentMenuState.query !== requestedQuery
  ) {
    return currentMenuState;
  }

  return {
    versionGroupSlug: requestedVersionGroupSlug,
    items:
      mode === "append"
        ? mergePokemonMenuItems(currentMenuState.items, nextPage.pokemon)
        : nextPage.pokemon,
    loadState: "loaded",
    loadingMore: false,
    nextOffset: nextPage.nextOffset,
    query: requestedQuery,
    total: nextPage.total,
  } satisfies PokemonMenuState;
};

export const getFailedPokemonMenuState = ({
  currentMenuState,
  requestedVersionGroupSlug,
  requestedQuery,
}: PokemonMenuStateIdentity & {
  currentMenuState: PokemonMenuState;
}) => {
  if (
    currentMenuState.versionGroupSlug !== requestedVersionGroupSlug ||
    currentMenuState.query !== requestedQuery
  ) {
    return currentMenuState;
  }

  return {
    ...currentMenuState,
    loadState: "error",
    loadingMore: false,
  } satisfies PokemonMenuState;
};
