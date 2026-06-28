"use client";

import { cn } from "@/lib/utils";
import { PokemonDetailGenerationGameOption } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-generation-game-option";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";

type PokemonDetailGenerationMenuProps = {
  generations: PokemonDetailGenerationNavigationItem[];
};

export const PokemonDetailGenerationMenu = ({
  generations,
}: PokemonDetailGenerationMenuProps) => {
  return (
    <NavigationMenu align="end" className="max-w-full justify-end">
      <NavigationMenuList className="flex-wrap justify-start gap-1 lg:justify-end">
        {generations.map((generation) => (
          <NavigationMenuItem key={generation.id}>
            <NavigationMenuTrigger
              className={cn(
                "border-app-surface-border bg-card/68 h-9 min-w-10 border px-3 backdrop-blur-md",
                generation.isActive &&
                  "border-primary bg-primary/10 text-primary",
              )}
            >
              {generation.label}
            </NavigationMenuTrigger>
            <NavigationMenuContent className="w-80 p-2">
              <div className="grid gap-1">
                {generation.games.map((game) => (
                  <PokemonDetailGenerationGameOption
                    key={game.id}
                    game={game}
                  />
                ))}
              </div>
            </NavigationMenuContent>
          </NavigationMenuItem>
        ))}
      </NavigationMenuList>
    </NavigationMenu>
  );
};
