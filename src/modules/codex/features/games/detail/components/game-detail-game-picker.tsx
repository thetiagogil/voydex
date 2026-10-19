"use client";

import { useRouter } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { codexHeadPickerTriggerClassName } from "@/modules/codex/shared/components/codex-head";
import { GameOptionCover } from "@/modules/reference/features/games/components/game-option-cover";
import type { GameShelfGame } from "@/modules/reference/features/games/types";
import { SelectControl } from "@/shared/components/select-control";

type GameDetailGamePickerProps = {
  /* The game picked in the page's version switch, checked in the list. */
  activeGameSlug: string;
  /* Every game, in the Games list's release order. */
  games: GameShelfGame[];
  /* The page's name in the crumb: "Sword and Shield". */
  label: string;
};

/*
 * The last step of a game page's Codex crumb: the page's name, which opens
 * the one picker (search at the top, each game on its cover, the year and
 * region under it) to jump to another game, as the Pokémon's name does on a
 * Pokémon's entry. A game opens its version group's page with it picked.
 */
export const GameDetailGamePicker = ({
  activeGameSlug,
  games,
  label,
}: GameDetailGamePickerProps) => {
  const router = useRouter();
  const gameBySlug = new Map(games.map((game) => [game.slug, game]));

  return (
    <SelectControl
      ariaLabel={`Choose another game. Now showing ${label}`}
      className={codexHeadPickerTriggerClassName}
      options={games.map((game) => ({
        description: [game.releaseYear, game.regionName]
          .filter(Boolean)
          .join(" · "),
        icon: <GameOptionCover gameName={game.name} gameSlug={game.slug} />,
        label: game.shortName,
        value: game.slug,
      }))}
      placeholder={label}
      searchPlaceholder="Search games"
      triggerContent={<span className="truncate">{label}</span>}
      value={activeGameSlug}
      variant="ghost"
      onValueChange={(slug) => {
        const game = gameBySlug.get(slug);

        if (game && slug !== activeGameSlug) {
          router.push(appRoutes.codexVersionGroup(game.versionGroupSlug, slug));
        }
      }}
    />
  );
};
