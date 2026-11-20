"use client";

import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { HomeActivityHistory } from "@/modules/mainline/features/home/components/home-activity-history";
import { HomeContinueRow } from "@/modules/mainline/features/home/components/home-continue-row";
import { HomeDataNote } from "@/modules/mainline/features/home/components/home-data-note";
import type {
  HomePageData,
  HomeProfile,
} from "@/modules/mainline/features/home/types";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { Medallion } from "@/modules/mainline/features/plays/shared/components/medallion";
import {
  getPlayMomentRecord,
  toPlayMomentContext,
} from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import { getPlayMomentInstant } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { formatHomeMomentAge } from "@/modules/mainline/features/home/data/home-activity-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { PokemonCardLink } from "@/modules/reference/features/pokemon/components/pokemon-card-link";
import { formatNationalNumber } from "@/modules/mainline/shared/utils/trainer-pokemon-display";
import { PageBand } from "@/shared/components/page-band";
import { SectionHead } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

/* What the app hands Home for its trainer card: the shared card, with Home's parts inside. */
export type HomeTrainerCardRender = (parts: {
  figures: ReactNode;
  title: string;
}) => ReactNode;

type HomeDashboardProps = {
  data: Extract<HomePageData, { kind: "plays" }>;
  renderTrainerCard: HomeTrainerCardRender;
};

const formatHours = (minutes: number) =>
  `${Math.round(minutes / 60).toLocaleString("en")}h`;

/* The trainer card's figures: Plays, hours, Pokémon owned and regions. */
const TrainerFigures = ({ figures }: { figures: HomeProfile["figures"] }) => (
  <dl className="grid grid-cols-2 gap-2 sm:grid-cols-4 sm:gap-3 lg:grid-cols-[repeat(4,auto)]">
    {[
      [figures.playCount.toLocaleString("en"), "Plays"],
      [formatHours(figures.minutes), "played"],
      [figures.ownedCount.toLocaleString("en"), "Pokémon owned"],
      [`${figures.visitedRegionCount}/${figures.regionCount}`, "regions"],
    ].map(([value, label]) => (
      <div
        key={label}
        className="tile flex flex-col-reverse text-center lg:min-w-24"
      >
        <dt className="text-ink-3 copy-meta">{label}</dt>
        <dd className="title-card text-select-ink tabular-nums">{value}</dd>
      </div>
    ))}
  </dl>
);

/* A short section of the profile: its head, a link onward, one card. */
const ProfileSection = ({
  children,
  id,
  more,
  title,
}: {
  children: ReactNode;
  id: string;
  more?: { href: string; label: string };
  title: string;
}) => (
  <section aria-labelledby={id} className="flex flex-col gap-3">
    <SectionHead title={title} titleId={id} more={more} />
    <Card>{children}</Card>
  </section>
);

/*
 * One moment as a small card: its medallion (badge, Pokémon, story flag),
 * what happened, the Play it was in and how long ago.
 */
const MomentCard = ({
  context,
  moment,
}: {
  context: ReturnType<typeof toPlayMomentContext>;
  moment: HomeProfile["moments"][number];
}) => {
  const { timeZone } = useViewerClock();
  const record = getPlayMomentRecord(moment.event, context);
  const age = formatHomeMomentAge(getPlayMomentInstant(moment.event), timeZone);

  return (
    <Card
      size="sm"
      className="grid h-full grid-cols-[auto_minmax(0,1fr)] items-center gap-3"
    >
      <Medallion content={record.medallion} faded={record.faded} size="sm" />
      <div className="min-w-0">
        <p className="copy-strong line-clamp-2">
          {record.headline.map((part) => part.text).join("")}
        </p>
        <p className="text-ink-3 copy-meta truncate">
          <span className="text-select-ink">{moment.playName}</span>
          {age ? ` · ${age}` : null}
        </p>
      </div>
    </Card>
  );
};

const LatestMoments = ({ profile }: { profile: HomeProfile }) => {
  const context = toPlayMomentContext(profile.momentContext);

  return (
    <section aria-labelledby="home-moments" className="flex flex-col gap-3">
      <SectionHead title="Latest moments" titleId="home-moments" />
      {profile.moments.length ? (
        <ul className="grid gap-3 sm:grid-cols-2">
          {profile.moments.map((moment) => (
            <li key={moment.event.event_id} className="min-w-0">
              <MomentCard context={context} moment={moment} />
            </li>
          ))}
        </ul>
      ) : (
        <Card>
          <p className="text-ink-2 copy-body">
            What happens in your Plays shows up here.
          </p>
        </Card>
      )}
    </section>
  );
};

/*
 * Home with Plays: your trainer profile. The trainer card on the band, one
 * row back into the Play you're on, then, in two columns from 1024px, your
 * activity history, the types you pick, your games and favourites on the
 * left and the latest moments across every Play on the right. On a phone
 * the moments come first. Each part is short and links to its full page.
 */
export const HomeDashboard = ({
  data,
  renderTrainerCard,
}: HomeDashboardProps) => {
  const { journey, profile } = data;
  const typeTotal = profile.types.reduce((sum, type) => sum + type.count, 0);

  return (
    <div className="flex flex-col gap-6">
      <PageBand>
        <div className="pt-2 sm:pt-4">
          {renderTrainerCard({
            figures: <TrainerFigures figures={profile.figures} />,
            title: profile.title,
          })}
        </div>
      </PageBand>

      <HomeContinueRow play={journey} />

      <div className="grid items-start gap-6 lg:grid-cols-[minmax(0,1fr)_minmax(0,1.15fr)] lg:gap-8">
        <div className="order-2 flex min-w-0 flex-col gap-6 lg:order-1">
          <ProfileSection id="home-activity" title="Activity history">
            <HomeActivityHistory instants={profile.momentInstants} />
          </ProfileSection>

          {profile.types.length ? (
            <ProfileSection
              id="home-types"
              title="Types you pick"
              more={{ href: appRoutes.mainlineStats, label: "Statistics" }}
            >
              <ul className="grid grid-cols-3 gap-x-2 gap-y-4 sm:grid-cols-6">
                {profile.types.map((type) => (
                  <li
                    key={type.slug}
                    className="flex flex-col items-center gap-1.5 text-center"
                  >
                    {isPokemonTypeSlug(type.slug) ? (
                      <PokemonTypeBadge
                        display="label"
                        label={type.name}
                        type={type.slug}
                      />
                    ) : (
                      <span className="copy-strong">{type.name}</span>
                    )}
                    <span className="text-ink-3 copy-meta">
                      <b className="text-ink tabular-nums">{type.count}</b> on
                      teams
                    </span>
                  </li>
                ))}
              </ul>
              <div
                aria-hidden
                className="flex h-2.5 overflow-hidden rounded-full"
              >
                {profile.types.map((type) => (
                  <span
                    key={type.slug}
                    style={{
                      background: `var(--type-${type.slug})`,
                      flexGrow: type.count / typeTotal,
                    }}
                  />
                ))}
              </div>
            </ProfileSection>
          ) : null}

          {profile.covers.length ? (
            <ProfileSection
              id="home-games"
              title="Your games"
              more={{
                href: appRoutes.mainlineCollectionGames,
                label: "Collection",
              }}
            >
              <ul className="grid grid-cols-3 gap-3 sm:grid-cols-5">
                {profile.covers.map((cover, index) => (
                  <li
                    key={cover.gameSlug ?? cover.gameName}
                    /* Two rows of three on a phone. */
                    className={cn(
                      "grid place-items-center",
                      index >= 6 && "max-sm:hidden",
                    )}
                  >
                    <GameCover
                      alt={cover.gameName}
                      coverImageUrl={cover.coverImageUrl}
                      gameName={cover.gameName}
                      gameSlug={cover.gameSlug ?? undefined}
                      size="token"
                    />
                  </li>
                ))}
              </ul>
            </ProfileSection>
          ) : null}

          {profile.favourites.length ? (
            <ProfileSection
              id="home-favourites"
              title="Favourite Pokémon"
              more={{
                href: appRoutes.mainlineCollectionFavourites,
                label: "Collection",
              }}
            >
              <ul className="grid grid-cols-[repeat(auto-fill,minmax(112px,1fr))] gap-3">
                {profile.favourites.map((favourite) => (
                  <li key={favourite.formId} className="min-w-0">
                    <PokemonCardLink
                      href={favourite.codexHref}
                      imageUrl={favourite.imageUrl}
                      name={favourite.name}
                      number={formatNationalNumber(favourite.nationalNumber)}
                      size="sm"
                      types={favourite.types}
                    />
                  </li>
                ))}
              </ul>
            </ProfileSection>
          ) : null}
        </div>

        <div className="order-1 min-w-0 lg:order-2">
          <LatestMoments profile={profile} />
        </div>
      </div>

      <HomeDataNote />
    </div>
  );
};
