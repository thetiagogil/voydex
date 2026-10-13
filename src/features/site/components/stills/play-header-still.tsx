import { samplePlay } from "@/features/site/data/sample-play";
import type { SiteArt } from "@/features/site/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/*
 * A drawing of the example Play's header: it takes its game's colour, with
 * the dotted texture, the cover, the Play's name and its tabs.
 */
export const PlayHeaderStill = ({ art }: { art: SiteArt }) => (
  <span
    style={art.gameColour(samplePlay.game.slug)}
    className="game-scope bg-game-soft play-texture shadow-game block rounded-xl px-4.5 pt-4 pb-3.5 sm:rounded-2xl sm:px-5 sm:pt-4.5 sm:pb-4"
  >
    <span className="relative z-1 flex items-center gap-4">
      {art.gameCover({
        className:
          "h-[76px] rounded-sm border-[3px] border-white max-sm:hidden",
        game: samplePlay.game,
      })}
      <span className="min-w-0">
        <span className="text-game-deep text-13 block font-bold">
          {samplePlay.eyebrow}
        </span>
        <span className="font-display mt-0.5 mb-1.5 block text-[21px] leading-[1.08] font-semibold tracking-[-0.01em] sm:text-[26px]">
          {samplePlay.name}
        </span>
        <span className="text-13 flex flex-wrap gap-1.5 font-bold">
          {samplePlay.tracks.map((track) => (
            <span
              key={track}
              className="text-ink inline-flex items-center gap-1.5 rounded-full bg-white/75 px-3 py-1"
            >
              <AppIcon
                icon={appIcons.product.completion}
                className="size-3.5"
              />
              {track}
            </span>
          ))}
        </span>
      </span>
    </span>
    <span className="relative z-1 mt-3.5 flex gap-1.5 overflow-hidden">
      {samplePlay.tabs.map((tab, index) => (
        <span
          key={tab}
          className={cn(
            "shrink-0 rounded-full px-3.5 py-2 text-[13.5px] font-bold",
            index === 0
              ? "bg-game-strong text-white"
              : "text-ink-2 bg-white/65",
          )}
        >
          {tab}
        </span>
      ))}
    </span>
  </span>
);
