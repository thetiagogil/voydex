import { type UIEvent, useCallback, useMemo, useState } from "react";

import type { PokemonDetailMenuPokemon } from "@/modules/reference/types";
import {
  createPokemonMenuState,
  getPokemonMenuGroupHeaderBySlug,
  normalizePokemonMenuQuery,
  PRELOAD_REMAINING_POKEMON,
  type PokemonMenuLoadMode,
  type PokemonMenuState,
} from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-model";
import {
  fetchPokemonMenuPage,
  POKEMON_MENU_PAGE_SIZE,
} from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-api";
import {
  getActivePokemonMenuState,
  getFailedPokemonMenuState,
  getPendingPokemonMenuState,
  getPokemonMenuPreloadTriggerIndex,
  getResolvedPokemonMenuState,
} from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-state";

type UsePokemonDetailSpeciesMenuParams = {
  activeVersionGroupSlug: string | null;
  activePokemonSlug: string;
};

export const usePokemonDetailSpeciesMenu = ({
  activeVersionGroupSlug,
  activePokemonSlug,
}: UsePokemonDetailSpeciesMenuParams) => {
  const [inputValue, setInputValue] = useState("");
  const [menuState, setMenuState] = useState<PokemonMenuState>(() => {
    return createPokemonMenuState(activeVersionGroupSlug);
  });
  const activeQuery = normalizePokemonMenuQuery(inputValue);
  const activeMenuState = getActivePokemonMenuState({
    activeVersionGroupSlug,
    activeQuery,
    menuState,
  });
  const pokemonItems = activeMenuState.items;
  const loadState = activeMenuState.loadState;
  const loadingMore = activeMenuState.loadingMore;
  const canLoadMorePokemon = activeMenuState.nextOffset !== null;
  const preloadTriggerIndex = getPokemonMenuPreloadTriggerIndex({
    canLoadMorePokemon,
    itemCount: pokemonItems.length,
  });
  const activePokemonItem = useMemo(() => {
    return (
      pokemonItems.find((pokemonItem) => {
        return pokemonItem.slug === activePokemonSlug;
      }) ?? null
    );
  }, [activePokemonSlug, pokemonItems]);
  const groupHeaderBySlug = useMemo(() => {
    return getPokemonMenuGroupHeaderBySlug(pokemonItems);
  }, [pokemonItems]);

  const requestPokemonPage = useCallback(
    ({
      mode,
      offset,
      query,
    }: {
      mode: PokemonMenuLoadMode;
      offset: number;
      query: string;
    }) => {
      if (!activeVersionGroupSlug) {
        return;
      }

      const requestedVersionGroupSlug = activeVersionGroupSlug;
      const requestedQuery = normalizePokemonMenuQuery(query);

      setMenuState((currentMenuState) => {
        return getPendingPokemonMenuState({
          currentMenuState,
          mode,
          requestedVersionGroupSlug,
          requestedQuery,
        });
      });

      void fetchPokemonMenuPage({
        versionGroupSlug: requestedVersionGroupSlug,
        limit: POKEMON_MENU_PAGE_SIZE,
        offset,
        query: requestedQuery,
      })
        .then((nextPage) => {
          setMenuState((currentMenuState) => {
            return getResolvedPokemonMenuState({
              currentMenuState,
              mode,
              nextPage,
              requestedVersionGroupSlug,
              requestedQuery,
            });
          });
        })
        .catch(() => {
          setMenuState((currentMenuState) => {
            return getFailedPokemonMenuState({
              currentMenuState,
              requestedVersionGroupSlug,
              requestedQuery,
            });
          });
        });
    },
    [activeVersionGroupSlug],
  );

  const loadInitialPokemonItems = useCallback(() => {
    if (
      !activeVersionGroupSlug ||
      loadState === "loading" ||
      loadState === "loaded"
    ) {
      return;
    }

    requestPokemonPage({
      mode: "replace",
      offset: 0,
      query: inputValue,
    });
  }, [activeVersionGroupSlug, inputValue, loadState, requestPokemonPage]);

  const loadNextPokemonPage = useCallback(() => {
    if (
      !activeVersionGroupSlug ||
      !canLoadMorePokemon ||
      loadingMore ||
      loadState === "loading"
    ) {
      return;
    }

    requestPokemonPage({
      mode: "append",
      offset: activeMenuState.nextOffset ?? 0,
      query: activeMenuState.query,
    });
  }, [
    activeVersionGroupSlug,
    activeMenuState.nextOffset,
    activeMenuState.query,
    canLoadMorePokemon,
    loadingMore,
    loadState,
    requestPokemonPage,
  ]);

  const updateInputValue = useCallback(
    (nextInputValue: string) => {
      setInputValue(nextInputValue);

      requestPokemonPage({
        mode: "replace",
        offset: 0,
        query: nextInputValue,
      });
    },
    [requestPokemonPage],
  );

  const handlePokemonHighlighted = useCallback(
    (pokemonItem: PokemonDetailMenuPokemon | undefined) => {
      if (!pokemonItem || preloadTriggerIndex < 0) {
        return;
      }

      const itemIndex = pokemonItems.findIndex((currentPokemonItem) => {
        return currentPokemonItem.slug === pokemonItem.slug;
      });

      if (itemIndex >= preloadTriggerIndex) {
        loadNextPokemonPage();
      }
    },
    [loadNextPokemonPage, pokemonItems, preloadTriggerIndex],
  );

  const handleListScroll = useCallback(
    (event: UIEvent<HTMLDivElement>) => {
      if (!pokemonItems.length || !canLoadMorePokemon) {
        return;
      }

      const listElement = event.currentTarget;
      const preloadRatio = Math.max(
        0,
        (pokemonItems.length - PRELOAD_REMAINING_POKEMON) / pokemonItems.length,
      );
      const preloadScrollPosition = listElement.scrollHeight * preloadRatio;

      if (
        listElement.scrollTop + listElement.clientHeight >=
        preloadScrollPosition
      ) {
        loadNextPokemonPage();
      }
    },
    [canLoadMorePokemon, loadNextPokemonPage, pokemonItems.length],
  );

  return {
    activePokemonItem,
    groupHeaderBySlug,
    handleListScroll,
    handlePokemonHighlighted,
    inputValue,
    loadInitialPokemonItems,
    loadingMore,
    loadState,
    pokemonItems,
    updateInputValue,
  };
};
