import { HomeBandSection } from "@/modules/mainline/features/home/sections/home-band-section";
import {
  HomeDashboard,
  type HomeTrainerCardRender,
} from "@/modules/mainline/features/home/sections/home-dashboard";
import type { HomePageData } from "@/modules/mainline/features/home/types";

type MainlineHomePageProps = {
  data: HomePageData;
  renderTrainerCard: HomeTrainerCardRender;
};

const withName = (greeting: string, name: string | null) =>
  name ? `${greeting}, ${name}` : greeting;

/*
 * Mainline Home (v3 `homeback`, `homefirst`, `homenew`): where a trainer
 * lands. Your trainer profile and a row back into your Play; with no Play
 * yet the same profile, empty, with the way to start one in that row's
 * place. With one brand-new Play: that Play on the band, its partner
 * waiting to be tapped.
 */
export const MainlineHomePage = ({
  data,
  renderTrainerCard,
}: MainlineHomePageProps) => {
  if (data.kind === "first") {
    return (
      <div className="flex flex-1 flex-col">
        <HomeBandSection
          band={data.band}
          greeting={withName("Welcome", data.displayName)}
          subtitle="Your first Play is right here, whenever you're ready."
        />
      </div>
    );
  }

  return <HomeDashboard data={data} renderTrainerCard={renderTrainerCard} />;
};
