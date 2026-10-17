import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { samplePlay, samplePlayStory } from "@/features/site/data/sample-play";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

/* "32h 54m", as the Play's playtime reads. */
const formatPlaytime = (minutes: number) =>
  `${Math.floor(minutes / 60)}h ${minutes % 60}m`;

const beatClassName =
  "relative z-1 grid grid-cols-[46px_minmax(0,1fr)] content-start gap-x-4 pb-4.5 text-left md:flex md:flex-col md:items-center md:gap-0.75 md:pb-0 md:text-center";

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
    <span className="text-ink-3 text-13 font-bold">{when}</span>
    <span className="text-16 font-extrabold">{title}</span>
    <span
      className={cn(
        "text-ink-2 text-14 max-w-[17em] leading-[1.45] font-semibold",
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
  playArt,
}: {
  art: PublicArt;
  className?: string;
  playArt: PublicPlayArt;
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
      <div className="bg-surface-2 flex items-center gap-3 rounded-md py-2 pr-4 pl-2 sm:ml-auto">
        {art.gameCover({ className: "h-12 rounded-xs", game: samplePlay.game })}
        <div className="min-w-0">
          <p className="font-display text-17 text-ink font-semibold">
            {samplePlay.name}
          </p>
          <p className="text-13 text-ink-2 font-semibold">
            Trainer {samplePlay.trainer} ·{" "}
            <span className="tabular-nums">
              {formatPlaytime(samplePlay.playtimeMinutes)}
            </span>
          </p>
        </div>
      </div>
    </div>
    <ol className="before:bg-line relative mt-5.5 grid grid-cols-1 before:absolute before:top-6.5 before:bottom-15 before:left-5.5 before:w-0.75 before:rounded-[3px] md:mt-8.5 md:grid-cols-5 md:gap-4 md:before:right-[30%] md:before:bottom-auto md:before:left-[10%] md:before:h-0.75 md:before:w-auto md:after:absolute md:after:top-6.5 md:after:right-[10%] md:after:left-[70%] md:after:h-0.75 md:after:bg-[repeating-linear-gradient(90deg,var(--dash)_0_8px,transparent_8px_15px)]">
      {samplePlayStory.beats.map((beat) => (
        <li key={beat.title} className={beatClassName}>
          {playArt.medallion({
            className: "row-span-3 m-0 md:mt-0.75 md:mb-3.5",
            moment: beat.moment,
          })}
          <BeatText
            detail={beat.detail}
            isNote={beat.moment.kind === "note"}
            title={beat.title}
            when={beat.when}
          />
        </li>
      ))}
      <li className={beatClassName}>
        <span className="bg-bg empty-slot text-ink-3 row-span-3 grid size-11.5 place-items-center rounded-full md:mt-1.25 md:mb-4">
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
