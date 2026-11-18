import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { appRoutes, frontPageSections } from "@/config/routes";
import { DexScreen } from "@/features/site/components/dex-screen";
import { HowItWorksSection } from "@/features/site/components/how-it-works-section";
import { InstallSection } from "@/features/site/components/install-section";
import { StartAction } from "@/features/site/components/start-action";
import { DexLens } from "@/shared/components/brand/dex-lens";
import { DexLights } from "@/shared/components/brand/dex-lights";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";

type FrontPageProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

const topLinkClassName =
  "focus-ring text-15 hidden rounded-full px-3 py-2 font-bold text-white hover:bg-action sm:inline-flex";

/*
 * The front page's head is the Dex itself: Voydex is a Pokédex for your
 * playthroughs, so the page opens as the device. Its top carries the lens,
 * the three lights, the name and the way to log in, over the stepped edge a
 * Pokédex has; under it, the words and the one way in beside the screen,
 * which shows a Play as an entry. It draws its own top, so the page takes no
 * site bar, and it runs the full width of the window.
 */
const DexHero = ({ art, playArt }: FrontPageProps) => (
  <section
    aria-labelledby="front-title"
    className="bg-action relative isolate mx-[calc(50%-50vw)] -mt-(--page-top) w-screen overflow-hidden rounded-b-[28px] text-white sm:rounded-b-[44px]"
  >
    {/* The device's darker top, cut with the Dex's step. */}
    <span
      aria-hidden
      className="bg-action-deep absolute inset-x-0 top-0 -z-1 h-27 [clip-path:polygon(0_0,100%_0,100%_78%,46%_78%,40%_100%,0_100%)] sm:h-33"
    />
    <div className="mx-auto w-full max-w-(--page-width) px-(--page-gutter)">
      <header className="flex h-21 items-center gap-3 sm:h-26 sm:gap-4">
        <DexLens className="text-12 sm:text-16 size-13 sm:size-18" />
        <DexLights className="mt-4 -ml-1 self-start sm:mt-5" />
        <span className="font-display text-24 sm:text-28 leading-none font-semibold">
          Voydex
        </span>
        <nav aria-label="Main" className="ml-auto flex items-center gap-1.5">
          <a
            href={`#${frontPageSections.howItWorks}`}
            className={topLinkClassName}
          >
            How it works
          </a>
          <a
            href={`#${frontPageSections.install}`}
            className={topLinkClassName}
          >
            Install
          </a>
          <Link
            href={appRoutes.login}
            className={buttonVariants({ size: "sm", variant: "inverse" })}
          >
            Log in
          </Link>
        </nav>
      </header>
      <div className="grid items-center gap-8 pt-6 pb-8 sm:pt-10 sm:pb-12 lg:grid-cols-[minmax(0,1fr)_minmax(0,35rem)] lg:gap-14 lg:pb-14">
        <div className="flex flex-col items-start">
          <h1 id="front-title" className="title-display">
            A Pokédex for your playthroughs.
          </h1>
          <p className="text-16 sm:text-18 mt-4 mb-6 max-w-[31em] leading-relaxed font-semibold sm:mt-5.5 sm:mb-7.5">
            Every run you play becomes an entry: its team, its badges, its
            Pokédex and exactly where you left off. One place for all your
            Pokémon games, from every generation.
          </p>
          <StartAction />
          <p className="text-14 mt-3.5 font-semibold max-sm:w-full max-sm:text-center">
            No account needed. Your Plays are saved on this device.
          </p>
        </div>
        <DexScreen art={art} playArt={playArt} />
      </div>
    </div>
  </section>
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
