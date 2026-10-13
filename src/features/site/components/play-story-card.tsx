import { GameCover } from "@/features/site/components/stills/game-cover";
import { MomentMedallion } from "@/features/site/components/stills/moment-medallion";
import { samplePlay, samplePlayStory } from "@/features/site/data/sample-play";
import type { SiteArt } from "@/features/site/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

const beatClassName =
  "relative z-1 grid grid-cols-[46px_minmax(0,1fr)] content-start gap-x-4 pb-4.5 text-left md:flex md:flex-col md:items-center md:gap-[3px] md:pb-0 md:text-center";

const BeatText = ({
  detail,
  isNote = false,
  title,
  when,
}: {
  detail: string;
  isNote?: boolean;
  title: string;
  when: string;
}) => (
  <>
    <span className="text-ink-3 text-[12.5px] font-bold">{when}</span>
    <span className="text-[15.5px] font-extrabold">{title}</span>
    <span
      className={cn(
        "text-ink-2 max-w-[17em] text-[13.5px] leading-[1.45] font-semibold",
        isNote && "italic",
      )}
    >
      {detail}
    </span>
  </>
);

/*
 * Home's story strip: one example Play's moments in order, on the line that
 * runs between their medallions, ending in what comes next.
 */
export const PlayStoryCard = ({
  art,
  className,
}: {
  art: SiteArt;
  className?: string;
}) => (
  <Card className={cn("gap-0 px-5 py-5 sm:px-7 sm:py-6.5", className)}>
    <div className="flex flex-wrap items-start gap-x-6 gap-y-4">
      <div className="min-w-0">
        <h2 className="text-28 tracking-[-0.015em]">What a Play remembers</h2>
        <p className="text-ink-2 mt-1.5 max-w-[36em] font-semibold">
          Every run you log becomes a Play: its moments in order, with your own
          notes beside them. Here&apos;s one.
        </p>
      </div>
      <div
        style={art.gameColour(samplePlay.game.slug)}
        className="game-scope bg-game-wash flex items-center gap-3 rounded-md py-2 pr-4 pl-2 sm:ml-auto"
      >
        <GameCover
          art={art}
          game={samplePlay.game}
          className="h-12 rounded-xs"
        />
        <div className="min-w-0">
          <p className="font-display text-17 text-game-deep font-semibold">
            {samplePlay.name}
          </p>
          <p className="text-13 text-ink-2 font-semibold">
            {samplePlay.trainer} ·{" "}
            <span className="tabular-nums">{samplePlay.playtime}</span>
          </p>
        </div>
      </div>
    </div>
    <ol className="before:bg-line relative mt-5.5 grid grid-cols-1 before:absolute before:top-[26px] before:bottom-[60px] before:left-[22px] before:w-[3px] before:rounded-[3px] md:mt-8.5 md:grid-cols-5 md:gap-4 md:before:right-[30%] md:before:bottom-auto md:before:left-[10%] md:before:h-[3px] md:before:w-auto md:after:absolute md:after:top-[26px] md:after:right-[10%] md:after:left-[70%] md:after:h-[3px] md:after:bg-[repeating-linear-gradient(90deg,var(--dash)_0_8px,transparent_8px_15px)]">
      {samplePlayStory.beats.map((beat) => (
        <li key={beat.title} className={beatClassName}>
          <MomentMedallion
            art={art}
            moment={beat.moment}
            className="row-span-3 m-0 md:mt-[3px] md:mb-3.5"
          />
          <BeatText
            detail={beat.detail}
            isNote={beat.moment.kind === "note"}
            title={beat.title}
            when={beat.when}
          />
        </li>
      ))}
      <li className={beatClassName}>
        <span className="bg-bg border-dash text-ink-3 row-span-3 grid size-[46px] place-items-center rounded-full border-[2.5px] border-dashed md:mt-[5px] md:mb-4">
          <AppIcon icon={appIcons.milestones.champion} className="size-5" />
        </span>
        <BeatText
          detail={samplePlayStory.next.detail}
          title={samplePlayStory.next.title}
          when="Next"
        />
      </li>
    </ol>
  </Card>
);
