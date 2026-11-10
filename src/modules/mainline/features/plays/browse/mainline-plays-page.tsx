"use client";

import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { ArchivedPlaysList } from "@/modules/mainline/features/plays/browse/components/archived-plays-list";
import { PlaysBrowser } from "@/modules/mainline/features/plays/browse/components/plays-browser";
import { PlaysPageHeader } from "@/modules/mainline/features/plays/browse/components/plays-page-header";
import { formatPlayCount } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type { PlayBrowseParams } from "@/modules/mainline/features/plays/browse/play-browse-model";
import { readLocalPlaysPageData } from "@/modules/mainline/features/plays/browse/client/plays-page-local-query";
import type {
  PlaysPageData,
  PlaysPageView,
} from "@/modules/mainline/features/plays/browse/types";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { useLocalRead } from "@/platform/local-db/local-db-context";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { PageBand } from "@/shared/components/page-band";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";

type MainlinePlaysPageProps = {
  params?: PlayBrowseParams;
  view: PlaysPageView;
};

const emptyLibraryArt = {
  name: "Pikachu",
  url: getPokemonFormImageUrl({ name: "Pikachu", slug: "pikachu" }),
};

/*
 * The Plays you archived, each with Restore; hidden from Home and the library
 * until restored.
 */
const ArchivedPlaysView = ({ plays }: { plays: PlaysPageData["plays"] }) => (
  <div className="flex flex-col gap-5 sm:gap-6">
    <PageBand>
      <PageHeader
        title="Archived Plays"
        description={
          plays.length
            ? `${formatPlayCount(plays.length)} · hidden from Home and your list until you restore them`
            : "None archived"
        }
        action={
          <Link
            href={appRoutes.mainlinePlays}
            className={buttonVariants({ variant: "secondary" })}
          >
            <AppIcon icon={appIcons.actions.back} inline="start" />
            All Plays
          </Link>
        }
      />
    </PageBand>

    <section aria-label="Archived Plays">
      {plays.length ? (
        <ArchivedPlaysList plays={plays} />
      ) : (
        <EmptyState
          headingLevel="h2"
          title="Nothing archived"
          description="Plays you archive from their settings wait here until you restore them."
        />
      )}
    </section>
  </div>
);

/*
 * The Plays page, read on the device. The read takes milliseconds, so there
 * is no loading state; a failed read goes to the page's error screen.
 */
export const MainlinePlaysPage = ({ params, view }: MainlinePlaysPageProps) => {
  const read = useLocalRead(`plays:${view}`, (db) =>
    readLocalPlaysPageData(db, view),
  );

  if (read.status === "failed") throw read.error;

  if (read.status === "loading") return null;

  return <PlaysPageContent data={read.data} params={params} />;
};

const PlaysPageContent = ({
  data,
  params,
}: {
  data: PlaysPageData;
  params?: PlayBrowseParams;
}) => {
  if (data.view === "archived") {
    return <ArchivedPlaysView plays={data.plays} />;
  }

  return (
    <div className="flex flex-col gap-5 sm:gap-6">
      {data.plays.length ? (
        <PlaysBrowser
          head={<PlaysPageHeader plays={data.plays} />}
          plays={data.plays}
          params={params}
        />
      ) : (
        <>
          <PageBand>
            <PlaysPageHeader plays={data.plays} />
          </PageBand>
          <EmptyState
            headingLevel="h2"
            art={emptyLibraryArt}
            title="Your first Play starts here"
            description="Pick the game you're playing and meet your partner. Voydex keeps the rest as you go."
            action={
              <>
                <NewPlayTrigger className={buttonVariants()}>
                  <AppIcon icon={appIcons.actions.create} inline="start" />
                  Start a Play
                </NewPlayTrigger>
                <Link
                  href={appRoutes.codexPokemon}
                  className={buttonVariants({ variant: "secondary" })}
                >
                  <AppIcon icon={appIcons.actions.browseCodex} inline="start" />
                  Browse the Codex
                </Link>
              </>
            }
          />
        </>
      )}

      {data.archivedCount ? (
        <Link
          href={appRoutes.mainlinePlaysArchived}
          className={buttonVariants({
            className: "self-start",
            size: "sm",
            variant: "ghost",
          })}
        >
          <AppIcon icon={appIcons.product.archived} inline="start" />
          Archived · {data.archivedCount}
        </Link>
      ) : null}
    </div>
  );
};
