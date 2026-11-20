import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { ExamplePlay } from "@/features/site/components/example-play";
import { HowItWorksSection } from "@/features/site/components/how-it-works-section";
import { InstallSection } from "@/features/site/components/install-section";
import { StartAction } from "@/features/site/components/start-action";
import { PageBand } from "@/shared/components/page-band";

type FrontPageProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

/*
 * The front page's band: the same band every page of the app opens on.
 * Under the bar, which carries the name, it holds what Voydex is, a
 * paragraph and the one way in, beside an example Play.
 */
const FrontBand = ({ art, playArt }: FrontPageProps) => (
  <PageBand className="grid items-center gap-8 pt-6 pb-8 sm:pt-10 sm:pb-12 lg:grid-cols-[minmax(0,1fr)_minmax(0,35rem)] lg:gap-14 lg:pb-14">
    <div className="flex flex-col items-start">
      <h1 id="front-title" className="title-display max-w-[12em]">
        A Pokédex for your playthroughs.
      </h1>
      <p className="text-ink-2 copy-body sm:text-18 mt-4 mb-6 max-w-[31em] leading-relaxed sm:mt-5 sm:mb-7.5">
        Every run you play becomes an entry: its team, its badges, its Pokédex
        and exactly where you left off. One place for all your Pokémon games,
        from every generation.
      </p>
      <StartAction />
      <p className="text-ink-2 copy-note mt-3.5 max-sm:w-full max-sm:text-center">
        No account needed. Your Plays are saved on this device.
      </p>
    </div>
    <ExamplePlay art={art} playArt={playArt} />
  </PageBand>
);

/*
 * The website, which is this one page: the band with the one way into
 * the app, then how Voydex works and how to install it. Everything else is the
 * app.
 */
export const FrontPage = ({ art, playArt }: FrontPageProps) => (
  <div className="flex min-w-0 flex-col">
    <FrontBand art={art} playArt={playArt} />
    <div className="mt-10 flex flex-col gap-12 sm:mt-14 sm:gap-16">
      <HowItWorksSection art={art} playArt={playArt} />
      <InstallSection />
    </div>
  </div>
);
