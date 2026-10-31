"use client";

import {
  Children,
  cloneElement,
  Fragment,
  isValidElement,
  useState,
  type ComponentProps,
  type ReactNode,
} from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { Toolbar, ToolbarGroup } from "@/shared/components/toolbar";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

/* Where a control renders: on the toolbar's line, or in the sheet below 1280px. */
export type FilterToolbarPlacement = "line" | "sheet";

type FilterToolbarProps = {
  /* How many filters are set: shown on the Filters button. */
  activeCount: number;
  ariaLabel: string;
  className?: string;
  /*
   * The order and other key controls, at the line's end from 1280px. Called
   * once per placement, so give ids from the placement.
   */
  controls?: (placement: FilterToolbarPlacement) => ReactNode;
  /* The filters, on the line after the search from 1280px. */
  filters?: (placement: FilterToolbarPlacement) => ReactNode;
  /* Wraps the toolbar, such as `<form />`. */
  render?: ComponentProps<typeof Toolbar>["render"];
  /* The sheet's button, such as "Show 43 Plays"; "Show results" by default. */
  resultLabel?: string;
  /*
   * The one row allowed under the line, such as the type dots, from 1280px.
   * Below that it moves into the sheet.
   */
  row?: (placement: FilterToolbarPlacement) => ReactNode;
  search: ReactNode;
};

/* Each control a filter or the order renders, fragments opened up. */
const getControls = (node: ReactNode): ReactNode[] =>
  Children.toArray(node).flatMap((child) =>
    isValidElement<{ children?: ReactNode }>(child) && child.type === Fragment
      ? getControls(child.props.children)
      : [child],
  );

/*
 * The one toolbar for a list, on a single line: the search, the filters,
 * then the order, a hairline between each. Controls that belong together
 * (wrapped in one element) share a group. The only second row is the
 * type dots (`row`), under the card. Below 1280px (phones and tablets) the line is the search and a
 * Filters button that opens the filters, the row and the order in a sheet
 * from the bottom.
 */
export const FilterToolbar = ({
  activeCount,
  ariaLabel,
  className,
  controls,
  filters,
  render,
  resultLabel = "Show results",
  row,
  search,
}: FilterToolbarProps) => {
  const [isSheetOpen, setIsSheetOpen] = useState(false);
  const hasSheet = Boolean(filters || controls || row);

  return (
    <div className={className}>
      <Toolbar
        aria-label={ariaLabel}
        oneLine
        render={render}
        search={
          <div className="flex gap-2">
            <div className="min-w-0 flex-1 *:w-full">{search}</div>
            {/* Phones: the sheet. Only its trigger hides once the controls are on the line. */}
            {hasSheet ? (
              <OverlaySheet
                open={isSheetOpen}
                onOpenChange={setIsSheetOpen}
                title="Filters"
                description={ariaLabel}
                descriptionHidden
                trigger={
                  <Button
                    type="button"
                    variant="secondary"
                    className={"xl:hidden"}
                  >
                    <AppIcon icon={appIcons.actions.filter} inline="start" />
                    Filters
                    {activeCount ? (
                      <span className="bg-action text-12 -mr-1 grid h-5 min-w-5 place-items-center rounded-full px-1.5 font-extrabold text-white tabular-nums">
                        {activeCount}
                      </span>
                    ) : null}
                  </Button>
                }
                footer={
                  <Button type="button" onClick={() => setIsSheetOpen(false)}>
                    {resultLabel}
                  </Button>
                }
              >
                <div className="grid grid-cols-[minmax(0,1fr)] gap-4">
                  {filters?.("sheet")}
                  {row?.("sheet")}
                  {controls?.("sheet")}
                </div>
              </OverlaySheet>
            ) : null}
          </div>
        }
        trailing={[filters?.("line"), controls?.("line")]
          .flatMap(getControls)
          .map((control, index) =>
            /* A control that is already a group keeps its own classes, such as `shrink-0`. */
            isValidElement<{ className?: string }>(control) &&
            control.type === ToolbarGroup ? (
              cloneElement(control, {
                className: cn(control.props.className, "hidden xl:flex"),
                key: index,
              })
            ) : (
              <ToolbarGroup key={index} className={"hidden xl:flex"}>
                {control}
              </ToolbarGroup>
            ),
          )}
      />
      {row ? (
        <div className={cn("mt-3.5", "max-xl:hidden")}>{row("line")}</div>
      ) : null}
    </div>
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
