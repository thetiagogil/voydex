import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { appRoutes, frontPageSections } from "@/config/routes";
import { DexScreen } from "@/features/site/components/dex-screen";
import { HowItWorksSection } from "@/features/site/components/how-it-works-section";
import { InstallSection } from "@/features/site/components/install-section";
import { SectionLink } from "@/features/site/components/section-link";
import { StartAction } from "@/features/site/components/start-action";
import { DexDevice } from "@/shared/components/brand/dex-device";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";

type FrontPageProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

const topLinkClassName =
  "focus-ring text-15 hidden rounded-full px-3 py-2 font-bold text-white hover:bg-action sm:inline-flex";

/*
 * The front page's head is the Dex itself (`DexDevice`): Voydex is a Pokédex
 * for your playthroughs, so the page opens as the device. Its top carries
 * the way to log in; under it, the name, the words and the one way in beside
 * the screen, which shows a Play as an entry.
 */
const DexHero = ({ art, playArt }: FrontPageProps) => (
  <DexDevice
    ariaLabelledBy="front-title"
    homeHref={appRoutes.home}
    top={
      <>
        <SectionLink
          section={frontPageSections.howItWorks}
          className={topLinkClassName}
        >
          How it works
        </SectionLink>
        <SectionLink
          section={frontPageSections.install}
          className={topLinkClassName}
        >
          Install
        </SectionLink>
        <Link
          href={appRoutes.login}
          className={buttonVariants({ size: "sm", variant: "inverse" })}
        >
          Log in
        </Link>
      </>
    }
  >
    <div className="grid items-center gap-8 pt-6 pb-8 sm:pt-10 sm:pb-12 lg:grid-cols-[minmax(0,1fr)_minmax(0,35rem)] lg:gap-14 lg:pb-14">
      <div className="flex flex-col items-start">
        <h1 id="front-title" className="title-wordmark">
          Voydex
        </h1>
        <p className="title-section mt-1.5 sm:mt-2.5">
          A Pokédex for your playthroughs.
        </p>
        <p className="text-16 sm:text-18 mt-3.5 mb-6 max-w-[31em] leading-relaxed font-semibold sm:mt-4.5 sm:mb-7.5">
          Every run you play becomes an entry: its team, its badges, its Pokédex
          and exactly where you left off. One place for all your Pokémon games,
          from every generation.
        </p>
        <StartAction />
        <p className="text-14 mt-3.5 font-semibold max-sm:w-full max-sm:text-center">
          No account needed. Your Plays are saved on this device.
        </p>
      </div>
      <DexScreen art={art} playArt={playArt} />
    </div>
  </DexDevice>
);

/*
 * The website, which is this one page: the Dex with the one way into the
 * app, then how Voydex works and how to install it. Everything else is the
 * app.
 */
export const FrontPage = ({ art, playArt }: FrontPageProps) => (
  <div className="flex min-w-0 flex-col">
    <DexHero art={art} playArt={playArt} />
    <div className="mt-10 flex flex-col gap-12 sm:mt-14 sm:gap-16">
      <HowItWorksSection art={art} playArt={playArt} />
      <InstallSection />
    </div>
  </div>
);
