"use client";

import { useId, useState, type ComponentProps, type ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { Toolbar, ToolbarGroup } from "@/shared/components/toolbar";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

/* Where a control renders: on the toolbar's line or panel, or in the phone sheet. */
export type FilterToolbarPlacement = "panel" | "sheet";

type FilterToolbarProps = {
  /* How many filters are set: shown on the Filters button. */
  activeCount: number;
  ariaLabel: string;
  className?: string;
  /*
   * The few controls that stay on the line from 640px (usually the order).
   * On phones they move into the sheet. Called once per placement, so give
   * ids from the placement.
   */
  controls?: (placement: FilterToolbarPlacement) => ReactNode;
  /* Every filter: the panel under the line from 640px, the sheet on phones. */
  filters: (placement: FilterToolbarPlacement) => ReactNode;
  /* Wraps the toolbar, such as `<form />`. */
  render?: ComponentProps<typeof Toolbar>["render"];
  /* The sheet's button, such as "Show 43 Plays"; "Show results" by default. */
  resultLabel?: string;
  search: ReactNode;
};

const FiltersButtonLabel = ({ activeCount }: { activeCount: number }) => (
  <>
    <AppIcon icon={appIcons.actions.filter} inline="start" />
    Filters
    {activeCount ? (
      <span className="bg-action text-12 -mr-1 grid h-5 min-w-5 place-items-center rounded-full px-1.5 font-extrabold text-white tabular-nums">
        {activeCount}
      </span>
    ) : null}
  </>
);

/*
 * The one toolbar for a list: the search, a few key controls (usually the
 * order) and a Filters button, on one line at every width. Filters start
 * hidden: from 640px the button opens them in a row under the line, inside
 * the same card; on phones it opens them, with the key controls, in a sheet
 * from the bottom. The button counts the filters that are set.
 */
export const FilterToolbar = ({
  activeCount,
  ariaLabel,
  className,
  controls,
  filters,
  render,
  resultLabel = "Show results",
  search,
}: FilterToolbarProps) => {
  const [isPanelOpen, setIsPanelOpen] = useState(false);
  const [isSheetOpen, setIsSheetOpen] = useState(false);
  const panelId = useId();

  return (
    <Toolbar
      aria-label={ariaLabel}
      className={className}
      render={render}
      search={
        <div className="flex gap-2">
          <div className="min-w-0 flex-1 *:w-full">{search}</div>
          {/* Phones: the sheet. Only its trigger hides from 640px. */}
          <BottomSheet
            open={isSheetOpen}
            onOpenChange={setIsSheetOpen}
            title="Filters"
            description={ariaLabel}
            descriptionHidden
            trigger={
              <Button type="button" variant="secondary" className="sm:hidden">
                <FiltersButtonLabel activeCount={activeCount} />
              </Button>
            }
            footer={
              <Button type="button" onClick={() => setIsSheetOpen(false)}>
                {resultLabel}
              </Button>
            }
          >
            <div className="grid grid-cols-[minmax(0,1fr)] gap-4">
              {filters("sheet")}
              {controls?.("sheet")}
            </div>
          </BottomSheet>
        </div>
      }
      trailing={
        <>
          {controls ? (
            <ToolbarGroup className="hidden sm:flex">
              {controls("panel")}
            </ToolbarGroup>
          ) : null}
          <ToolbarGroup className="hidden sm:flex">
            <Button
              type="button"
              variant={isPanelOpen ? "secondary" : "ghost"}
              aria-expanded={isPanelOpen}
              aria-controls={panelId}
              onClick={() => setIsPanelOpen((isOpen) => !isOpen)}
            >
              <FiltersButtonLabel activeCount={activeCount} />
            </Button>
          </ToolbarGroup>
        </>
      }
    >
      <div
        id={panelId}
        hidden={!isPanelOpen}
        className={cn(
          "border-line -mx-2.5 border-t px-2.5 pt-2.5 max-sm:hidden",
          !isPanelOpen && "hidden",
        )}
      >
        {isPanelOpen ? filters("panel") : null}
      </div>
    </Toolbar>
  );
};

/* One labelled row in the phone sheet: the label left, its control right. */
export const FilterSheetRow = ({
  children,
  htmlFor,
  label,
}: {
  children: ReactNode;
  /* The control's id; leave it out for a control that names itself, such as a switch. */
  htmlFor?: string;
  label: string;
}) => {
  const labelClassName = "text-ink-2 text-13 font-bold";

  return (
    <div className="flex min-h-13 flex-wrap items-center justify-between gap-x-4 gap-y-2 py-1">
      {htmlFor ? (
        <label htmlFor={htmlFor} className={labelClassName}>
          {label}
        </label>
      ) : (
        <span aria-hidden className={labelClassName}>
          {label}
        </span>
      )}
      {/* A wide switch scrolls inside the row instead of widening the sheet. */}
      <div className="flex max-w-full min-w-0 justify-end">{children}</div>
    </div>
  );
};
