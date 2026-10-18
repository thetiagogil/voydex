"use client";

import {
  useEffect,
  useId,
  useRef,
  useState,
  type ComponentProps,
  type ReactNode,
} from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { Toolbar, ToolbarGroup } from "@/shared/components/toolbar";
import { Button } from "@/shared/components/ui/button";

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
  /* Every filter: the row under the line from 640px, the sheet on phones. */
  filters: (placement: FilterToolbarPlacement) => ReactNode;
  /* What is typed in the search, so the bar stays open while it is searching. */
  query?: string;
  /* Wraps the toolbar, such as `<form />`. */
  render?: ComponentProps<typeof Toolbar>["render"];
  /* The sheet's button, such as "Show 43 Plays"; "Show results" by default. */
  resultLabel?: string;
  search: ReactNode;
};

const CountBadge = ({ count }: { count: number }) =>
  count ? (
    <span className="bg-action text-12 -mr-1 grid h-5 min-w-5 place-items-center rounded-full px-1.5 font-extrabold text-white tabular-nums">
      {count}
    </span>
  ) : null;

const HideButton = ({
  className,
  controls,
  onHide,
}: {
  className?: string;
  controls: string;
  onHide: () => void;
}) => (
  <Button
    type="button"
    variant="ghost"
    size="icon"
    aria-label="Hide search and filters"
    aria-expanded
    aria-controls={controls}
    onClick={onHide}
    className={className}
  >
    <AppIcon icon={appIcons.actions.close} />
  </Button>
);

const isTyping = (target: EventTarget | null) =>
  target instanceof HTMLElement &&
  (target.isContentEditable ||
    ["INPUT", "SELECT", "TEXTAREA"].includes(target.tagName));

/*
 * The one toolbar for a list. It starts hidden: a quiet "Search and filter"
 * button under the page's title, counting the filters that are set. Opened
 * (the button, or "/" anywhere on the page, which also jumps to the search),
 * it shows the toolbar card: the search and a few key controls on the line,
 * every filter in a row under it, and a button to hide it again. On phones
 * the line is the search and a Filters button that opens the filters and
 * the key controls in a sheet from the bottom. It stays open while a search
 * or a filter is on, so nothing that changes the list is ever hidden.
 */
export const FilterToolbar = ({
  activeCount,
  ariaLabel,
  className,
  controls,
  filters,
  query = "",
  render,
  resultLabel = "Show results",
  search,
}: FilterToolbarProps) => {
  const isNarrowing = activeCount > 0 || query.trim() !== "";
  const [isOpen, setIsOpen] = useState(isNarrowing);
  const [isSheetOpen, setIsSheetOpen] = useState(false);
  const focusSearchRef = useRef(false);
  const rootRef = useRef<HTMLDivElement>(null);
  const toolbarId = useId();
  const isShown = isOpen || isNarrowing;

  const openAndSearch = () => {
    focusSearchRef.current = true;
    setIsOpen(true);
  };

  /* "/" opens the bar and jumps to the search, as on most search pages. */
  useEffect(() => {
    const onKeyDown = (event: KeyboardEvent) => {
      if (
        event.key !== "/" ||
        event.metaKey ||
        event.ctrlKey ||
        event.altKey ||
        isTyping(event.target)
      ) {
        return;
      }

      event.preventDefault();
      focusSearchRef.current = true;
      setIsOpen(true);
      rootRef.current?.querySelector<HTMLInputElement>("input")?.focus();
    };

    window.addEventListener("keydown", onKeyDown);

    return () => window.removeEventListener("keydown", onKeyDown);
  }, []);

  useEffect(() => {
    if (isShown && focusSearchRef.current) {
      focusSearchRef.current = false;
      rootRef.current?.querySelector<HTMLInputElement>("input")?.focus();
    }
  }, [isShown]);

  return (
    <div ref={rootRef} className={className}>
      {isShown ? null : (
        <Button
          type="button"
          variant="secondary"
          aria-expanded={false}
          aria-controls={toolbarId}
          aria-keyshortcuts="/"
          onClick={openAndSearch}
        >
          <AppIcon icon={appIcons.actions.search} inline="start" />
          Search and filter
        </Button>
      )}
      <Toolbar
        id={toolbarId}
        aria-label={ariaLabel}
        hidden={!isShown}
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
                  <AppIcon icon={appIcons.actions.filter} inline="start" />
                  Filters
                  <CountBadge count={activeCount} />
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
            {/* Phones: hiding sits on the same line as the search. */}
            {isNarrowing ? null : (
              <HideButton
                className="sm:hidden"
                controls={toolbarId}
                onHide={() => setIsOpen(false)}
              />
            )}
          </div>
        }
        trailing={
          <>
            {controls ? (
              <ToolbarGroup className="hidden sm:flex">
                {controls("panel")}
              </ToolbarGroup>
            ) : null}
            {isNarrowing ? null : (
              <ToolbarGroup className="hidden sm:flex">
                <HideButton
                  controls={toolbarId}
                  onHide={() => setIsOpen(false)}
                />
              </ToolbarGroup>
            )}
          </>
        }
      >
        <div className="border-line -mx-2.5 border-t px-2.5 pt-2.5 max-sm:hidden">
          {isShown ? filters("panel") : null}
        </div>
      </Toolbar>
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
