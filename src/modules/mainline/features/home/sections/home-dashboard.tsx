import { HomeDataNote } from "@/modules/mainline/features/home/components/home-data-note";
import { HomeJourneyCard } from "@/modules/mainline/features/home/components/home-journey-card";
import { HomeOtherPlays } from "@/modules/mainline/features/home/components/home-other-plays";
import type { HomePageData } from "@/modules/mainline/features/home/types";

type HomeDashboardProps = {
  data: Extract<HomePageData, { kind: "plays" }>;
  greeting: string;
};

/*
 * Home with Plays: the Play you're on as one big card, and your other Plays
 * under it. No band: Home opens straight on its cards.
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
    <HomeJourneyCard journey={data.journey} />
    <HomeOtherPlays plays={data.others} />
    <HomeDataNote />
  </div>
);
