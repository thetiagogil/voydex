"use client";

import Image from "next/image";
import Link from "next/link";

import { cn } from "@/lib/utils";
import { PokemonDetailPokemonPicker } from "@/modules/codex/components/pokemon-detail/pokemon-detail-pokemon-picker";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { NavigationMenuOption } from "@/shared/components/navigation-menu-option";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

export type PokemonDetailHeaderGame = {
  href: string;
  id: number;
  imageUrl: string | null;
  isActive: boolean;
  isAvailable: boolean;
  name: string;
  slug: string;
};

export type PokemonDetailHeaderGeneration = {
  games: PokemonDetailHeaderGame[];
  id: number;
  isActive: boolean;
  label: string;
};

type PokemonDetailHeaderProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
    slug: string;
  };
  generations: PokemonDetailHeaderGeneration[];
};

type GameMenuArtworkProps = {
  imageUrl: string | null;
  name: string;
};

const getGameInitials = (name: string) => {
  const displayName = name.replace(/^Pokémon\s+/i, "");
  const words = displayName.match(/[A-Za-z0-9]+/g) ?? [];

  if (!words.length) {
    return displayName.slice(0, 1).toUpperCase();
  }

  return words
    .slice(0, 2)
    .map((word) => word.slice(0, 1))
    .join("")
    .toUpperCase();
};

const GameMenuArtwork = ({ imageUrl, name }: GameMenuArtworkProps) => {
  if (imageUrl) {
    return (
      <Image
        src={imageUrl}
        alt=""
        fill
        sizes="40px"
        className="object-contain p-1"
      />
    );
  }

  return (
    <span className="text-primary text-xs font-semibold">
      {getGameInitials(name)}
    </span>
  );
};

export const PokemonDetailHeader = ({
  activeGameSlug,
  activePokemon,
  generations,
}: PokemonDetailHeaderProps) => {
  return (
    <section className="ring-app-surface-border bg-card/76 rounded-xl p-4 shadow-(--app-surface-shadow) ring-1 backdrop-blur-xl sm:p-5">
      <div className="flex flex-col gap-4 lg:flex-row lg:items-center lg:justify-between">
        <PokemonDetailPokemonPicker
          activeGameSlug={activeGameSlug}
          activePokemon={activePokemon}
        />

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
                    {generation.games.map((game) =>
                      game.isAvailable ? (
                        <NavigationMenuOption
                          key={game.id}
                          render={<Link href={game.href} />}
                          active={game.isActive}
                          leading={
                            <GameMenuArtwork
                              imageUrl={game.imageUrl}
                              name={game.name}
                            />
                          }
                          title={game.name}
                        />
                      ) : (
                        <NavigationMenuOption
                          key={game.id}
                          active={game.isActive}
                          disabled
                          leading={
                            <GameMenuArtwork
                              imageUrl={game.imageUrl}
                              name={game.name}
                            />
                          }
                          title={game.name}
                          trailing={
                            game.isActive ? undefined : (
                              <Tooltip>
                                <TooltipTrigger
                                  render={
                                    <span
                                      tabIndex={0}
                                      role="img"
                                      aria-label="Unavailable game"
                                      className="text-muted-foreground hover:text-foreground focus-visible:ring-ring/50 inline-flex shrink-0 rounded-full outline-none focus-visible:ring-2"
                                    />
                                  }
                                >
                                  <AppIcon
                                    icon={appIcons.status.unknown}
                                    size="sm"
                                    aria-hidden
                                  />
                                </TooltipTrigger>
                                <TooltipContent
                                  side="left"
                                  align="center"
                                  className="w-64"
                                >
                                  This Pokémon does not appear in this game.
                                </TooltipContent>
                              </Tooltip>
                            )
                          }
                        />
                      ),
                    )}
                  </div>
                </NavigationMenuContent>
              </NavigationMenuItem>
            ))}
          </NavigationMenuList>
        </NavigationMenu>
      </div>
    </section>
  );
};
