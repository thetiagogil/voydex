"use client";

import { useState } from "react";

import { cn } from "@/lib/utils";
import {
  PokemonDetailGenerationGameOption,
  PokemonDetailGenerationGameSheetOption,
} from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-game-option";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";

type PokemonDetailGenerationMenuProps = {
  generations: PokemonDetailGenerationNavigationItem[];
};

type PokemonDetailGenerationSheetProps = {
  generation: PokemonDetailGenerationNavigationItem;
};

type PokemonDetailGenerationTriggerClassNameParams = {
  className?: string;
  isActive: boolean;
};

const getGenerationTriggerClassName = ({
  className,
  isActive,
}: PokemonDetailGenerationTriggerClassNameParams) => {
  return cn(
    "border-app-surface-border bg-card/68 h-9 border px-0 backdrop-blur-md",
    isActive && "border-primary bg-primary/10 text-primary",
    className,
  );
};

const PokemonDetailGenerationSheet = ({
  generation,
}: PokemonDetailGenerationSheetProps) => {
  const [open, setOpen] = useState(false);

  return (
    <Sheet open={open} onOpenChange={setOpen}>
      <SheetTrigger
        render={
          <Button
            variant="outline"
            size="sm"
            className={getGenerationTriggerClassName({
              className:
                "w-full min-w-0 justify-center has-data-[icon=inline-end]:pr-0",
              isActive: generation.isActive,
            })}
          />
        }
      >
        {generation.label}
        <AppIcon icon={appIcons.actions.expand} inline="end" aria-hidden />
      </SheetTrigger>
      <SheetContent
        side="bottom"
        className="border-app-surface-border bg-popover/96 max-h-[82dvh] gap-0 rounded-t-xl p-0 backdrop-blur-xl md:hidden"
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
              <PokemonDetailGenerationGameSheetOption
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

export const PokemonDetailGenerationMenu = ({
  generations,
}: PokemonDetailGenerationMenuProps) => {
  return (
    <>
      <NavigationMenu
        align="end"
        className="hidden max-w-full justify-end md:flex"
      >
        <NavigationMenuList className="flex-wrap justify-start gap-1 lg:justify-end">
          {generations.map((generation) => (
            <NavigationMenuItem key={generation.id}>
              <NavigationMenuTrigger
                className={getGenerationTriggerClassName({
                  className: "w-14",
                  isActive: generation.isActive,
                })}
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

      <div className="grid w-full grid-cols-5 gap-1 md:hidden">
        {generations.map((generation) => (
          <div key={generation.id} className="min-w-0">
            <PokemonDetailGenerationSheet generation={generation} />
          </div>
        ))}
      </div>
    </>
  );
};
