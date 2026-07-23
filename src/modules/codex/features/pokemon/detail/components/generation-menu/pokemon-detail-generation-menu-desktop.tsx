import { PokemonDetailGenerationGameOption } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-game-option";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { NavigationMenuBar } from "@/shared/components/navigation-menu/navigation-menu-bar";
import { NavigationMenuControlTrigger } from "@/shared/components/navigation-menu/navigation-menu-control";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu/navigation-menu-options-panel";
import { NavigationMenuItem } from "@/shared/components/ui/navigation-menu";

type PokemonDetailGenerationMenuDesktopProps = {
  generations: PokemonDetailGenerationNavigationItem[];
};

const getActiveGameName = (
  generation: PokemonDetailGenerationNavigationItem,
) => {
  return generation.games.find((game) => game.isActive)?.name ?? null;
};

export const PokemonDetailGenerationMenuDesktop = ({
  generations,
}: PokemonDetailGenerationMenuDesktopProps) => {
  return (
    <NavigationMenuBar
      align="end"
      className="hidden justify-end md:flex"
      listClassName="flex-wrap lg:justify-end"
    >
      {generations.map((generation) => {
        const activeGameName = getActiveGameName(generation);
        const showActiveGame = generation.isActive && activeGameName;

        return (
          <NavigationMenuItem key={generation.id}>
            <NavigationMenuControlTrigger
              active={generation.isActive}
              className={
                showActiveGame ? "max-w-72 min-w-14 justify-start px-3" : "w-14"
              }
            >
              {showActiveGame ? (
                <span className="min-w-0 truncate">
                  {generation.label} - {activeGameName}
                </span>
              ) : (
                generation.label
              )}
            </NavigationMenuControlTrigger>
            <NavigationMenuOptionsPanel>
              {generation.games.map((game) => (
                <PokemonDetailGenerationGameOption key={game.id} game={game} />
              ))}
            </NavigationMenuOptionsPanel>
          </NavigationMenuItem>
        );
      })}
    </NavigationMenuBar>
  );
};
