import Link from "next/link";

import { cn } from "@/lib/utils";
import { PokemonDetailGameArtwork } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-game-artwork";
import type { PokemonDetailGameNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  getNavigationMenuOptionClassName,
  NavigationMenuOption,
} from "@/shared/components/navigation-menu-option";
import { NavigationMenuOptionContent } from "@/shared/components/navigation-menu-option-content";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

type PokemonDetailGenerationGameOptionProps = {
  game: PokemonDetailGameNavigationItem;
};

type PokemonDetailGenerationGameSheetOptionProps =
  PokemonDetailGenerationGameOptionProps & {
    onSelect?: () => void;
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

const getGameOptionLeading = (game: PokemonDetailGameNavigationItem) => {
  return <PokemonDetailGameArtwork imageUrl={game.imageUrl} name={game.name} />;
};

const getUnavailableGameTrailing = (game: PokemonDetailGameNavigationItem) => {
  return game.isActive ? undefined : <UnavailableGameTooltip />;
};

export const PokemonDetailGenerationGameOption = ({
  game,
}: PokemonDetailGenerationGameOptionProps) => {
  const leading = getGameOptionLeading(game);

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
      trailing={getUnavailableGameTrailing(game)}
    />
  );
};

export const PokemonDetailGenerationGameSheetOption = ({
  game,
  onSelect,
}: PokemonDetailGenerationGameSheetOptionProps) => {
  const isMuted = !game.isAvailable;
  const optionClassName = cn(
    "flex rounded-md text-sm transition-all",
    getNavigationMenuOptionClassName({
      active: game.isActive,
      muted: isMuted,
    }),
  );
  const content = (
    <NavigationMenuOptionContent
      active={game.isActive}
      leading={getGameOptionLeading(game)}
      muted={isMuted}
      title={game.name}
      trailing={
        !game.isAvailable ? getUnavailableGameTrailing(game) : undefined
      }
    />
  );

  if (game.isAvailable) {
    return (
      <Link
        href={game.href}
        aria-current={game.isActive ? "page" : undefined}
        className={optionClassName}
        onClick={onSelect}
      >
        {content}
      </Link>
    );
  }

  return (
    <div
      aria-current={game.isActive ? "page" : undefined}
      aria-disabled
      data-active={game.isActive ? "true" : undefined}
      data-disabled="true"
      className={optionClassName}
    >
      {content}
    </div>
  );
};
