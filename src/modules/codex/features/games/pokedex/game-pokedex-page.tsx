import Link from "next/link";
import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { GamePokedexBrowser } from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser";
import {
  getGamePokedexData,
  type GamePokedexData,
} from "@/modules/codex/features/games/pokedex/server/game-pokedex-query";
import { CodexBackLink } from "@/modules/codex/shared/components/codex-detail";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { getPokemonGameColorCssVariables } from "@/shared/components/game/pokemon-game-color-styles";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { formatPokedexName } from "@/shared/domain/pokemon/pokemon-formatters";

type GamePokedexPageProps = {
  gameSlug: string;
  pokedexSlug: string;
};

const GamePokedexSwitcher = ({ data }: { data: GamePokedexData }) => {
  if (data.pokedexes.length <= 1) {
    return null;
  }

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button
            variant="outline"
            size="sm"
            aria-label="Open Pokédex menu"
          />
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

export const GamePokedexPage = async ({
  gameSlug,
  pokedexSlug,
}: GamePokedexPageProps) => {
  const data = await getGamePokedexData(gameSlug, pokedexSlug);

  if (!data) {
    notFound();
  }

  return (
    <div
      style={getPokemonGameColorCssVariables(data.game.slug)}
      className="flex flex-col gap-4"
    >
      <div className="flex min-h-8 items-center justify-between gap-3">
        <CodexBackLink href={appRoutes.codexGame(data.game.slug)}>
          Back to {data.game.name}
        </CodexBackLink>
        <GamePokedexSwitcher data={data} />
      </div>

      <GamePokedexBrowser data={data} />
    </div>
  );
};
