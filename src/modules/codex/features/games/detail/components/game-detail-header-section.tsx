import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { GameVersionSwitch } from "@/modules/codex/features/games/detail/components/game-version-switch";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import { GameCover } from "@/modules/codex/features/games/shared/components/game-cover";
import { formatNameList } from "@/modules/codex/features/games/shared/utils/game-names";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type GameDetailHeaderSectionProps = {
  data: CodexGameDetailData;
};

const getBrowsePokemonHref = (data: CodexGameDetailData) => {
  const firstPokedex = data.pokedexes[0]?.pokedex;

  return firstPokedex
    ? appRoutes.codexGamePokedex(data.game.slug, firstPokedex.slug)
    : appRoutes.codexPokemon;
};

const getGameEyebrow = (data: CodexGameDetailData) => {
  return [
    data.generation?.name,
    data.game.release_year,
    data.region?.name,
    data.platforms.length
      ? formatNameList(data.platforms.map((platform) => platform.name))
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
 * v3's game header, kept cream and flat in the Codex: the cover carries the
 * game, with the version switch under it.
 */
export const GameDetailHeaderSection = ({
  data,
}: GameDetailHeaderSectionProps) => {
  return (
    <section
      aria-labelledby="game-detail-title"
      className="bg-surface mt-5 grid gap-6 rounded-2xl px-5 py-6 sm:px-8 sm:py-7 md:grid-cols-[auto_minmax(0,1fr)] md:gap-9"
    >
      <div className="flex min-w-0 flex-col items-center gap-3.5">
        <GameCover
          alt={`${data.game.name} cover art`}
          coverImageUrl={data.coverImageUrl}
          eager
          gameName={data.game.name}
          gameSlug={data.game.slug}
          size="hero"
        />
        {data.versions.length > 1 ? (
          <GameVersionSwitch
            currentGameSlug={data.game.slug}
            versions={data.versions}
          />
        ) : null}
      </div>

      <div className="flex min-w-0 flex-col justify-center">
        <p className="text-13 text-ink-2 font-bold">{getGameEyebrow(data)}</p>
        <h1
          id="game-detail-title"
          className="text-32 sm:text-44 mt-1.5 mb-4 leading-[1.05] tracking-[-0.02em]"
        >
          {data.game.name}
        </h1>
        <dl className="flex flex-wrap gap-x-8 gap-y-3">
          {data.gameType ? (
            <GameDetailFact label="Game type" value={data.gameType.name} />
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
