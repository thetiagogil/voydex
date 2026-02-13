"use client";

import { Icon } from "@/components/shared/icon";
import { Badge } from "@/components/ui/badge";
import { HoverCardContent } from "@/components/ui/hover-card";
import { Separator } from "@/components/ui/separator";
import type { PlayPokemon } from "@/types/play";

interface PokemonCardHoverProps {
  pokemon: PlayPokemon;
  hasNatureAndAbility?: boolean;
}

export const PokemonCardHover = ({
  pokemon,
  hasNatureAndAbility,
}: PokemonCardHoverProps) => {
  return (
    <HoverCardContent className="w-72 p-0" align="center" side="top">
      <div className="p-4">
        <div className="flex flex-col gap-1">
          <div className="text-muted-foreground flex items-center gap-1 text-sm">
            <Icon type="info" size={12} />
            <span>Info</span>
          </div>

          <div className="flex items-baseline gap-2 text-sm">
            <div className="flex items-baseline gap-1 text-sm">
              <span className="truncate">{pokemon.species?.name}</span>
              {pokemon.nickname && (
                <span className="truncate">({pokemon.nickname})</span>
              )}
            </div>
            <span className="truncate">Lv. {pokemon.level}</span>
          </div>
        </div>

        <Separator className="my-2" />

        {hasNatureAndAbility && (
          <>
            <div className="flex flex-col gap-1">
              <div className="text-muted-foreground flex items-center gap-1 text-sm">
                <Icon type="ability" size={12} />
                <span>Ability</span>
              </div>

              {pokemon.ability?.name ? (
                <span className="truncate text-sm">
                  {pokemon.ability?.name}
                </span>
              ) : (
                <span className="text-muted-foreground text-xs italic">
                  No ability
                </span>
              )}
            </div>

            <Separator className="my-2" />

            <div className="flex flex-col gap-1">
              <div className="text-muted-foreground flex items-center gap-1 text-sm">
                <Icon type="nature" size={12} />
                <span>Nature</span>
              </div>

              {pokemon.nature?.name ? (
                <span className="truncate text-sm">{pokemon.nature?.name}</span>
              ) : (
                <span className="text-muted-foreground text-xs italic">
                  No nature
                </span>
              )}
            </div>

            <Separator className="my-2" />
          </>
        )}

        <div className="flex flex-col gap-1">
          <div className="text-muted-foreground flex items-center gap-1 text-sm">
            <Icon type="move" size={12} />
            <span>Moves</span>
          </div>

          {pokemon.moves.length > 0 ? (
            <div className="flex flex-wrap gap-1">
              {pokemon.moves.map((move, index) =>
                move ? (
                  <Badge key={move.id} variant="outline">
                    <span className="truncate text-xs">{move.name}</span>
                  </Badge>
                ) : (
                  <span
                    key={index}
                    className="text-muted-foreground text-xs italic"
                  >
                    No moves
                  </span>
                ),
              )}
            </div>
          ) : (
            <span className="text-muted-foreground text-xs italic">
              No moves
            </span>
          )}
        </div>
      </div>
    </HoverCardContent>
  );
};
