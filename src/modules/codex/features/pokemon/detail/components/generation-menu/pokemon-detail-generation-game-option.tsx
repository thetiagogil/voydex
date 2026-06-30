import Link from "next/link";

import { cn } from "@/lib/utils";
import { PokemonDetailGameArtwork } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-game-artwork";
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

type PokemonDetailGenerationGameMobileOptionProps =
  PokemonDetailGenerationGameOptionProps & {
    onSelect?: () => void;
  };

type GameAvailabilityTooltipProps = {
  description: string;
  label: string;
  tone: "muted" | "warning";
};

const GameAvailabilityTooltip = ({
  description,
  label,
  tone,
}: GameAvailabilityTooltipProps) => {
  const isWarning = tone === "warning";

  return (
    <Tooltip>
      <TooltipTrigger
        render={
          <span
            tabIndex={0}
            role="img"
            aria-label={label}
            className={cn(
              "focus-visible:ring-ring/50 inline-flex shrink-0 rounded-full outline-none focus-visible:ring-2",
              isWarning
                ? "text-warning hover:text-warning/90"
                : "text-muted-foreground hover:text-foreground",
            )}
          />
        }
      >
        <AppIcon
          icon={isWarning ? appIcons.status.warning : appIcons.status.unknown}
          size="sm"
          aria-hidden
        />
      </TooltipTrigger>
      <TooltipContent side="left" align="center" className="w-64">
        {description}
      </TooltipContent>
    </Tooltip>
  );
};

const getGameOptionLeading = (game: PokemonDetailGameNavigationItem) => {
  return <PokemonDetailGameArtwork imageUrl={game.imageUrl} name={game.name} />;
};

const getGameOptionTrailing = (game: PokemonDetailGameNavigationItem) => {
  if (game.availabilityKind === "dlc") {
    return (
      <GameAvailabilityTooltip
        description={
          game.availabilityDescription ??
          "This Pokémon is only available through DLC for this game."
        }
        label="DLC-only availability"
        tone="warning"
      />
    );
  }

  if (game.availabilityKind === "unavailable" && !game.isActive) {
    return (
      <GameAvailabilityTooltip
        description="This Pokémon does not appear in this game."
        label="Unavailable game"
        tone="muted"
      />
    );
  }

  return undefined;
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
        trailing={getGameOptionTrailing(game)}
      />
    );
  }

  return (
    <NavigationMenuOption
      active={game.isActive}
      disabled
      leading={leading}
      title={game.name}
      trailing={getGameOptionTrailing(game)}
    />
  );
};

export const PokemonDetailGenerationGameMobileOption = ({
  game,
  onSelect,
}: PokemonDetailGenerationGameMobileOptionProps) => {
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
      trailing={getGameOptionTrailing(game)}
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
