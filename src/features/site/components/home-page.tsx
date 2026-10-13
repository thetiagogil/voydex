import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { MeadowCard } from "@/features/site/components/meadow-card";
import { PlayStoryCard } from "@/features/site/components/play-story-card";
import { SiteActions } from "@/features/site/components/site-actions";
import { getSiteVisitor } from "@/features/site/server/site-visitor-query";

/*
 * The front door for all of Voydex: the meadow band with the name, the
 * catchphrase, one paragraph and the first partners. The route hands it to
 * the shell as its hero so it runs edge to edge under the bar.
 */
export const HomeMeadow = async ({ art }: { art: PublicArt }) => {
  const { isAuthenticated } = await getSiteVisitor();

  return (
    <MeadowCard art={art} form="band" loading="eager" titleId="home-title">
      <h1
        id="home-title"
        className="text-60 pt-7 leading-none tracking-[-0.025em] sm:pt-11 sm:text-[112px]"
      >
        Voydex
      </h1>
      <p className="font-display mt-2.5 text-[22px] leading-tight font-semibold tracking-[-0.01em] sm:text-[30px]">
        Keep the story behind every playthrough.
      </p>
      <p className="text-ink-2 mt-2.5 mb-5 max-w-[35em] text-[15.5px] leading-[1.6] font-semibold sm:mt-3.5 sm:mb-6.5 sm:text-[17.5px]">
        One place for all your Pokémon games, from every generation. Log each
        run as a Play, and Voydex remembers its team, its badges, its Pokédex
        and exactly where you left off.
      </p>
      <SiteActions isAuthenticated={isAuthenticated} />
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
