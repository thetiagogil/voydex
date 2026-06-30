import { PokemonDetailGenerationGameOption } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-game-option";
import { getPokemonDetailGenerationTriggerClassName } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-menu-styles";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";

type PokemonDetailGenerationMenuDesktopProps = {
  generations: PokemonDetailGenerationNavigationItem[];
};

export const PokemonDetailGenerationMenuDesktop = ({
  generations,
}: PokemonDetailGenerationMenuDesktopProps) => {
  return (
    <NavigationMenu
      align="end"
      className="hidden max-w-full justify-end md:flex"
    >
      <NavigationMenuList className="flex-wrap justify-start gap-1 lg:justify-end">
        {generations.map((generation) => (
          <NavigationMenuItem key={generation.id}>
            <NavigationMenuTrigger
              className={getPokemonDetailGenerationTriggerClassName({
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
  );
};
