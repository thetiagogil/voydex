import { type UIEvent, useCallback, useMemo, useState } from "react";

import type { PokemonDetailMenuPokemon } from "@/modules/codex/shared/types";
import {
  createPokemonMenuState,
  fetchPokemonMenuPage,
  getPokemonMenuGroupHeaderBySlug,
  mergePokemonMenuItems,
  normalizePokemonMenuQuery,
  POKEMON_MENU_PAGE_SIZE,
  PRELOAD_REMAINING_POKEMON,
  type PokemonMenuLoadMode,
  type PokemonMenuState,
} from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-pokemon-picker-utils";

type UsePokemonDetailMenuParams = {
  activeGameSlug: string | null;
  activePokemonSlug: string;
};

export const usePokemonDetailMenu = ({
  activeGameSlug,
  activePokemonSlug,
}: UsePokemonDetailMenuParams) => {
  const [inputValue, setInputValue] = useState("");
  const [menuState, setMenuState] = useState<PokemonMenuState>(() => {
    return createPokemonMenuState(activeGameSlug);
  });
  const activeQuery = normalizePokemonMenuQuery(inputValue);
  const activeMenuState =
    menuState.gameSlug === activeGameSlug && menuState.query === activeQuery
      ? menuState
      : createPokemonMenuState(activeGameSlug, activeQuery);
  const pokemonItems = activeMenuState.items;
  const loadState = activeMenuState.loadState;
  const loadingMore = activeMenuState.loadingMore;
  const canLoadMorePokemon = activeMenuState.nextOffset !== null;
  const preloadTriggerIndex = canLoadMorePokemon
    ? Math.max(0, pokemonItems.length - PRELOAD_REMAINING_POKEMON - 1)
    : -1;
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
      if (!activeGameSlug) {
        return;
      }

      const requestedGameSlug = activeGameSlug;
      const requestedQuery = normalizePokemonMenuQuery(query);

      setMenuState((currentMenuState) => {
        const shouldAppend =
          mode === "append" &&
          currentMenuState.gameSlug === requestedGameSlug &&
          currentMenuState.query === requestedQuery;

        return {
          gameSlug: requestedGameSlug,
          items: shouldAppend ? currentMenuState.items : [],
          loadState: shouldAppend ? "loaded" : "loading",
          loadingMore: shouldAppend,
          nextOffset: shouldAppend ? currentMenuState.nextOffset : null,
          query: requestedQuery,
          total: shouldAppend ? currentMenuState.total : 0,
        };
      });

      void fetchPokemonMenuPage({
        gameSlug: requestedGameSlug,
        limit: POKEMON_MENU_PAGE_SIZE,
        offset,
        query: requestedQuery,
      })
        .then((nextPage) => {
          setMenuState((currentMenuState) => {
            if (
              currentMenuState.gameSlug !== requestedGameSlug ||
              currentMenuState.query !== requestedQuery
            ) {
              return currentMenuState;
            }

            return {
              gameSlug: requestedGameSlug,
              items:
                mode === "append"
                  ? mergePokemonMenuItems(
                      currentMenuState.items,
                      nextPage.pokemon,
                    )
                  : nextPage.pokemon,
              loadState: "loaded",
              loadingMore: false,
              nextOffset: nextPage.nextOffset,
              query: requestedQuery,
              total: nextPage.total,
            };
          });
        })
        .catch(() => {
          setMenuState((currentMenuState) => {
            if (
              currentMenuState.gameSlug !== requestedGameSlug ||
              currentMenuState.query !== requestedQuery
            ) {
              return currentMenuState;
            }

            return {
              ...currentMenuState,
              loadState: "error",
              loadingMore: false,
            };
          });
        });
    },
    [activeGameSlug],
  );

  const loadInitialPokemonItems = useCallback(() => {
    if (!activeGameSlug || loadState === "loading" || loadState === "loaded") {
      return;
    }

    requestPokemonPage({
      mode: "replace",
      offset: 0,
      query: inputValue,
    });
  }, [activeGameSlug, inputValue, loadState, requestPokemonPage]);

  const loadNextPokemonPage = useCallback(() => {
    if (
      !activeGameSlug ||
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
    activeGameSlug,
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
