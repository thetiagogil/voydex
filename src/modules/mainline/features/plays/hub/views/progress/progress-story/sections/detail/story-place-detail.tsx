"use client";

import { useEffect, useState } from "react";

import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SheetSection } from "@/shared/components/sheet-section";

import type { StoryMatchupBattle } from "../../data/story-matchups-model";
import type { StoryPlacePokemon } from "../../data/story-place-pokemon";
import { loadStoryPlacePokemonAction } from "../../server/story-place-action";
import type { StoryPlace } from "../../types";
import { StoryMilestoneBattles } from "./story-milestone-battles";

type PokemonState =
  | { status: "loading" }
  | { message: string; status: "error" }
  | { pokemon: StoryPlacePokemon[]; status: "ready" };

/*
 * A place on the Story's way opened in full (#199): which milestone it
 * leads to, the battles fought there and the Pokémon found there, loaded
 * when it opens.
 */
export const StoryPlaceDetail = ({
  battles,
  onBattleSelect,
  place,
  toward,
  versionGroupId,
}: {
  battles: StoryMatchupBattle[];
  onBattleSelect: (battle: StoryMatchupBattle) => void;
  place: StoryPlace;
  /* The milestone the route reaches next from here. */
  toward: string | null;
  versionGroupId: number;
}) => {
  const [loaded, setLoaded] = useState<{
    key: string;
    state: PokemonState;
  } | null>(null);
  const key = `${versionGroupId}-${place.id}`;
  const state: PokemonState =
    loaded?.key === key ? loaded.state : { status: "loading" };

  useEffect(() => {
    let current = true;

    loadStoryPlacePokemonAction({
      locationId: place.id,
      versionGroupId,
    }).then((result) => {
      if (current) {
        setLoaded({
          key,
          state:
            result.status === "success"
              ? { pokemon: result.pokemon, status: "ready" }
              : { message: result.message, status: "error" },
        });
      }
    });

    return () => {
      current = false;
    };
  }, [key, place.id, versionGroupId]);

  return (
    <>
      {toward ? (
        <p className="text-ink-2 text-14 flex items-center gap-2 font-bold">
          <AppIcon icon={appIcons.product.journey} size="sm" />
          On the way to {toward}
        </p>
      ) : null}
      <StoryMilestoneBattles battles={battles} onSelect={onBattleSelect} />
      <SheetSection title="Pokémon found here">
        {state.status === "loading" ? (
          <p className="text-ink-3 text-14 font-semibold" aria-live="polite">
            Looking around…
          </p>
        ) : state.status === "error" ? (
          <p className="text-ink-2 text-14 font-semibold" role="alert">
            {state.message}
          </p>
        ) : state.pokemon.length ? (
          <ul className="grid gap-2">
            {state.pokemon.map((pokemon) => (
              <li
                key={pokemon.formId}
                className="bg-surface-2 flex min-h-14 items-center gap-3 rounded-xl px-3 py-2"
              >
                <PokemonAvatar
                  className="size-10 shrink-0"
                  decorative
                  imageUrl={getPokemonFormImageUrl(
                    { name: pokemon.name, slug: pokemon.slug },
                    "sm",
                  )}
                  name={pokemon.name}
                  typeSlug={null}
                />
                <span className="grid min-w-0">
                  <b className="text-ink text-15 truncate font-extrabold">
                    {pokemon.name}
                  </b>
                  <span className="text-ink-3 text-13 font-semibold">
                    {[pokemon.levels, pokemon.ways.join(", "), pokemon.onlyIn]
                      .filter(Boolean)
                      .join(" · ")}
                  </span>
                </span>
              </li>
            ))}
          </ul>
        ) : (
          <p className="text-ink-3 text-14 font-semibold">
            No wild Pokémon here.
          </p>
        )}
      </SheetSection>
    </>
  );
};
