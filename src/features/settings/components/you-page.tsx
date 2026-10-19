import Link from "next/link";

import { PageBand } from "@/shared/components/page-band";
import { appRoutes } from "@/config/routes";
import { SettingsLogOutButton } from "@/features/settings/components/settings-log-out-button";
import { TrainerCard } from "@/features/settings/components/trainer-card";
import {
  getStatisticsLine,
  plural,
  type YouStatistics,
} from "@/features/settings/utils/you-summary-lines";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { PageHeader } from "@/shared/components/page-header";
import { Card } from "@/shared/components/ui/card";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";
import { IconDisc } from "@/shared/components/icon-disc";

/* The figures Mainline gives the You page, through its route. */
export type YouPageSummary = {
  collection?: { speciesCount: number } | null;
  statistics?: YouStatistics | null;
};

type YouPageProps = YouPageSummary & {
  displayName: string | null;
  email: string | null;
  signOutAction: () => Promise<void>;
  trainerSince: string | null;
};

const getCollectionLine = (collection: YouPageSummary["collection"]) =>
  collection && collection.speciesCount > 0
    ? `${plural(collection.speciesCount, "Pokémon has", "Pokémon have")} joined your teams`
    : "Every Pokémon that joins your teams";

type YouRowProps = {
  description: string;
  href: string;
  icon: AppIconComponent;
  title: string;
};

/* A page about you (v3 `.you-row`): its icon, its name, one line, and an arrow onward. */
const YouRow = ({ description, href, icon, title }: YouRowProps) => (
  <Link
    href={href}
    className={cn(
      rowInteractionVariants({ interaction: "action" }),
      "grid min-h-16 grid-cols-[2.75rem_minmax(0,1fr)_auto] items-center gap-3.5 rounded-md px-2.5 py-3",
    )}
  >
    <IconDisc size="lg">
      <AppIcon icon={icon} size="lg" />
    </IconDisc>
    <span className="flex min-w-0 flex-col gap-0.5">
      <span className="text-15 font-extrabold">{title}</span>
      <span className="text-13 text-ink-2 font-semibold">{description}</span>
    </span>
    <AppIcon icon={appIcons.actions.next} size="sm" className="text-ink-3" />
  </Link>
);

/*
 * You (v3 `you`), the fifth tab on phones: your trainer card on the band, then the pages
 * about you (Statistics, Collection, Settings) and Log out. On a wide screen
 * the same things sit in the account menu, but the page still works there.
 */
export const YouPage = ({
  collection,
  displayName,
  email,
  signOutAction,
  statistics,
  trainerSince,
}: YouPageProps) => {
  const name = displayName ?? email;

  return (
    <div className="mx-auto flex w-full max-w-160 flex-col">
      <PageBand className="max-w-[calc(40rem+2*var(--page-gutter))]">
        <PageHeader title="You" />
        <TrainerCard
          className="mt-5"
          initial={name ? name.charAt(0).toUpperCase() : null}
          name={name}
          subtitle={
            trainerSince ? `Trainer since ${trainerSince}` : "Your trainer card"
          }
        />
      </PageBand>
      <Card className="mt-5.5 gap-0 px-2.5 py-1.5">
        <nav aria-label="About you" className="flex flex-col">
          <YouRow
            href={appRoutes.mainlineStats}
            icon={appIcons.product.stats}
            title="Statistics"
            description={getStatisticsLine(statistics)}
          />
          <YouRow
            href={appRoutes.mainlineCollection}
            icon={appIcons.product.caught}
            title="Collection"
            description={getCollectionLine(collection)}
          />
          <YouRow
            href={appRoutes.settings}
            icon={appIcons.actions.settings}
            title="Settings"
            description="Profile, look and feel, New Play defaults"
          />
        </nav>
      </Card>
      <form action={signOutAction} className="mt-5.5">
        <SettingsLogOutButton className="w-full" />
      </form>
    </div>
  );
};
