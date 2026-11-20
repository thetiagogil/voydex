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
 * The example Play in the front page's band: one of Voydex's own cards,
 * drawn with the app's own pieces (the cover, team stickers, badge stamps,
 * the progress bars). It is a picture, so it is one image to a screen
 * reader, described by its label, and inert: nothing inside it can be
 * focused.
 */
export const ExamplePlay = ({
  art,
  playArt,
}: {
  art: PublicArt;
  playArt: PublicPlayArt;
}) => (
  <div
    role="img"
    aria-label={`An example Play: ${samplePlay.name}, ${samplePlay.status.toLowerCase()}, Trainer ${samplePlay.trainer}, ${playtime}. ${samplePlayProgress.map((bar) => `${bar.label} ${bar.percent}%`).join(", ")}. Team: ${samplePlayTeam.map((pokemon) => pokemon.name).join(", ")}. All eight gym badges.`}
    inert
    className="bg-surface text-ink shadow-card w-full rounded-2xl p-4 text-left sm:p-5.5"
  >
    <p className="copy-mark text-ink-2 tracking-wider uppercase">
      A Play · {samplePlay.game.region}
    </p>
    <div className="mt-2.5 flex gap-4">
      {art.gameCover({ className: "h-28 sm:h-33", game: samplePlay.game })}
      <div className="flex min-w-0 flex-1 flex-col items-start">
        <p className="title-card">{samplePlay.name}</p>
        <StatusBadge tone="calm" className="mt-1.5">
          {samplePlay.status}
        </StatusBadge>
        <p className="copy-note text-ink-2 mt-2">
          Trainer {samplePlay.trainer} · {playtime}
        </p>
        <div className="mt-2 flex w-full flex-col gap-1.5">
          {samplePlayProgress.map((bar) => (
            <div
              key={bar.label}
              className="copy-label grid grid-cols-[4rem_minmax(0,1fr)] items-center gap-2"
            >
              {bar.label}
              <Progress showValue value={bar.percent} aria-label={bar.label} />
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
          className="sticker grid aspect-square place-items-center rounded-sm"
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
    <div className="mt-4 grid grid-cols-[repeat(8,minmax(0,2.625rem))] gap-1.5 sm:gap-2">
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
);
