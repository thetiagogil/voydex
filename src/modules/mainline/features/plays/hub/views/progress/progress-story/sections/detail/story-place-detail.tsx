"use client";

import { useState } from "react";

import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { SheetSection } from "@/shared/components/sheet-section";
import { Button } from "@/shared/components/ui/button";

import type { StoryMatchupBattle } from "../../data/story-matchups-model";
import type { StoryPlacePokemonGroup } from "../../data/story-place-pokemon";
import type { StoryPlace } from "../../types";
import { StoryMilestoneBattles } from "./story-milestone-battles";

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
 * A place on the Story's way opened in full (#199): what happens there, the
 * battles fought there and the Pokémon found there in the Play's game,
 * grouped by how you meet them. They come with the Story, so a place opens
 * with them at once. Beside the route (`compact`) they're sprites, with
 * their names and levels a sheet away; in a sheet they're one line each.
 */
export const StoryPlaceDetail = ({
  battles,
  compact,
  note,
  onBattleSelect,
  place,
  pokemon,
}: {
  battles: StoryMatchupBattle[];
  compact: boolean;
  /* What happens there, in full. */
  note: string | null;
  onBattleSelect: (battle: StoryMatchupBattle) => void;
  place: StoryPlace;
  /* The Pokémon found there, by way. */
  pokemon: StoryPlacePokemonGroup[];
}) => {
  const [detailsOpen, setDetailsOpen] = useState(false);

  return (
    <>
      {note ? <p className="text-ink text-15 font-semibold">{note}</p> : null}
      <StoryMilestoneBattles battles={battles} onSelect={onBattleSelect} />
      <SheetSection
        title="Pokémon found here"
        action={
          compact && pokemon.length ? (
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
        {!pokemon.length ? (
          <p className="text-ink-3 text-14 font-semibold">
            No wild Pokémon here.
          </p>
        ) : compact ? (
          <PokemonSprites groups={pokemon} />
        ) : (
          <PokemonRows groups={pokemon} />
        )}
      </SheetSection>
      {compact && pokemon.length ? (
        <OverlaySheet
          open={detailsOpen}
          onOpenChange={setDetailsOpen}
          size="sm"
          title={`Pokémon at ${place.name}`}
          bodyClassName="grid content-start gap-6"
        >
          <PokemonRows groups={pokemon} />
        </OverlaySheet>
      ) : null}
    </>
  );
};
