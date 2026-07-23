"use client";

import { useState } from "react";

import { PokemonDetailGenerationGameMobileOption } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-game-option";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { getNavigationMenuControlClassName } from "@/shared/components/navigation-menu/navigation-menu-control";
import { Button } from "@/shared/components/ui/button";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";

type PokemonDetailGenerationMenuMobileProps = {
  generations: PokemonDetailGenerationNavigationItem[];
};

type PokemonDetailGenerationMenuMobileItemProps = {
  generation: PokemonDetailGenerationNavigationItem;
};

const PokemonDetailGenerationMenuMobileItem = ({
  generation,
}: PokemonDetailGenerationMenuMobileItemProps) => {
  const [open, setOpen] = useState(false);

  return (
    <Sheet open={open} onOpenChange={setOpen}>
      <SheetTrigger
        render={
          <Button
            variant="outline"
            size="sm"
            className={getNavigationMenuControlClassName({
              active: generation.isActive,
              className:
                "w-full min-w-0 justify-center has-data-[icon=inline-end]:pr-0",
            })}
          />
        }
      >
        {generation.label}
        <AppIcon icon={appIcons.actions.expand} inline="end" aria-hidden />
      </SheetTrigger>
      <SheetContent
        side="bottom"
        className="border-app-surface-border bg-popover max-h-[82dvh] gap-0 rounded-t-xl p-0 md:hidden"
      >
        <SheetHeader>
          <SheetTitle>Generation {generation.label}</SheetTitle>
          <SheetDescription>
            Choose a game where this Pokémon can be referenced.
          </SheetDescription>
        </SheetHeader>

        <div className="min-h-0 flex-1 overflow-y-auto border-t p-4">
          <div className="grid gap-1">
            {generation.games.map((game) => (
              <PokemonDetailGenerationGameMobileOption
                key={game.id}
                game={game}
                onSelect={() => {
                  setOpen(false);
                }}
              />
            ))}
          </div>
        </div>
      </SheetContent>
    </Sheet>
  );
};

export const PokemonDetailGenerationMenuMobile = ({
  generations,
}: PokemonDetailGenerationMenuMobileProps) => {
  return (
    <div className="grid w-full grid-cols-5 gap-1 md:hidden">
      {generations.map((generation) => (
        <div key={generation.id} className="min-w-0">
          <PokemonDetailGenerationMenuMobileItem generation={generation} />
        </div>
      ))}
    </div>
  );
};
