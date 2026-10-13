"use client";

import { useEffect, useRef, useState } from "react";

import { PokemonDetailGenerationGameMobileOption } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-game-option";
import { PokemonDetailGenerationPillLabel } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-pill-label";
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

const PokemonDetailGenerationMenuMobileItem = ({
  generation,
}: {
  generation: PokemonDetailGenerationNavigationItem;
}) => {
  const [open, setOpen] = useState(false);

  return (
    <Sheet open={open} onOpenChange={setOpen}>
      <SheetTrigger
        data-active={generation.isActive ? "true" : undefined}
        render={
          <Button
            variant="ghost"
            className={getNavigationMenuControlClassName({
              active: generation.isActive,
              className: "text-13 min-w-10 shrink-0 gap-1 px-3 font-extrabold",
            })}
          />
        }
      >
        <PokemonDetailGenerationPillLabel generation={generation} />
        <AppIcon icon={appIcons.actions.expand} size="xs" aria-hidden />
      </SheetTrigger>
      <SheetContent side="bottom" className="max-h-[82dvh] gap-0 p-0 md:hidden">
        <SheetHeader>
          <SheetTitle>Generation {generation.label}</SheetTitle>
          <SheetDescription>
            Choose a game to read this Pokémon in.
          </SheetDescription>
        </SheetHeader>

        <div className="border-line min-h-0 flex-1 overflow-y-auto border-t p-4">
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

/* On phones the pills scroll sideways (v3), keeping the current one in view. */
export const PokemonDetailGenerationMenuMobile = ({
  generations,
}: PokemonDetailGenerationMenuMobileProps) => {
  const rowRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const row = rowRef.current;
    const activePill = row?.querySelector<HTMLElement>('[data-active="true"]');

    if (row && activePill) {
      /* v3: keep whole pills in view, the one before the current one first. */
      const previous = activePill.previousElementSibling;
      const anchor = previous instanceof HTMLElement ? previous : activePill;

      row.scrollLeft = Math.max(anchor.offsetLeft, 0);
    }
  }, [generations]);

  return (
    <div
      ref={rowRef}
      role="group"
      aria-label="Generation and game"
      className="no-scrollbar relative flex w-full items-center gap-1.5 overflow-x-auto md:hidden"
    >
      <span aria-hidden className="text-ink-3 text-12 shrink-0 font-bold">
        Generation
      </span>
      {generations.map((generation) => (
        <PokemonDetailGenerationMenuMobileItem
          key={generation.id}
          generation={generation}
        />
      ))}
    </div>
  );
};
