import { Fragment } from "react";

import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { PokemonRender } from "@/features/site/components/pokemon-render";
import {
  samplePlay,
  samplePlayBadges,
  samplePlayProgress,
  samplePlayTeam,
} from "@/features/site/data/sample-play";
import { getTypeColourStyle } from "@/features/site/utils/type-colour";
import { StatusBadge } from "@/shared/components/status-badge";
import { Progress } from "@/shared/components/ui/progress";

/* The badges' resting tilts, as the stamp card draws them. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5];

const playtime = `${Math.floor(samplePlay.playtimeMinutes / 60)}h ${samplePlay.playtimeMinutes % 60}m`;

/*
 * The Dex's screen on the front page: the example Play as an entry, drawn
 * with the app's own pieces (the cover, team stickers, badge stamps, the
 * progress bars). It is a picture, so it is one image to a screen reader,
 * described by its label, and inert: nothing inside it can be focused.
 */
export const DexScreen = ({
  art,
  playArt,
}: {
  art: PublicArt;
  playArt: PublicPlayArt;
}) => (
  <div
    role="img"
    aria-label={`An example Play as an entry: ${samplePlay.name}, ${samplePlay.status.toLowerCase()}, Trainer ${samplePlay.trainer}, ${playtime}. ${samplePlayProgress.map((bar) => `${bar.label} ${bar.percent}%`).join(", ")}. Team: ${samplePlayTeam.map((pokemon) => pokemon.name).join(", ")}. All eight gym badges.`}
    inert
    className="bg-action-lip w-full rounded-2xl p-3 pb-3.5 sm:p-4 sm:pb-4.5"
  >
    <div className="bg-surface text-ink rounded-xl p-4 text-left sm:p-5.5">
      <p className="text-12 text-ink-2 font-extrabold tracking-wider uppercase">
        A Play · {samplePlay.game.region}
      </p>
      <div className="mt-2.5 flex gap-4">
        {art.gameCover({ className: "h-28 sm:h-33", game: samplePlay.game })}
        <div className="flex min-w-0 flex-1 flex-col items-start">
          <p className="title-card">{samplePlay.name}</p>
          <StatusBadge tone="calm" className="mt-1.5">
            {samplePlay.status}
          </StatusBadge>
          <p className="text-14 text-ink-2 mt-2 font-semibold">
            Trainer {samplePlay.trainer} · {playtime}
          </p>
          <div className="mt-2 flex w-full flex-col gap-1.5">
            {samplePlayProgress.map((bar) => (
              <div
                key={bar.label}
                className="text-13 grid grid-cols-[4rem_minmax(0,1fr)_2.5rem] items-center gap-2 font-bold"
              >
                {bar.label}
                <Progress value={bar.percent} aria-label={bar.label} />
                <span className="text-right tabular-nums">{bar.percent}%</span>
              </div>
            ))}
          </div>
        </div>
      </div>
      <div className="mt-4.5 grid grid-cols-6 gap-1.5 sm:gap-2">
        {samplePlayTeam.map((pokemon) => (
          <span
            key={pokemon.slug}
            style={getTypeColourStyle(pokemon.type)}
            className="sticker grid aspect-square place-items-center rounded-md"
          >
            <PokemonRender
              art={art}
              pokemon={pokemon}
              fallback="letter"
              className="size-[88%]"
            />
          </span>
        ))}
      </div>
      <div className="mt-4 grid grid-cols-[repeat(8,minmax(0,2.625rem))] gap-1.5 sm:gap-2.5">
        {samplePlayBadges.map((badge, index) => (
          <Fragment key={badge.name}>
            {playArt.badgeStamp({
              spriteSlug: badge.spriteSlug,
              tilt: stampTilts[index] ?? 0,
              type: badge.type,
            })}
          </Fragment>
        ))}
      </div>
    </div>
    <span className="mt-3 flex flex-col gap-1 px-1.5">
      <span className="bg-action block h-1 w-11 rounded-full" />
      <span className="bg-action block h-1 w-11 rounded-full" />
      <span className="bg-action block h-1 w-11 rounded-full" />
    </span>
  </div>
);
