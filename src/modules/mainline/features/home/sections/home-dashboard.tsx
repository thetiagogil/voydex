import { HomeDataNote } from "@/modules/mainline/features/home/components/home-data-note";
import { HomeJourneyCard } from "@/modules/mainline/features/home/components/home-journey-card";
import { HomeOtherPlays } from "@/modules/mainline/features/home/components/home-other-plays";
import { HomeJournal } from "@/modules/mainline/features/home/sections/home-journal";
import type { HomePageData } from "@/modules/mainline/features/home/types";

type HomeDashboardProps = {
  data: Extract<HomePageData, { kind: "plays" }>;
  greeting: string;
};

/*
 * Home with Plays, in two columns from 1024px: on the left the Play you're
 * on as one big card and your other Plays under it; on the right the
 * Journal, as tall as the left side. Below 1024px they stack in that order.
 * No band: Home opens straight on its cards.
 */
export const HomeDashboard = ({ data, greeting }: HomeDashboardProps) => (
  <div className="flex flex-col gap-6 pt-4 sm:pt-8">
    <div className="flex flex-wrap items-baseline gap-x-4 gap-y-1">
      <h1 className="title-page">{greeting}</h1>
      <p className="text-ink-2 copy-body">
        {data.underwayCount === 1
          ? "1 Play on the go"
          : data.underwayCount
            ? `${data.underwayCount} Plays on the go`
            : "Your Plays, right where you left them"}
      </p>
    </div>
    <div className="grid gap-6 lg:grid-cols-[minmax(0,1fr)_22.5rem] lg:gap-8 xl:grid-cols-[minmax(0,1fr)_25rem]">
      <div className="flex min-w-0 flex-col gap-8">
        <HomeJourneyCard journey={data.journey} />
        <HomeOtherPlays plays={data.others} />
      </div>
      <div className="relative lg:min-h-80">
        <HomeJournal entries={data.journal} />
      </div>
    </div>
    <HomeDataNote />
  </div>
);
