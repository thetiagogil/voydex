import Link from "next/link";
import type { ReactNode } from "react";

import type { PublicArt } from "@/config/public-art";
import { appRoutes } from "@/config/routes";
import { getStartPlayHref, setStartIntentParams } from "@/config/start-intent";
import { MeadowCard } from "@/features/site/components/meadow-card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

/* A first partner as Start a Play shows it. */
export type StartPartner = {
  imageUrl: string | null;
  name: string;
  speciesSlug: string;
};

/* The picked game and its first partner choice, from the reference catalogue. */
export type StartPick = {
  game: {
    name: string;
    regionName: string | null;
    /* "Sword". */
    shortName: string;
    slug: string;
  };
  /* The game gives you its one partner (Yellow, the Let's Go games). */
  isSolo: boolean;
  starters: readonly StartPartner[];
};

type StartPageProps = {
  art: PublicArt;
  isAuthenticated: boolean;
  /* The partner picked in the address; ignored when the game doesn't offer it. */
  partnerSlug: string | null;
  pick: StartPick | null;
  /* The game shelf, injected by the route (the reference module's picker). */
  shelf: ReactNode;
};

/* Where Start leads: Sign up carrying the pick, or New Play once you're signed in. */
const getStartHref = (
  isAuthenticated: boolean,
  gameSlug: string,
  partnerSpeciesSlug: string | undefined,
) => {
  if (isAuthenticated) {
    return appRoutes.mainlinePlayNew(gameSlug);
  }

  const params = new URLSearchParams({ mode: "sign-up" });

  setStartIntentParams(params, { gameSlug, partnerSpeciesSlug });

  return `${appRoutes.login}?${params.toString()}`;
};

type StarterSceneProps = {
  partner: StartPartner | null;
  pick: StartPick;
};

/*
 * A picked game's first partners standing on the hill (v3 `.hh-sts`), each
 * with its name on a pill. Picking one keeps it in the address, so the pick
 * survives a reload and can be shared; the game that gives you one partner
 * shows it already picked.
 */
const StarterScene = ({ partner, pick }: StarterSceneProps) => (
  <div
    role="group"
    aria-label="Choose your partner"
    className={cn(
      "-mb-0.5 flex w-max items-end gap-0.5 sm:mb-0",
      pick.starters.length > 1 && "sm:gap-24",
    )}
  >
    {pick.starters.map((starter) => {
      const isPicked = partner?.speciesSlug === starter.speciesSlug;
      const label = (
        <span
          className={cn(
            "sm:text-14 relative -mt-0.5 inline-flex items-center gap-1.5 rounded-full px-2.5 py-1 text-[12.5px] font-extrabold sm:px-3.5 sm:py-1.5",
            isPicked
              ? "bg-select-soft text-select-ink"
              : "bg-surface text-ink shadow-[0_2px_0_var(--lip)]",
          )}
        >
          {isPicked ? (
            <AppIcon icon={appIcons.status.active} size="sm" strokeWidth={3} />
          ) : null}
          {starter.name}
        </span>
      );
      const art = starter.imageUrl ? (
        // Renders sit differently in their squares, so each keeps its own size.
        // eslint-disable-next-line @next/next/no-img-element
        <img
          src={starter.imageUrl}
          alt=""
          className={cn(
            "max-w-none object-contain transition-transform duration-300 ease-[cubic-bezier(0.3,1.6,0.5,1)] group-hover/starter:-translate-y-3.5 motion-reduce:transition-none",
            pick.isSolo ? "size-35 sm:size-44" : "size-29 sm:size-37.5",
          )}
        />
      ) : null;

      return (
        <Link
          key={starter.speciesSlug}
          href={getStartPlayHref({
            gameSlug: pick.game.slug,
            partnerSpeciesSlug: starter.speciesSlug,
          })}
          replace
          scroll={false}
          aria-current={isPicked ? "true" : undefined}
          aria-label={`${starter.name}${isPicked ? ", your partner" : ""}`}
          className="group/starter relative isolate flex flex-col items-center rounded-md"
        >
          <span
            aria-hidden
            className="absolute bottom-6.5 left-1/2 -z-1 h-3.5 w-19 -translate-x-1/2 rounded-full bg-[radial-gradient(closest-side,color-mix(in_oklab,var(--ink)_24%,transparent),transparent)] sm:bottom-7 sm:h-4.5 sm:w-26"
          />
          {art}
          {label}
        </Link>
      );
    })}
  </div>
);

/*
 * Start a Play (v3 `start`): "What are you playing?" over the meadow. With no
 * game yet, one first partner per generation stands on the hill; pick a game
 * and the sky takes its colour, its first partners come forward to choose,
 * and Start goes to Sign up carrying the pick.
 */
export const StartPage = ({
  art,
  isAuthenticated,
  partnerSlug,
  pick,
  shelf,
}: StartPageProps) => {
  const partner = pick
    ? pick.isSolo
      ? (pick.starters[0] ?? null)
      : (pick.starters.find((starter) => starter.speciesSlug === partnerSlug) ??
        null)
    : null;

  const ground = (
    <div
      className={cn(
        "mx-auto flex w-full max-w-[880px] flex-col items-stretch gap-3.5 px-4.5 text-center sm:px-0",
        pick && "sm:flex-row sm:items-center sm:justify-between sm:text-left",
      )}
    >
      <div aria-live="polite" className="min-w-0">
        {pick ? (
          <>
            <p className="font-display text-[22px] leading-tight font-semibold">
              A new {pick.game.shortName} journey
            </p>
            {/* TODO(v3-data): v3 adds what lies ahead ("8 gym badges ahead"); the picker's reference read has no badge count yet. */}
            <p className="text-14 text-ink-2 font-semibold">
              {[
                pick.game.regionName,
                partner
                  ? `${partner.name} is your partner`
                  : pick.starters.length > 0
                    ? "Choose your partner"
                    : null,
              ]
                .filter(Boolean)
                .join(" · ")}
            </p>
          </>
        ) : (
          <>
            <p className="font-display text-[22px] leading-tight font-semibold">
              Every journey starts with a partner
            </p>
            <p className="text-14 text-ink-2 font-semibold">
              Pick your game above to meet yours
            </p>
          </>
        )}
      </div>
      {pick ? (
        <Link
          href={getStartHref(
            isAuthenticated,
            pick.game.slug,
            partner?.speciesSlug,
          )}
          className={buttonVariants({ className: "shrink-0", size: "lg" })}
        >
          {partner
            ? `Start with ${partner.name}`
            : `Start a ${pick.game.shortName} Play`}
        </Link>
      ) : null}
    </div>
  );

  return (
    <MeadowCard
      art={art}
      form="band"
      loading="eager"
      partnersOpenStart
      titleId="start-title"
      gameStyle={pick ? art.gameColour(pick.game.slug) : undefined}
      scene={
        pick && pick.starters.length > 0 ? (
          <StarterScene partner={partner} pick={pick} />
        ) : undefined
      }
      ground={ground}
    >
      <h1
        id="start-title"
        className="sm:text-60 pt-5.5 text-[38px] leading-[1.02] tracking-[-0.025em] sm:pt-8.5"
      >
        What are you playing?
      </h1>
      <p className="text-16 text-ink-2 mx-auto mt-3.5 max-w-[34em] leading-[1.6] font-semibold sm:text-[18px]">
        Pick your game and meet your first partner.
      </p>
      <div className="-mx-4 w-[calc(100%+2rem)] sm:-mx-6 sm:w-[calc(100%+3rem)] lg:-mx-8 lg:w-[calc(100%+4rem)]">
        {shelf}
      </div>
    </MeadowCard>
  );
};
