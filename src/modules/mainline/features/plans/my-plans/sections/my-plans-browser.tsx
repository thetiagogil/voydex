"use client";

import { Badge } from "@/shared/components/ui/badge";
import Link from "next/link";
import { useMemo, useState, type ReactNode } from "react";

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
import { PlanActionsMenu } from "@/modules/mainline/features/plans/components/plan-actions-menu";
import { PlanTeamStrip } from "@/modules/mainline/features/plans/components/plan-team-strip";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ResetListButton } from "@/shared/components/reset-list-button";
import { EmptyState } from "@/shared/components/empty-state";
import { PageBand } from "@/shared/components/page-band";
import { GameOptionCover } from "@/modules/reference/features/games/components/game-option-cover";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import {
  FoldHead,
  FoldPanel,
  FoldToggle,
  useFold,
} from "@/shared/components/fold";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type MyPlansBrowserProps = {
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
  plans: MyPlan[];
};

/*
 * One Plan: the card opens it in the Team Planner (an archived one stays
 * shut); its "⋯" in the corner holds Rename, See Plays, Archive or Restore,
 * and Delete.
 */
const MyPlanCard = ({ plan }: { plan: MyPlan }) => {
  const card = (
    <Card className="h-full gap-3 px-5 py-4">
      {/* Room at the end for the menu, which sits over it. */}
      <div className="flex min-h-9 items-center gap-2 pr-10">
        <Badge variant="select">{plan.versionGroupName}</Badge>
        {plan.updatedAt ? (
          <span className="text-ink-3 text-13 ml-auto font-semibold whitespace-nowrap">
            Updated <PlayMomentTime value={plan.updatedAt} />
          </span>
        ) : null}
      </div>
      <h2
        className={cn(
          "text-20 descender-room line-clamp-2 leading-tight",
          plan.isArchived && "text-ink-3",
        )}
      >
        {plan.name}
      </h2>
      <PlanTeamStrip
        members={plan.members}
        className={cn(plan.isArchived && "opacity-55")}
      />
      <span
        className={cn(
          "mt-auto",
          plan.linkedPlayCount
            ? "text-ink text-13 inline-flex items-center gap-1.5 font-bold"
            : "text-ink-3 text-13 font-semibold",
        )}
      >
        {plan.linkedPlayCount ? (
          <AppIcon icon={appIcons.milestones.story} size="sm" />
        ) : null}
        {getMyPlanFootnote(plan)}
      </span>
    </Card>
  );

  return (
    /* The card and its menu lift as one, so the menu never leaves its corner. */
    <li
      className={cn(
        "relative min-w-0",
        !plan.isArchived &&
          "transition-transform duration-150 focus-within:-translate-y-0.5 hover:-translate-y-0.5",
      )}
    >
      {/* An archived Plan doesn't open; restore it from its menu first. */}
      {plan.isArchived ? (
        <div className="h-full">{card}</div>
      ) : (
        <Link
          href={appRoutes.mainlinePlan(plan.id)}
          className="group/card-link focus-ring block h-full rounded-2xl"
        >
          {card}
        </Link>
      )}
      <PlanActionsMenu
        placement="card"
        plan={plan}
        className="absolute top-3.5 right-3.5"
      />
    </li>
  );
};

/* The Plans' cards, as My Plans and its archived list show them. */
export const MyPlansGrid = ({ plans }: { plans: MyPlan[] }) => (
  <ul className="grid gap-4 sm:grid-cols-2 xl:grid-cols-3">
    {plans.map((plan) => (
      <MyPlanCard key={plan.id} plan={plan} />
    ))}
  </ul>
);

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
  /* Back to every Plan in the default order. */
  const resetList = () => setFilters(defaultMyPlansFilters);
  const hasActiveFilters = hasActiveMyPlansFilters(filters);
  const isReordered = filters.sort !== defaultMyPlansFilters.sort;
  const fold = useFold({ defaultOpen: hasActiveFilters });

  return (
    <>
      <PageBand>
        <FoldHead
          toggle={
            <FoldToggle
              controls={fold.panelId}
              open={fold.open}
              onOpenChange={fold.setOpen}
            />
          }
        >
          {head}
        </FoldHead>
        <FoldPanel id={fold.panelId} open={fold.open}>
          <FilterToolbar
            ariaLabel="Filter your Plans"
            className="mt-5"
            activeCount={filters.game ? 1 : 0}
            resultLabel={`Show ${shown.length} ${shown.length === 1 ? "Plan" : "Plans"}`}
            search={
              <SearchControl
                id="my-plans-search"
                ariaLabel="Search your Plans"
                placeholder="Search your Plans"
                value={filters.query}
                onValueChange={(query) => update({ query })}
              />
            }
            controls={(placement) => {
              const sort = (
                <SelectControl
                  id={
                    placement === "line"
                      ? "my-plans-sort"
                      : "my-plans-sheet-sort"
                  }
                  ariaLabel="Sort Plans"
                  resetValue={defaultMyPlansFilters.sort}
                  variant="ghost"
                  prefix={placement === "line" ? "Sort" : undefined}
                  placeholder={myPlansSortLabels.updated}
                  value={filters.sort}
                  onValueChange={(sort) =>
                    update({ sort: sort as MyPlansSort })
                  }
                  options={(
                    Object.keys(myPlansSortLabels) as MyPlansSort[]
                  ).map((sort) => ({
                    label: myPlansSortLabels[sort],
                    value: sort,
                  }))}
                />
              );

              return placement === "line" ? (
                sort
              ) : (
                <FilterSheetRow htmlFor="my-plans-sheet-sort" label="Sort">
                  {sort}
                </FilterSheetRow>
              );
            }}
            filters={(placement) => {
              const game = (
                <SelectControl
                  id={
                    placement === "line"
                      ? "my-plans-game"
                      : "my-plans-sheet-game"
                  }
                  ariaLabel="Filter Plans by game"
                  resetValue={defaultMyPlansFilters.game}
                  variant="ghost"
                  placeholder="All games"
                  value={filters.game}
                  onValueChange={(game) => update({ game })}
                  options={[
                    {
                      icon: <AppIcon icon={appIcons.product.game} size="md" />,
                      label: "All games",
                      value: "",
                    },
                    ...games.map(({ gameSlug, ...game }) => ({
                      ...game,
                      icon: gameSlug ? (
                        <GameOptionCover
                          gameName={game.label}
                          gameSlug={gameSlug}
                        />
                      ) : undefined,
                    })),
                  ]}
                  searchPlaceholder="Search games"
                />
              );

              return placement === "line" ? (
                game
              ) : (
                <FilterSheetRow htmlFor="my-plans-sheet-game" label="Game">
                  {game}
                </FilterSheetRow>
              );
            }}
          />
          <FilterResultsLine
            className="mt-3"
            hasActiveFilters={hasActiveFilters}
            isReordered={isReordered}
            noun="Plans"
            nounOne="Plan"
            onReset={resetList}
            shownCount={shown.length}
            totalCount={plans.length}
          />
        </FoldPanel>
      </PageBand>

      <section aria-label="Your Plans" className="flex flex-col gap-5">
        {shown.length ? (
          <MyPlansGrid plans={shown} />
        ) : (
          <EmptyState
            variant="bare"
            title="No Plans match."
            action={<ResetListButton onClick={resetList} />}
          />
        )}
      </section>
    </>
  );
};
