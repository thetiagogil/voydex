"use client";

import { useEffect, useState } from "react";

import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { SheetSection } from "@/shared/components/sheet-section";
import { Button } from "@/shared/components/ui/button";

import type { StoryMatchupBattle } from "../../data/story-matchups-model";
import type { StoryPlacePokemonGroup } from "../../data/story-place-pokemon";
import { loadStoryPlacePokemonAction } from "../../server/story-place-action";
import type { StoryPlace } from "../../types";
import { StoryMilestoneBattles } from "./story-milestone-battles";

type PokemonState =
  | { status: "loading" }
  | { message: string; status: "error" }
  | { groups: StoryPlacePokemonGroup[]; status: "ready" };

const imageOf = (pokemon: { name: string; slug: string }) =>
  getPokemonFormImageUrl({ name: pokemon.name, slug: pokemon.slug }, "sm");

/* Each way's Pokémon as one line apiece: name and levels. */
const PokemonRows = ({ groups }: { groups: StoryPlacePokemonGroup[] }) => (
  <div className="grid gap-5">
    {groups.map((group) => (
      <section key={group.way} aria-label={group.way} className="grid gap-2">
        <h4 className="text-ink-2 text-13 font-bold">{group.way}</h4>
        <ul className="grid gap-2">
          {group.pokemon.map((pokemon) => (
            <li
              key={pokemon.formId}
              className="bg-surface-2 flex min-h-14 items-center gap-3 rounded-xl px-3 py-2"
            >
              <PokemonAvatar
                className="size-10 shrink-0"
                decorative
                imageUrl={imageOf(pokemon)}
                name={pokemon.name}
                typeSlug={null}
              />
              <span className="grid min-w-0">
                <b className="text-ink text-15 truncate font-extrabold">
                  {pokemon.name}
                </b>
                {pokemon.levels ? (
                  <span className="text-ink-3 text-13 font-semibold">
                    {pokemon.levels}
                  </span>
                ) : null}
              </span>
            </li>
          ))}
        </ul>
      </section>
    ))}
  </div>
);

/* Each way's Pokémon as a row of small sprites, to read at a glance. */
const PokemonSprites = ({ groups }: { groups: StoryPlacePokemonGroup[] }) => (
  <div className="grid gap-4">
    {groups.map((group) => (
      <section key={group.way} aria-label={group.way} className="grid gap-2">
        <h4 className="text-ink-2 text-13 font-bold">{group.way}</h4>
        <ul className="flex flex-wrap gap-2">
          {group.pokemon.map((pokemon) => (
            <li key={pokemon.formId}>
              <PokemonAvatar
                className="size-11"
                imageUrl={imageOf(pokemon)}
                name={pokemon.name}
                typeSlug={null}
              />
            </li>
          ))}
        </ul>
      </section>
    ))}
  </div>
);

/*
 * A place on the Story's way opened in full (#199): which milestone it
 * leads to, the battles fought there and the Pokémon found there in the
 * Play's game, grouped by how you meet them and loaded when it opens.
 * Beside the route (`compact`) they're sprites, with their names and levels
 * a sheet away; in a sheet they're one line each.
 */
export const StoryPlaceDetail = ({
  battles,
  compact,
  onBattleSelect,
  place,
  playId,
  toward,
}: {
  battles: StoryMatchupBattle[];
  compact: boolean;
  onBattleSelect: (battle: StoryMatchupBattle) => void;
  place: StoryPlace;
  playId: string;
  /* The milestone the route reaches next from here. */
  toward: string | null;
}) => {
  const key = `${playId}-${place.id}`;
  const [loaded, setLoaded] = useState<{
    key: string;
    state: PokemonState;
  } | null>(null);
  const [detailsOpen, setDetailsOpen] = useState(false);
  const state: PokemonState =
    loaded?.key === key ? loaded.state : { status: "loading" };

  useEffect(() => {
    let current = true;

    loadStoryPlacePokemonAction({ locationId: place.id, playId }).then(
      (result) => {
        if (current) {
          setLoaded({
            key,
            state:
              result.status === "success"
                ? { groups: result.groups, status: "ready" }
                : { message: result.message, status: "error" },
          });
        }
      },
    );

    return () => {
      current = false;
    };
  }, [key, place.id, playId]);

  return (
    <>
      {toward ? (
        <p className="text-ink-2 text-14 flex items-center gap-2 font-bold">
          <AppIcon icon={appIcons.product.journey} size="sm" />
          On the way to {toward}
        </p>
      ) : null}
      <StoryMilestoneBattles battles={battles} onSelect={onBattleSelect} />
      <SheetSection
        title="Pokémon found here"
        action={
          compact && state.status === "ready" && state.groups.length ? (
            <Button
              type="button"
              variant="ghost"
              size="sm"
              onClick={() => setDetailsOpen(true)}
            >
              See details
            </Button>
          ) : undefined
        }
      >
        {state.status === "loading" ? (
          <p className="text-ink-3 text-14 font-semibold" aria-live="polite">
            Looking around…
          </p>
        ) : state.status === "error" ? (
          <p className="text-ink-2 text-14 font-semibold" role="alert">
            {state.message}
          </p>
        ) : !state.groups.length ? (
          <p className="text-ink-3 text-14 font-semibold">
            No wild Pokémon here.
          </p>
        ) : compact ? (
          <PokemonSprites groups={state.groups} />
        ) : (
          <PokemonRows groups={state.groups} />
        )}
      </SheetSection>
      {compact && state.status === "ready" ? (
        <OverlaySheet
          open={detailsOpen}
          onOpenChange={setDetailsOpen}
          size="sm"
          title={`Pokémon at ${place.name}`}
          bodyClassName="grid content-start gap-6"
        >
          <PokemonRows groups={state.groups} />
        </OverlaySheet>
      ) : null}
    </>
  );
};
