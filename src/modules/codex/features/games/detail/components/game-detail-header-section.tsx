import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import {
  formatNameList,
  getPokedexShortName,
  getVersionGroupTitle,
} from "@/modules/codex/shared/utils/game-names";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { PendingData } from "@/shared/components/pending-data";
import { SegmentedControl } from "@/shared/components/segmented-control";

type GameDetailHeaderSectionProps = {
  /* The route's Your Plays icon, beside the version switch, signed in. */
  actions?: ReactNode;
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
 * no game tint), from the left as a Play's header is (the Pokémon entry
 * centres its round art; a box cover reads better leading): the picked
 * game's cover, then the eyebrow, the group's title with the version switch under
 * it (as the form switch sits under a Pokémon's name) and, beside the
 * switch, the Your Plays icon, a jump to the section at the page's end
 * where you start a Play or plan a team; then its description and the
 * group's Pokédexes as pills with their counts (the way into the Pokémon).
 */
export const GameDetailHeaderSection = ({
  actions,
  data,
}: GameDetailHeaderSectionProps) => {
  const { version, versionGroup, versions } = data;

  return (
    <section
      aria-labelledby="game-detail-title"
      className="mt-5 grid items-center gap-6 md:grid-cols-[auto_minmax(0,36rem)] md:justify-start md:gap-10"
    >
      <div className="flex min-w-0 justify-center md:justify-start">
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
        <h1 id="game-detail-title" className="title-hero mt-1.5 mb-4">
          {getVersionGroupTitle(versionGroup.name)}
        </h1>
        {versions.length > 1 || actions ? (
          <div className="mb-4 flex flex-wrap items-center gap-2.5">
            {versions.length > 1 ? (
              <SegmentedControl
                ariaLabel="Version"
                variant="segment"
                value={version.game.slug}
                options={versions.map(({ game }) => ({
                  dot: getGameColourStyle(game.slug),
                  href: appRoutes.codexVersionGroup(
                    versionGroup.slug,
                    game.slug,
                  ),
                  label: getGameShortName(game.name),
                  value: game.slug,
                }))}
              />
            ) : null}
            {actions}
          </div>
        ) : null}
        {/* TODO(v3-data): a description for each version group (none on games or version_groups). */}
        <PendingData
          className="max-w-[60ch] items-start px-4.5 py-3.5 text-left"
          label="About the games"
          note="A few lines on what sets these games apart."
        />
        {data.pokedexes.length ? (
          <div className="mt-4 flex flex-wrap items-center gap-x-3 gap-y-2">
            <span className="text-13 text-ink-2 font-bold">
              {data.pokedexes.length === 1 ? "Pokédex" : "Pokédexes"}
            </span>
            {/* The same pills as the Pokédex page's switch, each opening its Pokédex. */}
            <SegmentedControl
              ariaLabel={`Pokédexes in ${getVersionGroupTitle(versionGroup.name)}`}
              className="flex-wrap"
              value={null}
              options={data.pokedexes.map(({ pokedex, pokemonCount }) => ({
                count: pokemonCount,
                href: appRoutes.codexVersionGroupPokedex(
                  versionGroup.slug,
                  pokedex.slug,
                ),
                label: getPokedexShortName(formatPokedexName(pokedex.name)),
                value: pokedex.slug,
              }))}
            />
          </div>
        ) : null}
      </div>
    </section>
  );
};
