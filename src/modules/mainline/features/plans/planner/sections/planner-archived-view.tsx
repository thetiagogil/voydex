"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import { PlanTeamStrip } from "@/modules/mainline/features/plans/components/plan-team-strip";
import { PlannerFollowersSection } from "@/modules/mainline/features/plans/planner/sections/planner-followers-section";
import { setPlanArchivedAction } from "@/modules/mainline/features/plans/server/plan-archive-action";
import type {
  PlannerPageData,
  SavedPlan,
} from "@/modules/mainline/features/plans/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PageBand } from "@/shared/components/page-band";
import { StatusBadge } from "@/shared/components/status-badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

/*
 * An archived Plan, read-only: its name, game and team, the Plays that still
 * follow it, and Restore, which brings back the full Planner.
 */
export const PlannerArchivedView = ({
  data,
  plan,
}: {
  data: PlannerPageData;
  plan: SavedPlan;
}) => {
  const router = useRouter();
  const [isRestoring, startRestoring] = useTransition();
  const { context } = data;
  const byId = new Map(
    context.pokemon.map((pokemon) => [pokemon.speciesId, pokemon]),
  );

  const restore = () =>
    startRestoring(async () => {
      const result = await setPlanArchivedAction(plan.id, false);

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(`${plan.name} restored`);
      router.refresh();
    });

  return (
    <PageBand className="flex flex-col gap-6 pt-4 sm:gap-7 sm:pt-7">
      <div className="flex flex-col gap-2">
        <div className="flex flex-wrap items-center gap-2">
          <StatusBadge>Archived</StatusBadge>
          <span className="text-ink-2 text-14 font-bold">
            {context.versionGroup.name}
          </span>
        </div>
        <h1 className="title-page text-balance wrap-anywhere">{plan.name}</h1>
        <p className="text-ink-2 text-15">
          An archived Plan can be read but not changed. Restore it to edit it
          again.
        </p>
      </div>
      <PlanTeamStrip
        className="max-w-md"
        members={plan.members.map((member) => {
          const pokemon = byId.get(member.speciesId);

          return {
            imageUrl: pokemon?.imageUrl ?? null,
            name: pokemon?.name ?? "Pokémon",
            slot: member.slot,
            typeSlug: pokemon?.types[0]?.slug ?? null,
          };
        })}
      />
      {plan.followers.length ? (
        <PlannerFollowersSection archived followers={plan.followers} />
      ) : null}
      <div className="flex flex-wrap items-center gap-2">
        <Button
          type="button"
          disabled={isRestoring}
          aria-busy={isRestoring}
          onClick={restore}
        >
          {isRestoring ? (
            <Spinner data-icon="inline-start" />
          ) : (
            <AppIcon icon={appIcons.actions.restore} inline="start" />
          )}
          Restore Plan
        </Button>
        <Link
          href={appRoutes.mainlinePlans}
          className={buttonVariants({ variant: "secondary" })}
        >
          <AppIcon icon={appIcons.views.mainline.plans} inline="start" />
          My Plans
        </Link>
      </div>
    </PageBand>
  );
};
