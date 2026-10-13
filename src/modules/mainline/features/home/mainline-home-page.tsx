import { HomeIntentOfferCard } from "@/modules/mainline/features/home/components/home-intent-offer";
import { HomeBandSection } from "@/modules/mainline/features/home/sections/home-band-section";
import { HomeFirstPlayPicker } from "@/modules/mainline/features/home/sections/home-first-play-picker";
import { HomeMomentsSection } from "@/modules/mainline/features/home/sections/home-moments-section";
import type { HomePageData } from "@/modules/mainline/features/home/types";

type MainlineHomePageProps = {
  data: HomePageData;
};

const withName = (greeting: string, name: string | null) =>
  name ? `${greeting}, ${name}` : greeting;

/*
 * Mainline Home (v3 `homeback`, `homefirst`, `homenew`): where a signed-in
 * trainer lands. With Plays: the shelf, the current Play's team on its
 * meadow, Continue and its latest moments. With one brand-new Play: that
 * Play, its partner waiting to be tapped. With none: the picker that starts
 * the first one.
 */
export const MainlineHomePage = ({ data }: MainlineHomePageProps) => {
  if (data.kind === "empty") {
    return (
      <HomeFirstPlayPicker
        greeting={withName("Welcome", data.displayName)}
        intent={data.intent}
        picker={data.picker}
      />
    );
  }

  const current =
    data.plays.find((play) => play.id === data.currentPlayId) ?? data.plays[0];

  return (
    <div className="flex flex-col">
      <HomeBandSection
        current={current}
        plays={data.plays}
        isFirstPlay={data.isFirstPlay}
        partnerChoice={data.partnerChoice}
        greeting={
          data.isFirstPlay
            ? withName("Welcome", data.displayName)
            : withName("Welcome back", data.displayName)
        }
        subtitle={
          data.isFirstPlay
            ? "Your first Play is right here, whenever you're ready."
            : "Your teams are right where you left them."
        }
      />
      {data.intentOffer ? (
        <HomeIntentOfferCard
          offer={data.intentOffer}
          trainerName={data.displayName}
        />
      ) : null}
      <HomeMomentsSection moments={data.moments} play={current} />
    </div>
  );
};
