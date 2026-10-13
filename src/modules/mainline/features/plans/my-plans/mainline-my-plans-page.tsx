import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MyPlan } from "@/modules/mainline/features/plans/my-plans/data/my-plans-model";
import { MyPlansBrowser } from "@/modules/mainline/features/plans/my-plans/sections/my-plans-browser";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";

type MainlineMyPlansPageProps = {
  plans: MyPlan[];
};

const emptyArtUrl = getPokemonFormImageUrl({
  name: "Ditto",
  sprite_slug: "ditto",
});

/*
 * My Plans (v3 `myplans`): every Plan as a card with its game, its six
 * Pokémon and who follows it; New Plan opens the Team Planner blank.
 */
export const MainlineMyPlansPage = ({ plans }: MainlineMyPlansPageProps) => {
  const gameCount = new Set(plans.map((plan) => plan.versionGroupSlug)).size;
  const newPlan = (
    <Link href={appRoutes.mainlinePlanNew()} className={buttonVariants()}>
      <AppIcon icon={appIcons.actions.create} inline="start" />
      New Plan
    </Link>
  );

  return (
    <div className="flex flex-col gap-5 sm:gap-6">
      <div className="flex flex-col gap-1">
        <Link
          href={appRoutes.mainlinePlanNew()}
          className="text-link text-14 focus-visible:outline-focus inline-flex min-h-9 items-center gap-1.5 self-start rounded-xs pt-4 font-extrabold outline-none focus-visible:outline-3 focus-visible:outline-solid sm:pt-6"
        >
          <AppIcon icon={appIcons.actions.back} size="sm" />
          Team Planner
        </Link>
        <PageHeader
          className="pt-0 sm:pt-0"
          title="My Plans"
          description={
            plans.length
              ? `${plans.length} ${plans.length === 1 ? "Plan" : "Plans"} across ${gameCount} ${gameCount === 1 ? "game" : "games"}`
              : "None yet"
          }
          action={plans.length ? newPlan : null}
        />
      </div>

      {plans.length ? (
        <MyPlansBrowser plans={plans} />
      ) : (
        <EmptyState
          headingLevel="h2"
          artUrl={emptyArtUrl}
          title="No Plans yet"
          description="Plan a team for any game, then follow it from a Play to see how close you are."
          action={newPlan}
        />
      )}
    </div>
  );
};
