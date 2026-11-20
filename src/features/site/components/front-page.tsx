import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { ExamplePlay } from "@/features/site/components/example-play";
import { HowItWorksSection } from "@/features/site/components/how-it-works-section";
import { InstallSection } from "@/features/site/components/install-section";
import { appRoutes } from "@/config/routes";
import { PokemonRender } from "@/features/site/components/pokemon-render";
import { StartAction } from "@/features/site/components/start-action";
import { samplePlayTeam } from "@/features/site/data/sample-play";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PageBand } from "@/shared/components/page-band";
import { TextLink } from "@/shared/components/text-link";

/* The example Play's partner, the game's own face. */
const heroPartner = samplePlayTeam[0];

type FrontPageProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

/*
 * The front page's band, as tall as the screen: the same band every page of
 * the app opens on. It holds only what a first visit needs: what Voydex is,
 * one line, and the one way in, beside an example Play with its partner
 * standing on it. The rest of the page waits below, a scroll or a link in
 * the bar away.
 */
const FrontBand = ({ art, playArt }: FrontPageProps) => (
  <PageBand className="relative grid min-h-[calc(100svh-var(--bar-h)-var(--band-step))] content-center items-center gap-x-14 gap-y-20 pt-6 pb-16 sm:pt-10 lg:grid-cols-[minmax(0,1fr)_minmax(0,35rem)] lg:pb-20">
    <div className="flex flex-col items-start">
      <h1 id="front-title" className="title-display max-w-[12em]">
        A Pokédex for your playthroughs.
      </h1>
      <p className="text-ink-2 copy-body sm:text-18 mt-4 mb-6 max-w-[27em] leading-relaxed sm:mt-5 sm:mb-7.5">
        Every run becomes an entry: its team, its badges, its Pokédex and
        exactly where you left off.
      </p>
      <StartAction />
      <p className="text-ink-2 copy-note mt-3.5 max-sm:w-full max-sm:text-center">
        No account needed. Your Plays are saved on this device.
      </p>
    </div>
    <div className="relative">
      {/* The Play's partner stands on its card, as on a step below. */}
      <PokemonRender
        art={art}
        pokemon={heroPartner}
        loading="eager"
        className="absolute -top-24 right-2 z-1 size-28 object-contain sm:-top-30 sm:right-3 sm:size-44"
      />
      <ExamplePlay art={art} playArt={playArt} />
    </div>
    <TextLink
      href={appRoutes.howItWorks}
      tone="quiet"
      standalone
      className="absolute inset-x-0 bottom-3 mx-auto w-fit max-lg:hidden"
    >
      How it works
      <AppIcon icon={appIcons.actions.expand} inline="end" />
    </TextLink>
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
