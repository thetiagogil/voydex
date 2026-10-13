import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { getGameShortName } from "@/modules/codex/features/games/shared/utils/game-names";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import type { GameCard } from "@/modules/reference/types";
import { cn } from "@/shared/utils/cn";

type GameVersionSwitchProps = {
  currentGameSlug: string;
  versions: GameCard[];
};

/*
 * v3's version switch, as links between the versions' own pages. The version
 * colour stays as information: a small dot, never the pill's fill.
 */
export const GameVersionSwitch = ({
  currentGameSlug,
  versions,
}: GameVersionSwitchProps) => {
  return (
    <nav
      aria-label="Versions"
      className="bg-surface-2 inline-flex max-w-full gap-0.5 rounded-full p-1"
    >
      {versions.map(({ game }) => {
        const isCurrent = game.slug === currentGameSlug;

        return (
          <Link
            key={game.id}
            href={appRoutes.codexGame(game.slug)}
            aria-current={isCurrent ? "page" : undefined}
            className={cn(
              "text-14 inline-flex h-9 min-w-0 items-center gap-2 rounded-full px-3.5 font-extrabold whitespace-nowrap transition-colors",
              isCurrent
                ? "bg-select-soft text-select-ink"
                : "text-ink-2 hover:bg-hover hover:text-ink",
            )}
          >
            <span
              aria-hidden
              style={getGameColourStyle(game.slug)}
              className="bg-game size-2.5 shrink-0 rounded-full"
            />
            <span className="truncate">{getGameShortName(game.name)}</span>
          </Link>
        );
      })}
    </nav>
  );
};
