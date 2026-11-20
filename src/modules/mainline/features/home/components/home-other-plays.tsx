import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { formatPlayMinutes } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SectionHead } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { Progress } from "@/shared/components/ui/progress";
import { cn } from "@/shared/utils/cn";

/*
 * Which cards a row has room for: one beside New Play on phones, two from
 * 640px, three from 1024px and all four from 1280px. Hidden, not left out, so nothing jumps.
 */
const visibilityByIndex = (index: number) =>
  cn(
    index >= 1 && "max-sm:hidden",
    index >= 2 && "max-lg:hidden",
    index >= 3 && "max-xl:hidden",
  );

/* One other Play: its cover, name, how it stands and one bar for how far along. */
const OtherPlayCard = ({ play }: { play: HomePlay }) => (
  <Link
    href={appRoutes.mainlinePlay(play.id)}
    className="group/card-link block h-full rounded-lg outline-none"
  >
    <Card size="sm" variant="interactive" className="h-full gap-3">
      <div className="grid place-items-center">
        <GameCover
          alt={play.gameName}
          coverImageUrl={play.coverImageUrl}
          gameName={play.gameName}
          gameSlug={play.gameSlug ?? undefined}
          size="token"
        />
      </div>
      <div className="min-w-0">
        <p className="copy-strong truncate">{play.name}</p>
        <p className="text-ink-3 copy-meta truncate">
          {[
            play.statusName,
            typeof play.playtimeMinutes === "number"
              ? formatPlayMinutes(play.playtimeMinutes)
              : null,
          ]
            .filter(Boolean)
            .join(" · ")}
        </p>
      </div>
      <div className="mt-auto flex flex-col gap-1">
        {play.overallPercent === null ? (
          <p className="text-ink-3 copy-meta">Progress not tracked</p>
        ) : (
          <Progress
            showValue
            value={play.overallPercent}
            max={100}
            aria-label="Overall progress"
          />
        )}
      </div>
    </Card>
  </Link>
);

/*
 * Your other Plays still underway, as cover cards that each open their
 * Play, and New Play at the end of the row as an open slot. A row, never a
 * scroller: what doesn't fit waits on the Plays page.
 */
export const HomeOtherPlays = ({ plays }: { plays: HomePlay[] }) => (
  <section aria-labelledby="home-other-plays" className="flex flex-col gap-4">
    <SectionHead
      title="Your other Plays"
      titleId="home-other-plays"
      more={{ href: appRoutes.mainlinePlays, label: "All Plays" }}
    />
    <ul className="grid grid-cols-2 gap-3 sm:grid-cols-3 sm:gap-4 lg:grid-cols-4 xl:grid-cols-5">
      {plays.map((play, index) => (
        <li key={play.id} className={visibilityByIndex(index)}>
          <OtherPlayCard play={play} />
        </li>
      ))}
      <li>
        <NewPlayTrigger className="empty-slot text-ink-2 hover:text-ink copy-strong focus-ring flex h-full min-h-48 w-full flex-col items-center justify-center gap-2 rounded-lg transition-colors">
          <AppIcon icon={appIcons.actions.create} size="lg" />
          New Play
        </NewPlayTrigger>
      </li>
    </ul>
  </section>
);
