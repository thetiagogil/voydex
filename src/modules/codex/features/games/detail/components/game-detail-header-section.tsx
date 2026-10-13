import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import {
  formatNameList,
  getGameShortName,
  getVersionGroupTitle,
} from "@/modules/codex/shared/utils/game-names";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type GameDetailHeaderSectionProps = {
  data: CodexGameDetailData;
};

/*
 * The group's first Pokédex: a regional one, or its National Pokédex when
 * that is all it has (they are sorted National last).
 */
const getBrowsePokemonHref = (data: CodexGameDetailData) => {
  const firstPokedex = data.pokedexes[0]?.pokedex;

  return firstPokedex
    ? appRoutes.codexVersionGroupPokedex(
        data.versionGroup.slug,
        firstPokedex.slug,
      )
    : appRoutes.codexPokemon;
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

const GameDetailFact = ({ label, value }: { label: string; value: string }) => {
  return (
    <div className="min-w-0">
      <dt className="text-13 text-ink-2 font-bold">{label}</dt>
      <dd className="text-16 font-extrabold tabular-nums">{value}</dd>
    </div>
  );
};

/*
 * v3's version group header, kept cream and flat in the Codex: the picked
 * game's cover with the version switch under it, then the eyebrow, the
 * group's title, its facts and the way into its Pokémon.
 */
export const GameDetailHeaderSection = ({
  data,
}: GameDetailHeaderSectionProps) => {
  const { version, versionGroup, versions } = data;

  return (
    <section
      aria-labelledby="game-detail-title"
      className="bg-surface mt-5 grid gap-6 rounded-2xl px-5 py-6 sm:px-8 sm:py-7 md:grid-cols-[auto_minmax(0,1fr)] md:gap-9"
    >
      <div className="flex min-w-0 flex-col items-center gap-3.5">
        <GameCover
          alt={`${version.game.name} cover art`}
          coverImageUrl={version.coverImageUrl}
          eager
          gameName={version.game.name}
          gameSlug={version.game.slug}
          size="hero"
        />
        {versions.length > 1 ? (
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
        ) : null}
      </div>

      <div className="flex min-w-0 flex-col justify-center">
        <p className="text-13 text-ink-2 font-bold">{getGameEyebrow(data)}</p>
        <h1
          id="game-detail-title"
          className="text-32 sm:text-44 mt-1.5 mb-4 leading-[1.05] tracking-[-0.02em]"
        >
          {getVersionGroupTitle(versionGroup.name)}
        </h1>
        <dl className="flex flex-wrap gap-x-8 gap-y-3">
          {version.gameType ? (
            <GameDetailFact label="Game type" value={version.gameType.name} />
          ) : null}
          {data.availablePokemonCount ? (
            <GameDetailFact
              label="Available Pokémon"
              value={data.availablePokemonCount.toLocaleString()}
            />
          ) : null}
        </dl>
        <div className="mt-6">
          <Link
            href={getBrowsePokemonHref(data)}
            className={cn(buttonVariants({ size: "lg" }), "w-full sm:w-auto")}
          >
            <AppIcon
              icon={appIcons.product.pokedex}
              inline="start"
              aria-hidden
            />
            Browse Pokémon
          </Link>
        </div>
      </div>
    </section>
  );
};
