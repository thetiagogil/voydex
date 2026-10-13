import Link from "next/link";

import { cn } from "@/shared/utils/cn";
import { PokemonDetailGameArtwork } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-game-artwork";
import type { PokemonDetailGameNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import {
  getNavigationMenuOptionClassName,
  NavigationMenuOption,
} from "@/shared/components/navigation-menu/navigation-menu-option";
import { NavigationMenuOptionContent } from "@/shared/components/navigation-menu/navigation-menu-option-content";
import { StatusBadge } from "@/shared/components/status-badge";

type PokemonDetailGenerationGameOptionProps = {
  game: PokemonDetailGameNavigationItem;
};

type PokemonDetailGenerationGameMobileOptionProps =
  PokemonDetailGenerationGameOptionProps & {
    onSelect?: () => void;
  };

/*
 * Why a game is marked, as words the option itself owns: a small pill, with
 * the full reason for screen readers. Nothing focusable sits inside the link.
 */
const GameAvailabilityMark = ({
  description,
  label,
  tone,
}: {
  description: string;
  label: string;
  tone: "neutral" | "warn";
}) => {
  return (
    <StatusBadge tone={tone} className="shrink-0">
      {label}
      <span className="sr-only">: {description}</span>
    </StatusBadge>
  );
};

const getGameOptionLeading = (game: PokemonDetailGameNavigationItem) => {
  return <PokemonDetailGameArtwork imageUrl={game.imageUrl} name={game.name} />;
};

const getGameOptionTrailing = (game: PokemonDetailGameNavigationItem) => {
  if (game.availabilityKind === "dlc") {
    return (
      <GameAvailabilityMark
        description={
          game.availabilityDescription ??
          "This Pokémon is only available through DLC for this game."
        }
        label="DLC"
        tone="warn"
      />
    );
  }

  if (game.availabilityKind === "unavailable" && !game.isActive) {
    return (
      <GameAvailabilityMark
        description="This Pokémon does not appear in this game."
        label="Not in game"
        tone="neutral"
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
    "text-14 focus-visible:outline-focus flex transition-colors outline-none focus-visible:outline-3 focus-visible:-outline-offset-3 focus-visible:outline-solid",
    game.isAvailable && !game.isActive && "hover:bg-hover",
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
