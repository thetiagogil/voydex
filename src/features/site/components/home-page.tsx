import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { MeadowCard } from "@/features/site/components/meadow-card";
import { MeadowPartners } from "@/features/site/components/meadow-partners";
import { PlayStoryCard } from "@/features/site/components/play-story-card";
import { SiteActions } from "@/features/site/components/site-actions";
import { getSiteVisitor } from "@/features/site/server/site-visitor-query";

/*
 * The front door for all of Voydex: the meadow band with the name, the
 * catchphrase, one paragraph and the first partners, each of which opens
 * Start a Play at its generation. It opens the page, so it runs edge to
 * edge under the bar.
 */
export const HomeMeadow = async ({ art }: { art: PublicArt }) => {
  const { isAuthenticated } = await getSiteVisitor();

  return (
    <MeadowCard
      cast={<MeadowPartners art={art} loading="eager" openStart />}
      form="band"
      titleId="home-title"
    >
      <h1 id="home-title" className="title-wordmark pt-7 sm:pt-11">
        Voydex
      </h1>
      <p className="title-section mt-2.5">
        Keep the story behind every playthrough.
      </p>
      <p className="text-ink-2 text-16 sm:text-17 mt-2.5 mb-5 max-w-[35em] leading-relaxed font-semibold sm:mt-3.5 sm:mb-6.5">
        One place for all your Pokémon games, from every generation. Log each
        run as a Play, and Voydex remembers its team, its badges, its Pokédex
        and exactly where you left off.
      </p>
      <SiteActions isAuthenticated={isAuthenticated} showIntro />
    </MeadowCard>
  );
};

/* Below the meadow: what a Play remembers. */
export const HomePage = ({
  art,
  playArt,
}: {
  art: PublicArt;
  playArt: PublicPlayArt;
}) => (
  <div className="flex min-w-0 flex-col">
    <PlayStoryCard art={art} playArt={playArt} className="mt-6 sm:mt-10" />
  </div>
);
