import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { HomeIntentOfferCard } from "@/modules/mainline/features/home/components/home-intent-offer";
import { HomeFirstPlayPicker } from "@/modules/mainline/features/home/sections/home-first-play-picker";
import { HomePlaysView } from "@/modules/mainline/features/home/sections/home-plays-view";
import type { HomePageData } from "@/modules/mainline/features/home/types";

type MainlineHomePageProps = {
  data: HomePageData;
};

const withName = (greeting: string, name: string | null) =>
  name ? `${greeting}, ${name}` : greeting;

/*
 * Mainline Home (v3 `homeback`, `homefirst`, `homenew`): where a signed-in
 * trainer lands. With Plays: the shelf of the latest ones, the current
 * Play's team on its meadow, Continue and its latest moments. With one brand-new Play: that
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

  return (
    <HomePlaysView
      bands={data.bands}
      currentPlayId={data.currentPlayId}
      isFirstPlay={data.isFirstPlay}
      greeting={
        data.isFirstPlay
          ? withName("Welcome", data.displayName)
          : withName("Welcome back", data.displayName)
      }
      subtitle={
        data.isFirstPlay ? (
          "Your first Play is right here, whenever you're ready."
        ) : (
          <>
            Your latest Plays, right where you left them.{" "}
            <Link href={appRoutes.mainlinePlays}>See all Plays</Link>
          </>
        )
      }
      intentOffer={
        data.intentOffer ? (
          <HomeIntentOfferCard
            offer={data.intentOffer}
            trainerName={data.displayName}
          />
        ) : null
      }
    />
  );
};
