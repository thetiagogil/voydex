import Link from "next/link";

import { TextLink } from "@/shared/components/text-link";
import { appRoutes } from "@/config/routes";
import {
  splitMyPlans,
  type MyPlan,
} from "@/modules/mainline/features/plans/my-plans/data/my-plans-model";
import {
  MyPlansBrowser,
  MyPlansGrid,
} from "@/modules/mainline/features/plans/my-plans/sections/my-plans-browser";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { PageBand } from "@/shared/components/page-band";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";

type MainlineMyPlansPageProps = {
  plans: MyPlan[];
  /* My Plans, or the Plans you archived (`?view=archived`). */
  view: "active" | "archived";
};

const formatPlanCount = (count: number) =>
  `${count} ${count === 1 ? "Plan" : "Plans"}`;

/*
 * The Plans you archived, each with Restore in its menu; hidden from My
 * Plans until restored, as archived Plays are from your Plays.
 */
const ArchivedPlansView = ({ plans }: { plans: MyPlan[] }) => (
  <div className="flex flex-col gap-5 sm:gap-6">
    <PageBand>
      <PageHeader
        title="Archived Plans"
        description={
          plans.length
            ? `${formatPlanCount(plans.length)} · hidden from My Plans until you restore them`
            : "None archived"
        }
        action={
          <Link
            href={appRoutes.mainlinePlans}
            className={buttonVariants({ variant: "secondary" })}
          >
            <AppIcon icon={appIcons.actions.back} inline="start" />
            My Plans
          </Link>
        }
      />
    </PageBand>
    <section aria-label="Archived Plans">
      {plans.length ? (
        <MyPlansGrid plans={plans} />
      ) : (
        <EmptyState
          headingLevel="h2"
          title="Nothing archived"
          description="Plans you archive wait here until you restore them."
        />
      )}
    </section>
  </div>
);

const emptyArt = {
  name: "Ditto",
  url: getPokemonFormImageUrl({ name: "Ditto", slug: "ditto" }),
};

/*
 * My Plans (v3 `myplans`): every Plan you're keeping as a card with its
 * game, its six Pokémon and who follows it; New Plan opens the Team Planner
 * blank. Archived Plans wait behind "Archived · N" at the end.
 */
export const MainlineMyPlansPage = ({
  plans: allPlans,
  view,
}: MainlineMyPlansPageProps) => {
  const { active: plans, archived } = splitMyPlans(allPlans);

  if (view === "archived") {
    return <ArchivedPlansView plans={archived} />;
  }

  const gameCount = new Set(plans.map((plan) => plan.versionGroupSlug)).size;
  const newPlan = (
    <Link href={appRoutes.mainlinePlanNew()} className={buttonVariants()}>
      <AppIcon icon={appIcons.actions.create} inline="start" />
      New Plan
    </Link>
  );

  const head = (
    <div className="flex flex-col gap-1">
      <TextLink
        href={appRoutes.mainlinePlanNew()}
        arrow="back"
        className="mt-4 self-start sm:mt-6"
      >
        Team Planner
      </TextLink>
      <PageHeader
        className="pt-0 sm:pt-0"
        title="My Plans"
        description={
          plans.length
            ? `${formatPlanCount(plans.length)} across ${gameCount} ${gameCount === 1 ? "game" : "games"}`
            : "None yet"
        }
        action={plans.length ? newPlan : null}
      />
    </div>
  );

  return (
    <div className="flex flex-col gap-5 sm:gap-6">
      {plans.length ? (
        <MyPlansBrowser head={head} plans={plans} />
      ) : (
        <>
          <PageBand>{head}</PageBand>
          <EmptyState
            headingLevel="h2"
            art={emptyArt}
            title="No Plans yet"
            description="Plan a team for any game, then follow it from a Play to see how close you are."
            action={newPlan}
          />
        </>
      )}

      {archived.length ? (
        <Link
          href={appRoutes.mainlinePlansArchived}
          className={buttonVariants({
            className: "self-start",
            size: "sm",
            variant: "ghost",
          })}
        >
          <AppIcon icon={appIcons.product.archived} inline="start" />
          Archived · {archived.length}
        </Link>
      ) : null}
    </div>
  );
};
