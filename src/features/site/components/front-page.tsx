import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { ExamplePlay } from "@/features/site/components/example-play";
import { HowItWorksSection } from "@/features/site/components/how-it-works-section";
import { InstallSection } from "@/features/site/components/install-section";
import { PokemonRender } from "@/features/site/components/pokemon-render";
import { StartAction } from "@/features/site/components/start-action";
import { frontShelfGames } from "@/features/site/data/front-shelf";
import { samplePlayTeam } from "@/features/site/data/sample-play";
import { PageBand } from "@/shared/components/page-band";
import { Badge } from "@/shared/components/ui/badge";

/* The example Play's partner, the game's own face. */
const heroPartner = samplePlayTeam[0];

type FrontPageProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

/* What Voydex covers, as three small labels under the way in. */
const frontFacts = ["38 games", "1,025 Pokémon", "Works offline"];

/*
 * The shelf along the bottom of the first screen: every game's cover in a
 * row that runs past both edges, so the page shows how far Voydex reaches
 * without saying it. A picture, so it is hidden from a screen reader.
 */
const FrontShelf = ({ art }: { art: PublicArt }) => (
  <div
    aria-hidden
    inert
    className="absolute inset-x-0 bottom-6 flex justify-center overflow-hidden mask-x-from-85% max-sm:hidden"
  >
    <div className="flex w-max shrink-0 items-end gap-3">
      {frontShelfGames.map((game) => (
        <span key={game.slug} className="shrink-0">
          {art.gameCover({ className: "h-18 lg:h-21", game })}
        </span>
      ))}
    </div>
  </div>
);

/*
 * The front page's band, as tall as the screen: the same band every page of
 * the app opens on. It holds only what a first visit needs: what Voydex is,
 * one line, the one way in and three facts, beside an example Play with its
 * partner standing on it, over the shelf of every game. The rest of the
 * page waits below, a scroll or a link in the bar away.
 */
const FrontBand = ({ art, playArt }: FrontPageProps) => (
  <PageBand className="grid min-h-[calc(100svh-var(--bar-h)-var(--band-step))] content-center items-center gap-x-14 gap-y-20 pt-6 pb-16 sm:pt-10 sm:pb-40 lg:grid-cols-[minmax(0,1fr)_minmax(0,36rem)]">
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
      <ul className="mt-5 flex flex-wrap gap-2 max-sm:w-full max-sm:justify-center">
        {frontFacts.map((fact) => (
          <li key={fact}>
            <Badge variant="outline" size="md">
              {fact}
            </Badge>
          </li>
        ))}
      </ul>
    </div>
    <div className="relative">
      {/* The Play's partner stands on its card, as on a step below. */}
      <PokemonRender
        art={art}
        pokemon={heroPartner}
        loading="eager"
        className="absolute -top-24 right-2 z-1 size-28 object-contain sm:-top-36 sm:right-3 sm:size-52"
      />
      <ExamplePlay art={art} playArt={playArt} />
    </div>
    <FrontShelf art={art} />
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
