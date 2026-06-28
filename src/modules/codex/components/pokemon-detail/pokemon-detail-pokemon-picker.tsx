"use client";

import { useRouter } from "next/navigation";
import { Fragment, type UIEvent, useCallback, useMemo, useState } from "react";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import type {
  PokemonDetailMenuPage,
  PokemonDetailMenuPokemon,
} from "@/modules/codex/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Button } from "@/shared/components/ui/button";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
  ComboboxValue,
} from "@/shared/components/ui/combobox";
import { Spinner } from "@/shared/components/ui/spinner";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type PokemonDetailPokemonPickerProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
    slug: string;
  };
};

type PokemonMenuLoadState = "idle" | "loading" | "loaded" | "error";

type PokemonMenuLoadMode = "append" | "replace";

type PokemonMenuState = {
  gameSlug: string | null;
  items: PokemonDetailMenuPokemon[];
  loadState: PokemonMenuLoadState;
  loadingMore: boolean;
  nextOffset: number | null;
  query: string;
  total: number;
};

type PokemonMenuPageRequest = {
  gameSlug: string;
  limit: number;
  offset: number;
  query: string;
};

const POKEMON_MENU_PAGE_SIZE = 96;
const PRELOAD_REMAINING_POKEMON = 48;

const pokemonMenuRequests = new Map<string, Promise<PokemonDetailMenuPage>>();

const createPokemonMenuState = (
  gameSlug: string | null,
  query = "",
): PokemonMenuState => {
  return {
    gameSlug,
    items: [],
    loadState: gameSlug ? "idle" : "loaded",
    loadingMore: false,
    nextOffset: null,
    query,
    total: 0,
  };
};

const normalizePokemonMenuQuery = (query: string) => {
  return query.trim();
};

const getPokemonMenuRequestKey = ({
  gameSlug,
  limit,
  offset,
  query,
}: PokemonMenuPageRequest) => {
  return `${gameSlug}:${query}:${offset}:${limit}`;
};

const getPokemonMenuApiHref = ({
  gameSlug,
  limit,
  offset,
  query,
}: PokemonMenuPageRequest) => {
  const searchParams = new URLSearchParams({
    game: gameSlug,
    limit: String(limit),
    offset: String(offset),
  });

  if (query) {
    searchParams.set("q", query);
  }

  return `/api/codex/pokemon-menu?${searchParams}`;
};

const fetchPokemonMenuPage = (requestParams: PokemonMenuPageRequest) => {
  const requestKey = getPokemonMenuRequestKey(requestParams);
  const cachedRequest = pokemonMenuRequests.get(requestKey);

  if (cachedRequest) {
    return cachedRequest;
  }

  const request = fetch(getPokemonMenuApiHref(requestParams), {
    headers: { Accept: "application/json" },
  })
    .then(async (response) => {
      if (!response.ok) {
        throw new Error("Unable to load Pokémon menu.");
      }

      const data = (await response.json()) as PokemonDetailMenuPage;

      return data;
    })
    .catch((error: unknown) => {
      pokemonMenuRequests.delete(requestKey);
      throw error;
    });

  pokemonMenuRequests.set(requestKey, request);

  return request;
};

const mergePokemonMenuItems = (
  currentItems: PokemonDetailMenuPokemon[],
  nextItems: PokemonDetailMenuPokemon[],
) => {
  const pokemonBySlug = new Map<string, PokemonDetailMenuPokemon>();

  for (const pokemonItem of currentItems) {
    pokemonBySlug.set(pokemonItem.slug, pokemonItem);
  }

  for (const pokemonItem of nextItems) {
    pokemonBySlug.set(pokemonItem.slug, pokemonItem);
  }

  return [...pokemonBySlug.values()];
};

const getPokemonMenuEmptyLabel = (
  loadState: PokemonMenuLoadState,
  activeGameSlug: string | null,
) => {
  if (!activeGameSlug) {
    return "No game selected.";
  }

  if (loadState === "error") {
    return "Could not load Pokémon.";
  }

  return "No Pokémon found.";
};

const getPokemonPortraitType = (pokemon: PokemonDetailMenuPokemon) => {
  const primaryTypeSlug = pokemon.primaryType?.slug;

  return primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
    ? primaryTypeSlug
    : null;
};

const getPokemonHref = (
  gameSlug: string | null,
  pokemon: PokemonDetailMenuPokemon,
) => {
  return gameSlug
    ? appRoutes.codexPokemonGameSpecies(gameSlug, pokemon.slug)
    : appRoutes.codexPokemonSpecies(pokemon.slug);
};

const getPokemonSearchValue = (pokemon: PokemonDetailMenuPokemon) => {
  const formattedNumber = formatPokemonNationalNumber(pokemon.nationalNumber);
  const formattedPokedexNumber = pokemon.pokedexNumber
    ? formatPokemonNationalNumber(pokemon.pokedexNumber)
    : "";

  return [
    formattedNumber,
    pokemon.nationalNumber,
    formattedPokedexNumber,
    pokemon.pokedexNumber,
    pokemon.name,
    pokemon.pokedexGroup?.name,
  ]
    .filter(Boolean)
    .join(" ");
};

const isPokemonItemEqual = (
  item: PokemonDetailMenuPokemon,
  value: PokemonDetailMenuPokemon,
) => {
  return item.slug === value.slug;
};

const getPokemonMenuGroupHeaderBySlug = (
  pokemonItems: PokemonDetailMenuPokemon[],
) => {
  const groupHeaderBySlug = new Map<string, string>();
  let previousGroupKey: string | null = null;

  for (const pokemonItem of pokemonItems) {
    const group = pokemonItem.pokedexGroup;
    const groupKey = group?.key ?? "ungrouped";

    if (group && groupKey !== previousGroupKey) {
      groupHeaderBySlug.set(pokemonItem.slug, group.name);
    }

    previousGroupKey = groupKey;
  }

  return groupHeaderBySlug;
};

export const PokemonDetailPokemonPicker = ({
  activeGameSlug,
  activePokemon,
}: PokemonDetailPokemonPickerProps) => {
  const router = useRouter();
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
        return pokemonItem.slug === activePokemon.slug;
      }) ?? null
    );
  }, [activePokemon.slug, pokemonItems]);
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

  const navigateToPokemon = (pokemonItem: PokemonDetailMenuPokemon | null) => {
    if (!pokemonItem || pokemonItem.slug === activePokemon.slug) {
      return;
    }

    router.push(getPokemonHref(activeGameSlug, pokemonItem));
  };

  return (
    <Combobox
      items={pokemonItems}
      inputValue={inputValue}
      value={activePokemonItem}
      filter={null}
      itemToStringLabel={getPokemonSearchValue}
      itemToStringValue={(pokemonItem) => pokemonItem.slug}
      isItemEqualToValue={isPokemonItemEqual}
      onInputValueChange={updateInputValue}
      onItemHighlighted={handlePokemonHighlighted}
      onOpenChange={(open) => {
        if (open) {
          loadInitialPokemonItems();
        }
      }}
      autoHighlight
    >
      <ComboboxTrigger
        onClick={loadInitialPokemonItems}
        onFocus={loadInitialPokemonItems}
        onPointerEnter={loadInitialPokemonItems}
        render={
          <Button
            variant="ghost"
            disabled={!activeGameSlug}
            aria-label="Choose Pokémon"
            className="hover:text-primary h-auto max-w-full justify-start px-0 py-0 text-left text-3xl font-semibold tracking-normal hover:bg-transparent aria-expanded:bg-transparent"
          />
        }
      >
        <span className="min-w-0 truncate">
          <ComboboxValue>
            {(selectedPokemon: PokemonDetailMenuPokemon | null) => {
              const displayPokemon = selectedPokemon ?? activePokemon;

              return (
                <span>
                  {formatPokemonNationalNumber(displayPokemon.nationalNumber)}{" "}
                  {displayPokemon.name}
                </span>
              );
            }}
          </ComboboxValue>
        </span>
      </ComboboxTrigger>
      <ComboboxContent
        aria-busy={loadState === "loading" || loadingMore}
        className="w-96 max-w-[calc(100vw-2rem)]"
      >
        <ComboboxInput
          showTrigger={false}
          onFocus={loadInitialPokemonItems}
          placeholder="Search by name or number"
        />
        <ComboboxEmpty>
          {loadState === "loading" ? (
            <Spinner aria-label="Loading Pokémon" className="text-primary" />
          ) : (
            getPokemonMenuEmptyLabel(loadState, activeGameSlug)
          )}
        </ComboboxEmpty>
        <ComboboxList className="max-h-96 pt-0" onScroll={handleListScroll}>
          {(pokemonItem: PokemonDetailMenuPokemon) => {
            const isActive = pokemonItem.slug === activePokemon.slug;
            const groupHeader = groupHeaderBySlug.get(pokemonItem.slug);
            const displayNumber =
              pokemonItem.pokedexNumber ?? pokemonItem.nationalNumber;

            return (
              <Fragment key={pokemonItem.id}>
                {groupHeader ? (
                  <div className="bg-popover text-muted-foreground border-border/40 sticky top-0 z-30 border-b px-2 py-1.5 text-xs font-semibold tracking-wide">
                    {groupHeader}
                  </div>
                ) : null}
                <ComboboxItem
                  value={pokemonItem}
                  aria-current={isActive ? "page" : undefined}
                  onClick={() => navigateToPokemon(pokemonItem)}
                  className={cn(
                    "min-h-14 gap-3",
                    isActive && "bg-accent text-accent-foreground",
                  )}
                >
                  <PokemonPortrait
                    alt={pokemonItem.imageAlt}
                    imageUrl={pokemonItem.imageUrl}
                    type={getPokemonPortraitType(pokemonItem)}
                    className="size-11 shrink-0 rounded-lg"
                    imageClassName="p-1"
                  />
                  <span className="min-w-0 flex-1">
                    <span className="text-muted-foreground block text-xs tabular-nums">
                      {formatPokemonNationalNumber(displayNumber)}
                    </span>
                    <span className="block truncate font-medium">
                      {pokemonItem.name}
                    </span>
                  </span>
                  <PokemonTypeList
                    primaryType={pokemonItem.primaryType}
                    secondaryType={pokemonItem.secondaryType}
                    badgeDisplay="icon"
                    badgeSize="sm"
                    className="ml-auto shrink-0 gap-1"
                  />
                </ComboboxItem>
              </Fragment>
            );
          }}
        </ComboboxList>
        {loadingMore ? (
          <div className="flex justify-center py-2">
            <Spinner
              aria-label="Loading more Pokémon"
              className="text-primary"
            />
          </div>
        ) : null}
      </ComboboxContent>
    </Combobox>
  );
};
