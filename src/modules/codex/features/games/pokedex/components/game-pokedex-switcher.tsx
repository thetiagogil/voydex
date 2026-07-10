import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { GamePokedexData } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { formatPokedexName } from "@/modules/reference/features/pokemon/display/pokemon-formatters";

type GamePokedexSwitcherProps = {
  data: GamePokedexData;
};

export const GamePokedexSwitcher = ({ data }: GamePokedexSwitcherProps) => {
  if (data.pokedexes.length <= 1) {
    return null;
  }

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button variant="outline" size="sm" aria-label="Open Pokédex menu" />
        }
      >
        <AppIcon icon={appIcons.product.pokedex} inline="start" aria-hidden />
        Dexes
        <AppIcon icon={appIcons.actions.expand} inline="end" aria-hidden />
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-56">
        <DropdownMenuGroup>
          <DropdownMenuLabel>{data.game.name} dexes</DropdownMenuLabel>
          {data.pokedexes.map((pokedex) => {
            const isActive = pokedex.id === data.pokedex.id;
            const content = (
              <>
                <span className="min-w-0 flex-1 truncate">
                  {formatPokedexName(pokedex.name)}
                </span>
                {isActive ? (
                  <AppIcon
                    icon={appIcons.status.active}
                    className="text-(--pokemon-game-color)"
                    aria-hidden
                  />
                ) : null}
              </>
            );

            return isActive ? (
              <DropdownMenuItem key={pokedex.id} disabled>
                {content}
              </DropdownMenuItem>
            ) : (
              <DropdownMenuItem
                key={pokedex.id}
                render={
                  <Link
                    href={appRoutes.codexGamePokedex(
                      data.game.slug,
                      pokedex.slug,
                    )}
                  />
                }
              >
                {content}
              </DropdownMenuItem>
            );
          })}
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
