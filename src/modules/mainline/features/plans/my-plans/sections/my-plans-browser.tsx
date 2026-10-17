"use client";

import { Badge } from "@/shared/components/ui/badge";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useMemo, useState, useTransition, type ReactNode } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import {
  defaultMyPlansFilters,
  filterAndSortMyPlans,
  getMyPlanFootnote,
  getMyPlansGames,
  hasActiveMyPlansFilters,
  myPlansSortLabels,
  type MyPlan,
  type MyPlansFilters,
  type MyPlansSort,
} from "@/modules/mainline/features/plans/my-plans/data/my-plans-model";
import { deletePlanAction } from "@/modules/mainline/features/plans/my-plans/server/delete-plan-action";
import { PlanTeamStrip } from "@/modules/mainline/features/plans/components/plan-team-strip";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { CornerRemoveButton } from "@/shared/components/corner-remove-button";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { PageBand } from "@/shared/components/page-band";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { StatusBadge } from "@/shared/components/status-badge";
import { Toolbar } from "@/shared/components/toolbar";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type MyPlansBrowserProps = {
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
  plans: MyPlan[];
};

/*
 * One Plan: the card opens it in the Team Planner; the × on its corner (as
 * on the Planner's team slots) deletes it, after a confirm that says what
 * goes with it.
 */
const MyPlanCard = ({ plan }: { plan: MyPlan }) => {
  const router = useRouter();
  const [isConfirmOpen, setIsConfirmOpen] = useState(false);
  const [isDeleting, startDeleting] = useTransition();
  const [deleteError, setDeleteError] = useState<string | null>(null);

  const deletePlan = () => {
    startDeleting(async () => {
      const result = await deletePlanAction(plan.id);

      if (result.status === "error") {
        setDeleteError(result.message);
        return;
      }

      setIsConfirmOpen(false);
      toast.success(`${plan.name} deleted`);
      router.refresh();
    });
  };

  return (
    <li className="group/removable relative min-w-0">
      <Link
        href={appRoutes.mainlinePlan(plan.id)}
        className="group/card-link focus-visible:outline-focus block h-full rounded-2xl outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
      >
        <Card variant="interactive" className="h-full gap-3 px-5 py-4">
          <div className="flex items-center gap-2">
            <Badge variant="game">{plan.versionGroupName}</Badge>
            {plan.updatedAt ? (
              <span className="text-ink-3 text-13 ml-auto font-semibold whitespace-nowrap">
                Updated <PlayMomentTime value={plan.updatedAt} />
              </span>
            ) : null}
          </div>
          <h2
            className={cn(
              "text-20 line-clamp-2 leading-tight",
              plan.isArchived && "text-ink-3",
            )}
          >
            {plan.name}
          </h2>
          <PlanTeamStrip
            members={plan.members}
            className={cn(plan.isArchived && "opacity-55")}
          />
          <div className="mt-auto flex flex-wrap items-center gap-2">
            <span
              className={
                plan.linkedPlayCount
                  ? "text-ink text-13 inline-flex items-center gap-1.5 font-bold"
                  : "text-ink-3 text-13 font-semibold"
              }
            >
              {plan.linkedPlayCount ? (
                <AppIcon icon={appIcons.milestones.story} size="sm" />
              ) : null}
              {getMyPlanFootnote(plan)}
            </span>
            {plan.isArchived ? (
              <StatusBadge className="ml-auto">Archived</StatusBadge>
            ) : null}
          </div>
        </Card>
      </Link>
      <CornerRemoveButton
        label={`Delete ${plan.name}`}
        onClick={() => {
          setDeleteError(null);
          setIsConfirmOpen(true);
        }}
      />
      <AlertDialog
        open={isConfirmOpen}
        onOpenChange={(open) => {
          if (!isDeleting) setIsConfirmOpen(open);
        }}
      >
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>Delete {plan.name}?</AlertDialogTitle>
            <AlertDialogDescription>
              Its Pokémon and their builds go with it.
              {plan.linkedPlayCount
                ? ` The ${plan.linkedPlayCount === 1 ? "Play that follows it stops" : `${plan.linkedPlayCount} Plays that follow it stop`} comparing against it.`
                : ""}{" "}
              This can&apos;t be undone.
            </AlertDialogDescription>
          </AlertDialogHeader>
          {deleteError ? (
            <p role="alert" className="text-danger text-13 font-bold">
              {deleteError}
            </p>
          ) : null}
          <AlertDialogFooter>
            <AlertDialogCancel disabled={isDeleting}>Keep it</AlertDialogCancel>
            <Button
              type="button"
              variant="destructive"
              disabled={isDeleting}
              aria-busy={isDeleting}
              onClick={deletePlan}
            >
              {isDeleting ? <Spinner data-icon="inline-start" /> : null}
              Delete Plan
            </Button>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </li>
  );
};

/*
 * My Plans' list: the band with the page's head and the toolbar (what to
 * show, which game, the order), then the cards.
 */
export const MyPlansBrowser = ({ head, plans }: MyPlansBrowserProps) => {
  const [filters, setFilters] = useState<MyPlansFilters>(defaultMyPlansFilters);
  const shown = useMemo(
    () => filterAndSortMyPlans(plans, filters),
    [filters, plans],
  );
  const games = useMemo(() => getMyPlansGames(plans), [plans]);
  const update = (next: Partial<MyPlansFilters>) =>
    setFilters((current) => ({ ...current, ...next }));
  /* Back to every Plan, keeping the order you picked. */
  const clearFilters = () =>
    setFilters((current) => ({ ...defaultMyPlansFilters, sort: current.sort }));
  const hasActiveFilters = hasActiveMyPlansFilters(filters);

  return (
    <>
      <PageBand>
        {head}
        <Toolbar
          aria-label="Filter your Plans"
          className="mt-5"
          search={
            <SearchControl
              id="my-plans-search"
              ariaLabel="Search your Plans"
              placeholder="Search your Plans"
              value={filters.query}
              onValueChange={(query) => update({ query })}
            />
          }
          trailing={
            <>
              <SegmentedControl
                variant="segment"
                selectedTone="soft"
                ariaLabel="Show"
                value={filters.status}
                onValueChange={(status) => update({ status })}
                options={[
                  { label: "All", value: "all" },
                  { label: "Active", value: "active" },
                  { label: "Archived", value: "archived" },
                ]}
              />
              <SelectControl
                id="my-plans-game"
                ariaLabel="Filter Plans by game"
                variant="ghost"
                placeholder="All games"
                value={filters.game}
                onValueChange={(game) => update({ game })}
                options={[{ label: "All games", value: "" }, ...games]}
              />
              <SelectControl
                id="my-plans-sort"
                ariaLabel="Sort Plans"
                variant="ghost"
                prefix="Sort"
                placeholder={myPlansSortLabels.updated}
                value={filters.sort}
                onValueChange={(sort) => update({ sort: sort as MyPlansSort })}
                options={(Object.keys(myPlansSortLabels) as MyPlansSort[]).map(
                  (sort) => ({ label: myPlansSortLabels[sort], value: sort }),
                )}
              />
            </>
          }
        />
      </PageBand>

      <section aria-label="Your Plans" className="flex flex-col gap-5">
        <FilterResultsLine
          hasActiveFilters={hasActiveFilters}
          noun="Plans"
          nounOne="Plan"
          onClearFilters={clearFilters}
          shownCount={shown.length}
          totalCount={plans.length}
        />

        {shown.length ? (
          <ul className="grid gap-4 sm:grid-cols-2 xl:grid-cols-3">
            {shown.map((plan) => (
              <MyPlanCard key={plan.id} plan={plan} />
            ))}
          </ul>
        ) : (
          <EmptyState
            variant="bare"
            title="No Plans match."
            action={<ClearFiltersButton onClick={clearFilters} />}
          />
        )}
      </section>
    </>
  );
};
