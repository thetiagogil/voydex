import { appRoutes } from "@/config/routes";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import {
  formatNameList,
  getVersionGroupTitle,
} from "@/modules/codex/shared/utils/game-names";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { PendingData } from "@/shared/components/pending-data";
import { SegmentedControl } from "@/shared/components/segmented-control";

type GameDetailHeaderSectionProps = {
  data: CodexGameDetailData;
};

const getGameEyebrow = ({ version }: CodexGameDetailData) => {
  return [
    version.generation?.name,
    version.game.release_year,
    version.region?.name,
    version.platforms.length
      ? formatNameList(version.platforms.map((platform) => platform.name))
      : null,
  ]
    .filter(Boolean)
    .join(" · ");
};

/*
 * v3's version group header, on the page's band (the Codex stays neutral,
 * no game tint), centred as the Pokémon entry's hero is: the picked game's
 * cover, then the eyebrow, the group's title with the version switch under
 * it (as the form switch sits under a Pokémon's name) and its description.
 * No actions: starting a Play or planning a team waits in Your Plays at the
 * page's end, and the Pokédexes right below are the way into the Pokémon.
 */
export const GameDetailHeaderSection = ({
  data,
}: GameDetailHeaderSectionProps) => {
  const { version, versionGroup, versions } = data;

  return (
    <section
      aria-labelledby="game-detail-title"
      className="mt-5 grid items-center gap-6 md:grid-cols-[auto_minmax(0,36rem)] md:justify-center md:gap-10"
    >
      <div className="flex min-w-0 justify-center">
        <GameCover
          alt={`${version.game.name} cover art`}
          coverImageUrl={version.coverImageUrl}
          eager
          gameName={version.game.name}
          gameSlug={version.game.slug}
          size="hero"
        />
      </div>

      <div className="flex min-w-0 flex-col justify-center">
        <p className="text-13 text-ink-2 font-bold">{getGameEyebrow(data)}</p>
        <h1
          id="game-detail-title"
          className="text-32 sm:text-44 mt-1.5 mb-4 leading-[1.05] tracking-[-0.02em]"
        >
          {getVersionGroupTitle(versionGroup.name)}
        </h1>
        {versions.length > 1 ? (
          <div className="mb-4">
            <SegmentedControl
              ariaLabel="Version"
              variant="segment"
              value={version.game.slug}
              options={versions.map(({ game }) => ({
                dot: getGameColourStyle(game.slug),
                href: appRoutes.codexVersionGroup(versionGroup.slug, game.slug),
                label: getGameShortName(game.name),
                value: game.slug,
              }))}
            />
          </div>
        ) : null}
        {/* TODO(v3-data): a description for each version group (none on games or version_groups). */}
        <PendingData
          className="max-w-[60ch] items-start px-4.5 py-3.5 text-left"
          label="About the games"
          note="A few lines on what sets these games apart."
        />
      </div>
    </section>
  );
};
