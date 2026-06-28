import Link from "next/link";

import { PokemonDetailGameArtwork } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-game-artwork";
import type { PokemonDetailGameNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { NavigationMenuOption } from "@/shared/components/navigation-menu-option";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

type PokemonDetailGenerationGameOptionProps = {
  game: PokemonDetailGameNavigationItem;
};

const UnavailableGameTooltip = () => {
  return (
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
        <AppIcon icon={appIcons.status.unknown} size="sm" aria-hidden />
      </TooltipTrigger>
      <TooltipContent side="left" align="center" className="w-64">
        This Pokémon does not appear in this game.
      </TooltipContent>
    </Tooltip>
  );
};

export const PokemonDetailGenerationGameOption = ({
  game,
}: PokemonDetailGenerationGameOptionProps) => {
  const leading = (
    <PokemonDetailGameArtwork imageUrl={game.imageUrl} name={game.name} />
  );

  if (game.isAvailable) {
    return (
      <NavigationMenuOption
        render={<Link href={game.href} />}
        active={game.isActive}
        leading={leading}
        title={game.name}
      />
    );
  }

  return (
    <NavigationMenuOption
      active={game.isActive}
      disabled
      leading={leading}
      title={game.name}
      trailing={game.isActive ? undefined : <UnavailableGameTooltip />}
    />
  );
};
