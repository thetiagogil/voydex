import { PokemonDetailGenerationGameOption } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-game-option";
import { PokemonDetailGenerationPillLabel } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-pill-label";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { NavigationMenuBar } from "@/shared/components/navigation-menu/navigation-menu-bar";
import { NavigationMenuControlTrigger } from "@/shared/components/navigation-menu/navigation-menu-control";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu/navigation-menu-options-panel";
import { NavigationMenuItem } from "@/shared/components/ui/navigation-menu";

type PokemonDetailGenerationMenuDesktopProps = {
  generations: PokemonDetailGenerationNavigationItem[];
};

/* v3's generation pills on the right of the head; each opens its games. */
export const PokemonDetailGenerationMenuDesktop = ({
  generations,
}: PokemonDetailGenerationMenuDesktopProps) => {
  return (
    <div className="hidden min-w-0 items-center gap-2 md:flex">
      <span aria-hidden className="text-ink-3 text-12 font-bold">
        Generation
      </span>
      <NavigationMenuBar
        align="end"
        aria-label="Generation and game"
        className="justify-end"
        listClassName="flex-wrap justify-end gap-1.5"
      >
        {generations.map((generation) => (
          <NavigationMenuItem key={generation.id}>
            <NavigationMenuControlTrigger
              active={generation.isActive}
              className="text-13 h-9 min-w-10 px-2.5 font-extrabold"
            >
              <PokemonDetailGenerationPillLabel generation={generation} />
            </NavigationMenuControlTrigger>
            <NavigationMenuOptionsPanel>
              {generation.games.map((game) => (
                <PokemonDetailGenerationGameOption key={game.id} game={game} />
              ))}
            </NavigationMenuOptionsPanel>
          </NavigationMenuItem>
        ))}
      </NavigationMenuBar>
    </div>
  );
};
