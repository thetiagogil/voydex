"use client";

import { useState } from "react";

import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { SheetSection } from "@/shared/components/sheet-section";
import { Button } from "@/shared/components/ui/button";

import type { StoryMatchupBattle } from "../../data/story-matchups-model";
import {
  isStoryGiftOrTradeGroup,
  type StoryPlacePokemonGroup,
} from "../../data/story-place-pokemon";
import type { StoryPlace } from "../../types";
import { StoryMilestoneBattles } from "./story-milestone-battles";
import {
  StoryPokemonRows,
  StoryPokemonSprites,
} from "./story-place-pokemon-list";

/*
 * A place on the Story's way opened in full (#199): what happens there, the
 * battles fought there and the Pokémon found there in the Play's game,
 * grouped by how you meet them. They come with the Story, so a place opens
 * with them at once. Beside the route (`compact`) the wild ones are sprites,
 * with their names and levels a sheet away; in a sheet they're one line
 * each. A gift or a trade (#322) is always a line, saying who gives it
 * and when, so it's never a click away; prizes and Pokémon you buy wait in
 * the sheet with the wild ones.
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
  /* Beside the route, gifts and trades are a line each; the rest, sprites. */
  const glance = pokemon.filter((group) => !isStoryGiftOrTradeGroup(group));
  const handedOver = pokemon.filter(isStoryGiftOrTradeGroup);

  return (
    <>
      {note ? <p className="text-ink text-15 font-semibold">{note}</p> : null}
      <StoryMilestoneBattles battles={battles} onSelect={onBattleSelect} />
      <SheetSection
        title="Pokémon found here"
        action={
          compact && glance.length ? (
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
          <>
            {glance.length ? <StoryPokemonSprites groups={glance} /> : null}
            {handedOver.length ? (
              <StoryPokemonRows groups={handedOver} />
            ) : null}
          </>
        ) : (
          <StoryPokemonRows groups={pokemon} />
        )}
      </SheetSection>
      {compact && glance.length ? (
        <OverlaySheet
          open={detailsOpen}
          onOpenChange={setDetailsOpen}
          size="sm"
          title={`Pokémon at ${place.name}`}
          bodyClassName="grid content-start gap-6"
        >
          <StoryPokemonRows groups={pokemon} />
        </OverlaySheet>
      ) : null}
    </>
  );
};
