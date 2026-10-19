"use client";

import { useRouter } from "next/navigation";

import { appRoutes } from "@/config/routes";
import type { GameDetailPickerGroup } from "@/modules/codex/features/games/detail/data/game-detail-picker-options";
import { codexHeadPickerTriggerClassName } from "@/modules/codex/shared/components/codex-head";
import { GameOptionCover } from "@/modules/reference/features/games/components/game-option-cover";
import { SelectControl } from "@/shared/components/select-control";

type GameDetailGamePickerProps = {
  activeGroup: {
    name: string;
    slug: string;
  };
  groups: GameDetailPickerGroup[];
};

/*
 * The last step of a game page's Codex crumb: the game's name, which opens
 * the one picker (search at the top, each game on its cover, the year and
 * region under it) to jump to another game's page, as the Pokémon's name
 * does on a Pokémon's entry.
 */
export const GameDetailGamePicker = ({
  activeGroup,
  groups,
}: GameDetailGamePickerProps) => {
  const router = useRouter();

  return (
    <SelectControl
      ariaLabel={`Choose another game. Now showing ${activeGroup.name}`}
      className={codexHeadPickerTriggerClassName}
      options={groups.map((group) => ({
        description: [group.releaseYear, group.regionName]
          .filter(Boolean)
          .join(" · "),
        icon: (
          <GameOptionCover
            gameName={group.coverGame.name}
            gameSlug={group.coverGame.slug}
          />
        ),
        label: group.name,
        value: group.slug,
      }))}
      placeholder={activeGroup.name}
      searchPlaceholder="Search games"
      triggerContent={<span className="truncate">{activeGroup.name}</span>}
      value={activeGroup.slug}
      variant="ghost"
      onValueChange={(slug) => {
        if (slug && slug !== activeGroup.slug) {
          router.push(appRoutes.codexVersionGroup(slug));
        }
      }}
    />
  );
};
