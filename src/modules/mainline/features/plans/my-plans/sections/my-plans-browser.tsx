"use client";

import Link from "next/link";
import { useMemo, useState } from "react";

import { appRoutes } from "@/config/routes";
import {
  defaultMyPlansFilters,
  filterAndSortMyPlans,
  getMyPlanFootnote,
  getMyPlansGames,
  myPlansSortLabels,
  type MyPlan,
  type MyPlansFilters,
  type MyPlansSort,
} from "@/modules/mainline/features/plans/my-plans/data/my-plans-model";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { StatusBadge } from "@/shared/components/status-badge";
import { Toolbar } from "@/shared/components/toolbar";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type MyPlansBrowserProps = {
  plans: MyPlan[];
};

const MyPlanCard = ({ plan }: { plan: MyPlan }) => {
  const slots = Array.from({ length: 6 }, (_, index) =>
    plan.members.find((member) => member.slot === index + 1),
  );

  return (
    <li
      className="game-scope min-w-0"
      style={getGameColourStyle(plan.gameSlug)}
    >
      <Link
        href={appRoutes.mainlinePlan(plan.id)}
        className="group/card-link focus-visible:outline-focus block h-full rounded-2xl outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
      >
        <Card variant="interactive" className="h-full gap-3 px-5 py-4">
          <div className="flex items-center gap-2">
            <span className="bg-game-wash text-game-deep text-13 rounded-full px-2.5 py-0.5 font-extrabold">
              {plan.versionGroupName}
            </span>
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
          <ul
            aria-label="Team"
            className={cn(
              "grid grid-cols-6 gap-1.5",
              plan.isArchived && "opacity-55",
            )}
          >
            {slots.map((member, index) =>
              member ? (
                <li
                  key={index}
                  style={getPokemonTypeCssVariables(
                    member.typeSlug && isPokemonTypeSlug(member.typeSlug)
                      ? member.typeSlug
                      : null,
                  )}
                  className="sticker grid aspect-square place-items-center rounded-md [border-width:3px]"
                >
                  {member.imageUrl ? (
                    // eslint-disable-next-line @next/next/no-img-element
                    <img
                      src={member.imageUrl}
                      alt={member.name}
                      title={member.name}
                      className="size-full object-contain"
                    />
                  ) : (
                    <span className="sr-only">{member.name}</span>
                  )}
                </li>
              ) : (
                <li key={index} className="empty-slot aspect-square rounded-md">
                  <span className="sr-only">Open slot {index + 1}</span>
                </li>
              ),
            )}
          </ul>
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
    </li>
  );
};

/* My Plans' list: what to show, which game, the order, then the cards. */
export const MyPlansBrowser = ({ plans }: MyPlansBrowserProps) => {
  const [filters, setFilters] = useState<MyPlansFilters>(defaultMyPlansFilters);
  const shown = useMemo(
    () => filterAndSortMyPlans(plans, filters),
    [filters, plans],
  );
  const games = useMemo(() => getMyPlansGames(plans), [plans]);
  const update = (next: Partial<MyPlansFilters>) =>
    setFilters((current) => ({ ...current, ...next }));

  return (
    <div className="flex flex-col gap-5">
      <Toolbar
        aria-label="Filter your Plans"
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
          action={
            <ClearFiltersButton
              onClick={() => setFilters(defaultMyPlansFilters)}
            />
          }
        />
      )}
    </div>
  );
};
