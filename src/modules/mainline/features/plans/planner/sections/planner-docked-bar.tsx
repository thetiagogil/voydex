"use client";

import type { ReactNode } from "react";

import type { PlannerSlots } from "@/modules/mainline/features/plans/planner/client/use-planner-team";
import type {
  PlannerGame,
  PlannerPokemon,
  PlannerVersionGroup,
} from "@/modules/mainline/features/plans/types";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import {
  PokemonAvatar,
  PokemonAvatarSlot,
} from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { DockedBar } from "@/shared/components/docked-bar";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type PlannerDockedBarProps = {
  byId: Map<number, PlannerPokemon>;
  /* A locked Plan reads its team: no Save in the bar. */
  canEdit: boolean;
  canSave: boolean;
  /* The Planner's band: once it scrolls away, the bar docks. */
  children: ReactNode;
  isSaving: boolean;
  onOpenSlot: (index: number) => void;
  onSave: () => void;
  slots: PlannerSlots;
  /* The Plan's name; a new Plan has none yet. */
  title: string;
  /* The version the Plan is for; null when it is for either. */
  versionGame: PlannerGame | null;
  versionGroup: PlannerVersionGroup;
};

/*
 * The team follows you down the list (`DockedBar`, as a Play's head does):
 * once the Planner's band scrolls away, the game's cover, the Plan's name,
 * the six slots as small Pokémon and a short Save dock to the top edge, so a
 * pick shows where it landed without scrolling back. A small Pokémon opens its
 * slot; an open slot is a dashed ring.
 */
export const PlannerDockedBar = ({
  byId,
  canEdit,
  canSave,
  children,
  isSaving,
  onOpenSlot,
  onSave,
  slots,
  title,
  versionGame,
  versionGroup,
}: PlannerDockedBarProps) => {
  const coverGame = versionGame ?? versionGroup.games[0];
  const filled = slots.filter(Boolean).length;

  return (
    <DockedBar
      picture={
        coverGame ? (
          <GameCover
            alt=""
            coverImageUrl={getGameCoverImageUrlBySlug(coverGame.slug)}
            gameName={coverGame.name}
            gameSlug={coverGame.slug}
            size="dock"
          />
        ) : undefined
      }
      scrollPadding="92px"
      title={title}
      trailing={
        <div className="flex min-w-0 items-center gap-3">
          <ol
            aria-label={`Your team, ${filled} of 6`}
            className="grid grid-cols-[repeat(6,36px)] gap-1.5 sm:grid-cols-[repeat(6,44px)] sm:gap-2 lg:grid-cols-[repeat(6,52px)]"
          >
            {slots.map((member, index) => {
              const pokemon = member ? byId.get(member.formId) : undefined;

              return (
                <li key={pokemon ? `${pokemon.formId}-${index}` : index}>
                  {pokemon ? (
                    <button
                      type="button"
                      onClick={() => onOpenSlot(index)}
                      className="focus-ring block w-full rounded-full transition-transform duration-150 hover:-translate-y-0.5"
                    >
                      <PokemonAvatar
                        decorative
                        imageUrl={pokemon.imageUrl}
                        name={pokemon.name}
                        typeSlug={pokemon.types[0]?.slug ?? null}
                        className="bubble"
                      />
                      <span className="sr-only">
                        {pokemon.name}, slot {index + 1}. Edit
                      </span>
                    </button>
                  ) : (
                    <PokemonAvatarSlot label={`Empty slot ${index + 1}`} />
                  )}
                </li>
              );
            })}
          </ol>
          {canEdit ? (
            <Button
              type="button"
              size="sm"
              disabled={!canSave || isSaving}
              onClick={onSave}
            >
              {isSaving ? <Spinner data-icon="inline-start" /> : null}
              Save
            </Button>
          ) : null}
        </div>
      }
    >
      {children}
    </DockedBar>
  );
};
