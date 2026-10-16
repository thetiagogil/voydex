import Link from "next/link";

import type { TrainerPlay } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { StatusBadge } from "@/shared/components/status-badge";

const toTypeSlug = (slug: string | null | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

/*
 * One Play a Pokémon of yours is in (the species sheet, the Codex entry's In
 * your Plays): its cover, name and status, and what is there, opening it on
 * the Play. In a family's sheet the line under the name starts with which
 * Pokémon it is, in its type's colour. Render inside a `ul`.
 */
export const TrainerPlayRow = ({
  detail,
  href,
  label,
  play,
  pokemon,
  shiny,
}: {
  detail: string;
  href: string;
  label: string;
  play: TrainerPlay;
  pokemon?: { name: string; typeSlug: string | null };
  shiny: boolean;
}) => (
  <li className="game-scope" style={getGameColourStyle(play.gameSlug)}>
    <Link
      href={href}
      aria-label={label}
      className="hover:bg-hover focus-visible:outline-focus -mx-2 grid min-h-16 grid-cols-[auto_minmax(0,1fr)_auto_auto] items-center gap-3 rounded-md px-2 py-2 outline-none focus-visible:outline-3 focus-visible:outline-solid"
    >
      <GameCover
        alt=""
        coverImageUrl={
          play.gameSlug ? getGameCoverImageUrlBySlug(play.gameSlug) : null
        }
        gameName={play.gameName}
        gameSlug={play.gameSlug ?? undefined}
        size="dock"
      />
      <span className="min-w-0">
        <span className="text-ink text-15 block truncate font-extrabold">
          {play.name}
        </span>
        <span className="text-ink-2 text-13 flex min-w-0 items-center gap-1.5 font-semibold">
          {shiny ? (
            <span className="type-ink inline-flex shrink-0 items-center gap-1 font-extrabold">
              <AppIcon icon={appIcons.product.shiny} size="sm" />
              Shiny
            </span>
          ) : null}
          <span className="truncate">
            {pokemon ? (
              <>
                <span
                  style={getPokemonTypeCssVariables(
                    toTypeSlug(pokemon.typeSlug),
                  )}
                  className="type-ink"
                >
                  {pokemon.name}
                </span>
                {detail ? ` · ${detail}` : null}
              </>
            ) : (
              detail
            )}
          </span>
        </span>
      </span>
      {play.statusName ? (
        <StatusBadge tone={getPlayStatusTone(play.statusSlug)}>
          {play.statusName}
        </StatusBadge>
      ) : (
        <span />
      )}
      <AppIcon icon={appIcons.actions.next} size="sm" className="text-ink-3" />
    </Link>
  </li>
);
