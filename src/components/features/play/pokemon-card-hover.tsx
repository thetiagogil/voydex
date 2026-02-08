"use client";

import { Icon } from "@/components/shared/icon";
import { Badge } from "@/components/ui/badge";
import { HoverCardContent } from "@/components/ui/hover-card";
import { Separator } from "@/components/ui/separator";

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
              {pokemon.moves.map((move) =>
                move ? (
                  <Badge key={move.id} variant="outline">
                    <span className="truncate text-xs">{move.name}</span>
                  </Badge>
                ) : (
                  <span className="text-muted-foreground text-xs italic">
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
