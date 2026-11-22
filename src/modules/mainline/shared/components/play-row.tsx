import type { ComponentProps, CSSProperties, ReactNode } from "react";

import { Link } from "@/shared/components/link";

import type { TrainerPlay } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { StatusBadge } from "@/shared/components/status-badge";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";

const toTypeSlug = (slug: string | null | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

const rowLayoutClassName =
  "grid w-full min-w-0 grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-3";

/* The row itself: a link that opens the Play, or a plain tile that shows it. */
const PlayRowFrame = ({
  children,
  className,
  href,
  label,
  linkProps,
}: {
  children: ReactNode;
  className?: string;
  href?: string;
  label?: string;
  linkProps?: Omit<ComponentProps<typeof Link>, "className" | "href">;
}) =>
  href ? (
    <Link
      href={href}
      aria-label={label}
      {...linkProps}
      className={cn(
        rowInteractionVariants({ interaction: "action" }),
        /* Each Play is its own tile, so a list of them reads as cards. */
        "tile-link",
        rowLayoutClassName,
        className,
      )}
    >
      {children}
    </Link>
  ) : (
    <div className={cn("tile", rowLayoutClassName, className)}>{children}</div>
  );

type PlayRowPlay = Pick<TrainerPlay, "gameName" | "gameSlug" | "name"> &
  Partial<Pick<TrainerPlay, "statusName" | "statusSlug">>;

/*
 * One Play as a row inside a card or a sheet, the small form of the Plays
 * list's card and laid out like it: the game's cover, the Play's name, then
 * one line that starts with its status and says what the row is about (the
 * game, the Pokémon of yours that is there, the hours it took), and the
 * arrow of everything that opens a Play. Every list of Plays outside the
 * Plays list is this row: a Codex entry's In your Plays, a game's Your
 * Plays, the Collection's sheets and Statistics' time. In a family's sheet
 * the line starts with which Pokémon it is, in its type's colour. Without a
 * `label` the row's own words name it. Render inside a `ul`.
 */
export const PlayRow = ({
  className,
  detail,
  href,
  label,
  linkProps,
  play,
  pokemon,
  shiny = false,
  style,
}: {
  className?: string;
  detail: ReactNode;
  /* Where the row opens the Play; without it the row only shows it. */
  href?: string;
  label?: string;
  /* Handlers for the link, such as a chart's hover focus. */
  linkProps?: Omit<ComponentProps<typeof Link>, "className" | "href">;
  play: PlayRowPlay;
  pokemon?: { name: string; typeSlug: string | null };
  shiny?: boolean;
  /* Variables the row's detail reads, such as a chart colour. */
  style?: CSSProperties;
}) => (
  <li style={style} className="flex min-w-0">
    <PlayRowFrame
      href={href}
      label={label}
      linkProps={linkProps}
      className={className}
    >
      <GameCover
        alt=""
        coverImageUrl={
          play.gameSlug ? getGameCoverImageUrlBySlug(play.gameSlug) : null
        }
        gameName={play.gameName}
        gameSlug={play.gameSlug ?? undefined}
        size="row"
      />
      <span className="min-w-0">
        <span className="text-ink copy-strong block truncate">{play.name}</span>
        <span className="text-ink-2 copy-meta flex min-w-0 items-center gap-1.5 tabular-nums">
          {play.statusName ? (
            <StatusBadge
              tone={getPlayStatusTone(play.statusSlug ?? null)}
              className="shrink-0"
            >
              {play.statusName}
            </StatusBadge>
          ) : null}
          {shiny ? (
            <span className="type-ink inline-flex shrink-0 items-center gap-1 font-extrabold">
              <AppIcon icon={appIcons.product.shiny} size="sm" />
              Shiny
            </span>
          ) : null}
          <span className="flex min-w-0 items-center gap-1.5 truncate">
            {pokemon ? (
              <span className="truncate">
                <span
                  style={getPokemonTypeCssVariables(
                    toTypeSlug(pokemon.typeSlug),
                  )}
                  className="type-ink"
                >
                  {pokemon.name}
                </span>
                {detail ? <> · {detail}</> : null}
              </span>
            ) : (
              detail
            )}
          </span>
        </span>
      </span>
      {href ? (
        <AppIcon
          icon={appIcons.actions.continue}
          size="md"
          className="text-ink-3"
        />
      ) : (
        <span />
      )}
    </PlayRowFrame>
  </li>
);
