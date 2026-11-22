"use client";

import type { ReactNode } from "react";

import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import { HomeActivityHistory } from "@/modules/mainline/features/home/components/home-activity-history";
import { HomeDataNote } from "@/modules/mainline/features/home/components/home-data-note";
import type {
  HomePageData,
  HomeProfile,
} from "@/modules/mainline/features/home/types";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { FirstPlayStart } from "@/modules/mainline/features/plays/shared/components/first-play-start";
import { PlayCard } from "@/modules/mainline/features/plays/shared/components/play-card";
import { getPlayMomentRecord } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import { getPlayMomentInstant } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { formatHomeMomentAge } from "@/modules/mainline/features/home/data/home-activity-model";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { PokemonCardLink } from "@/modules/reference/features/pokemon/components/pokemon-card-link";
import { formatNationalNumber } from "@/modules/mainline/shared/utils/trainer-pokemon-display";
import { PageBand } from "@/shared/components/page-band";
import { SectionHead } from "@/shared/components/section-head";
import { StatTile } from "@/shared/components/stat-tile";
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
  <div className="grid grid-cols-2 gap-2 sm:grid-cols-4 sm:gap-3 lg:grid-cols-[repeat(4,auto)]">
    {[
      [figures.playCount.toLocaleString("en"), "Plays"],
      [formatHours(figures.minutes), "played"],
      [figures.ownedCount.toLocaleString("en"), "Pokémon owned"],
      [`${figures.visitedRegionCount}/${figures.regionCount}`, "regions"],
    ].map(([value, label]) => (
      <StatTile
        key={label}
        align="center"
        className="lg:min-w-24"
        label={label}
        value={value}
      />
    ))}
  </div>
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
 * One moment, as the moment card every page draws (`RecordRow`), with two
 * things only Home needs: the moments come from every Play, so the Play's
 * cover stands where the medallion would and its name follows the kind; and
 * the card opens the moment in its Play's History.
 */
const MomentCard = ({ moment }: { moment: HomeProfile["moments"][number] }) => {
  const { timeZone } = useViewerClock();
  const record = getPlayMomentRecord(moment.event);
  const age = formatHomeMomentAge(getPlayMomentInstant(moment.event), timeZone);

  return (
    <Link
      href={appRoutes.mainlinePlayHistoryMoment(
        moment.event.play_id ?? "",
        moment.event.event_id ?? "",
      )}
      className="group/card-link block h-full rounded-lg outline-none"
    >
      <RecordRow
        variant="card"
        opens
        picture={
          <GameCover
            alt=""
            coverImageUrl={moment.coverImageUrl}
            gameName={moment.gameName}
            gameSlug={moment.gameSlug ?? undefined}
            size="slim"
          />
        }
        kicker={
          <>
            {record.label ? `${record.label} · ` : null}
            <span className="text-select-ink">{moment.playName}</span>
          </>
        }
        /* "Today", "A year ago": capitalised like every moment's date. */
        when={age ? age.charAt(0).toUpperCase() + age.slice(1) : null}
        headline={record.headline.map((part) => part.text).join("")}
        description={record.description}
      />
    </Link>
  );
};

const LatestMoments = ({ profile }: { profile: HomeProfile }) => {
  return (
    <section aria-labelledby="home-moments" className="flex flex-col gap-3">
      <SectionHead title="Latest moments" titleId="home-moments" />
      {profile.moments.length ? (
        <ul className="flex flex-col gap-3">
          {profile.moments.map((moment) => (
            <li key={moment.event.event_id} className="min-w-0">
              <MomentCard moment={moment} />
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
 * Home: your trainer profile. The trainer card on the band, one row back
 * into the Play you're on (with no Play yet, the card that starts your
 * first one), then, in two columns from 1024px, your
 * activity history, your games and favourites on the left and the latest
 * moments across every Play on the right. On a phone
 * the moments come first. Each part is short and links to its full page.
 */
export const HomeDashboard = ({
  data,
  renderTrainerCard,
}: HomeDashboardProps) => {
  const { journey, profile } = data;

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

      {journey ? (
        <PlayCard eyebrow="Continue" play={journey} size="sm" />
      ) : (
        <FirstPlayStart />
      )}

      <div className="grid items-start gap-6 lg:grid-cols-[minmax(0,1fr)_minmax(0,1.15fr)] lg:gap-8">
        <div className="order-2 flex min-w-0 flex-col gap-6 lg:order-1">
          <ProfileSection id="home-activity" title="Activity history">
            <HomeActivityHistory instants={profile.momentInstants} />
          </ProfileSection>

          {profile.covers.length ? (
            <ProfileSection
              id="home-games"
              title="Your games"
              more={{
                href: appRoutes.mainlineCollectionGames,
                label: "Game collection",
              }}
            >
              <ul className="grid grid-cols-3 gap-3 sm:grid-cols-5">
                {profile.covers.map((cover, index) => (
                  <li
                    key={cover.gameSlug ?? cover.gameName}
                    /* One row: three on a phone, five from 640px. */
                    className={cn(
                      "grid place-items-center",
                      index >= 3 && "max-sm:hidden",
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
                label: "Favourite collection",
              }}
            >
              <ul className="grid grid-cols-3 gap-3 sm:grid-cols-4">
                {profile.favourites.map((favourite, index) => (
                  <li
                    key={favourite.formId}
                    /* One row: three on a phone, four from 640px. */
                    className={cn("min-w-0", index >= 3 && "max-sm:hidden")}
                  >
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
