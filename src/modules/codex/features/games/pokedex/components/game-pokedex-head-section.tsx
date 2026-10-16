import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  getPokedexShortName,
  getVersionGroupShortName,
  getVersionGroupTitle,
} from "@/modules/codex/shared/utils/game-names";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type { GamePokedexData } from "@/modules/reference/types";
import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

type GamePokedexHeadSectionProps = {
  data: GamePokedexData;
};

/*
 * v3's Pokédex head, on the page's band as the Codex's other entries are
 * (no game tint), led by the games' box as a Play's header is (it opens the
 * game page), then laid out as a Play's Pokédex is: the Pokédex's name and
 * one sentence on what it lists, with the switch between the group's
 * Pokédexes, its expansions' (Galar, Isle of Armor, Crown Tundra) and its
 * own National Pokédex on the right. The sentence names the games, since a
 * Kanto Pokédex in Red and Blue isn't the one in FireRed and LeafGreen.
 */
export const GamePokedexHeadSection = ({
  data,
}: GamePokedexHeadSectionProps) => {
  const versionGroupTitle = getVersionGroupTitle(data.versionGroup.name);
  const coverGame = data.games[0] ?? null;

  return (
    <section
      aria-labelledby="game-pokedex-title"
      className="flex items-start gap-4 pt-4 sm:items-center sm:gap-6 sm:pt-6"
    >
      {/* The games' box, as a Play's header carries it: which games this Pokédex is. */}
      {coverGame ? (
        <Link
          href={appRoutes.codexVersionGroup(data.versionGroup.slug)}
          aria-label={`Open ${versionGroupTitle}`}
          className="shrink-0 rounded-sm"
        >
          <GameCover
            alt=""
            coverImageUrl={getGameCoverImageUrl(coverGame)}
            eager
            gameName={coverGame.name}
            gameSlug={coverGame.slug}
            size="header"
          />
        </Link>
      ) : null}
      <PageHeader
        headingId="game-pokedex-title"
        title={formatPokedexName(data.pokedex.name)}
        className="min-w-0 flex-1 pt-0 sm:flex-wrap sm:pt-0"
        description={
          <>
            The{" "}
            <b className="text-ink font-extrabold tabular-nums">
              {data.entries.length.toLocaleString()}
            </b>{" "}
            Pokémon of this Pokédex in{" "}
            <b className="text-ink font-extrabold">
              {getVersionGroupShortName(data.versionGroup.name)}
            </b>
            , numbered the way{" "}
            {data.games.length > 1 ? "the games list" : "the game lists"} them.
          </>
        }
        action={
          data.pokedexes.length > 1 ? (
            <SegmentedControl
              ariaLabel={`Pokédexes in ${versionGroupTitle}`}
              selectedTone="strong"
              className="no-scrollbar -mx-4 w-[calc(100%+2rem)] max-w-none flex-nowrap overflow-x-auto px-4 py-1.5 sm:mx-0 sm:w-auto sm:max-w-full sm:flex-wrap sm:overflow-visible sm:px-0 sm:py-0"
              value={data.pokedex.slug}
              options={data.pokedexes.map((pokedex) => ({
                count: data.pokemonCountByPokedexId[pokedex.id],
                href: appRoutes.codexVersionGroupPokedex(
                  data.versionGroup.slug,
                  pokedex.slug,
                ),
                label: getPokedexShortName(formatPokedexName(pokedex.name)),
                value: pokedex.slug,
              }))}
            />
          ) : null
        }
      />
    </section>
  );
};
