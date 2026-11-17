import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { HowItWorksSection } from "@/features/site/components/how-it-works-section";
import { InstallSection } from "@/features/site/components/install-section";
import { StartAction } from "@/features/site/components/start-action";
import { PageBand } from "@/shared/components/page-band";

type FrontPageProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

/*
 * The website, which is this one page: the name, the catchphrase, one
 * paragraph and the one way into the app on the band, then how Voydex works
 * and how to install it. Everything else is the app.
 */
export const FrontPage = ({ art, playArt }: FrontPageProps) => (
  <div className="flex min-w-0 flex-col">
    <PageBand>
      <header className="flex flex-col items-center pt-6 pb-4 text-center sm:pt-10 sm:pb-8">
        <h1 className="title-wordmark">Voydex</h1>
        <p className="title-section mt-2.5">
          Keep the story behind every playthrough.
        </p>
        <p className="text-ink-2 text-16 sm:text-17 mt-2.5 mb-5 max-w-[35em] leading-relaxed font-semibold sm:mt-3.5 sm:mb-6.5">
          One place for all your Pokémon games, from every generation. Log each
          run as a Play, and Voydex remembers its team, its badges, its Pokédex
          and exactly where you left off.
        </p>
        <StartAction />
        <p className="text-ink-2 text-14 mt-3.5 font-semibold">
          No account needed. Your Plays are saved on this device.
        </p>
      </header>
    </PageBand>
    <div className="mt-10 flex flex-col gap-12 sm:mt-14 sm:gap-16">
      <HowItWorksSection art={art} playArt={playArt} />
      <InstallSection />
    </div>
  </div>
);
