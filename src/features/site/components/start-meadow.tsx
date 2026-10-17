"use client";

import Link from "next/link";
import { useSearchParams } from "next/navigation";
import type { MouseEvent, ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import {
  getStartPlayHref,
  readStartGeneration,
  readStartIntentParams,
  replaceStartAddress,
  setStartIntentParams,
  START_GENERATION_EVENT,
  startIntentParams,
} from "@/config/start-intent";
import { MeadowCard } from "@/features/site/components/meadow-card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

/* A first partner as Start a Play shows it. */
type StartPartner = {
  imageUrl: string | null;
  name: string;
  speciesSlug: string;
};

/* A game and its first partner choice, from the reference catalogue. */
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

type StartMeadowProps = {
  /* The heading and the game shelf, on the sky. */
  children: ReactNode;
  isAuthenticated: boolean;
  /* The first partners standing on the hill while no game is picked. */
  partners: ReactNode;
  /* Every game's first partner choice, by game slug. */
  picks: Readonly<Record<string, StartPick>>;
};

/* Where Start leads: Sign up carrying the pick, or New Play once you're signed in. */
const getStartHref = (
  isAuthenticated: boolean,
  gameSlug: string,
  partnerSpeciesSlug: string | undefined,
) => {
  if (isAuthenticated) {
    return appRoutes.mainlineNewPlay(gameSlug, partnerSpeciesSlug);
  }

  const params = new URLSearchParams({ mode: "sign-up" });

  setStartIntentParams(params, { gameSlug, partnerSpeciesSlug });

  return `${appRoutes.login}?${params.toString()}`;
};

/* A plain click: anything else (a new tab, a download) follows the link. */
const isPlainClick = (event: MouseEvent) =>
  event.button === 0 &&
  !event.metaKey &&
  !event.ctrlKey &&
  !event.shiftKey &&
  !event.altKey;

type StarterSceneProps = {
  partner: StartPartner | null;
  pick: StartPick;
};

/*
 * A picked game's first partners standing on the hill (v3 `.hh-sts`), each
 * with its name on a pill. Picking one shows at once and keeps it in the
 * address, so the pick survives a reload and can be shared; the game that
 * gives you one partner shows it already picked.
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
      const href = getStartPlayHref({
        gameSlug: pick.game.slug,
        partnerSpeciesSlug: starter.speciesSlug,
      });

      return (
        <a
          key={starter.speciesSlug}
          href={href}
          onClick={(event) => {
            if (!isPlainClick(event)) {
              return;
            }

            event.preventDefault();
            replaceStartAddress(href);
          }}
          aria-current={isPicked ? "true" : undefined}
          aria-label={`${starter.name}${isPicked ? ", your partner" : ""}`}
          className="group/starter relative isolate flex flex-col items-center rounded-md"
        >
          <span
            aria-hidden
            className="absolute bottom-6.5 left-1/2 -z-1 h-3.5 w-19 -translate-x-1/2 rounded-full bg-[radial-gradient(closest-side,color-mix(in_oklab,var(--ink)_24%,transparent),transparent)] sm:bottom-7 sm:h-4.5 sm:w-26"
          />
          {starter.imageUrl ? (
            // Renders sit differently in their squares, so each keeps its own size.
            // eslint-disable-next-line @next/next/no-img-element
            <img
              src={starter.imageUrl}
              alt=""
              className={cn(
                "ease-hop max-w-none object-contain transition-transform duration-300 group-hover/starter:-translate-y-3.5 motion-reduce:transition-none",
                pick.isSolo ? "size-35 sm:size-44" : "size-29 sm:size-37.5",
              )}
            />
          ) : null}
          <span
            className={cn(
              "sm:text-14 relative -mt-0.5 inline-flex items-center gap-1.5 rounded-full px-2.5 py-1 text-[12.5px] font-extrabold sm:px-3.5 sm:py-1.5",
              isPicked ? "bg-action text-white" : "bg-surface bubble text-ink",
            )}
          >
            {isPicked ? (
              <AppIcon
                icon={appIcons.status.active}
                size="sm"
                strokeWidth={3}
              />
            ) : null}
            {starter.name}
          </span>
        </a>
      );
    })}
  </div>
);

/*
 * Start a Play's meadow. Every game's first partners arrive with
 * the page, so picking a game or a partner is client state: it shows at once
 * and is kept in the address without asking the server again. With no game
 * yet the first partners stand on the hill, and tapping one jumps the shelf
 * to its generation, as a generation mark does.
 */
export const StartMeadow = ({
  children,
  isAuthenticated,
  partners,
  picks,
}: StartMeadowProps) => {
  const searchParams = useSearchParams();
  const intent = readStartIntentParams({
    game: searchParams.get(startIntentParams.game),
    partner: searchParams.get(startIntentParams.partner),
  });
  const pick = intent ? (picks[intent.gameSlug] ?? null) : null;
  const partner = pick
    ? pick.isSolo
      ? (pick.starters[0] ?? null)
      : (pick.starters.find(
          (starter) => starter.speciesSlug === intent?.partnerSpeciesSlug,
        ) ?? null)
    : null;

  /* Runs before the partner's own link, which then stands down. */
  const onPartnerClickCapture = (event: MouseEvent<HTMLDivElement>) => {
    const link = (event.target as Element).closest<HTMLAnchorElement>(
      "a[data-generation]",
    );
    const generation = readStartGeneration(link?.dataset.generation);

    if (!link || generation === undefined || !isPlainClick(event)) {
      return;
    }

    event.preventDefault();
    replaceStartAddress(getStartPlayHref({ generation }));
    window.dispatchEvent(
      new CustomEvent(START_GENERATION_EVENT, { detail: generation }),
    );
  };

  const ground = (
    <div
      className={cn(
        "mx-auto flex w-full max-w-220 flex-col items-stretch gap-3.5 px-4.5 text-center sm:px-0",
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
          className={buttonVariants({ className: "shrink-0" })}
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
      form="band"
      titleId="start-title"
      cast={
        pick && pick.starters.length > 0 ? (
          <StarterScene partner={partner} pick={pick} />
        ) : (
          // The partners are links; this only lets them jump the shelf.
          <div className="contents" onClickCapture={onPartnerClickCapture}>
            {partners}
          </div>
        )
      }
      ground={ground}
    >
      {children}
    </MeadowCard>
  );
};
