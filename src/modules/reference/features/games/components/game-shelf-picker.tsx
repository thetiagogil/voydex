"use client";

import {
  useCallback,
  useEffect,
  useMemo,
  useRef,
  useState,
  type KeyboardEvent,
} from "react";

import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import type { GameShelfGame } from "@/modules/reference/features/games/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type GameShelfPickerProps = {
  /* Names the shelf for assistive tech. */
  ariaLabel?: string;
  className?: string;
  /* `md` is Start a Play's 118px cover; `lg` is New Play's 150px one. */
  coverSize?: "lg" | "md";
  games: GameShelfGame[];
  /*
   * Opens the shelf at this generation's first game when no game is picked,
   * as when one of Home's first partners links to the picker.
   */
  initialGeneration?: number;
  /* Picking the picked game again clears the pick (`null`). */
  onValueChange: (gameSlug: string | null) => void;
  /* The picked game's slug, or `null`. */
  value: string | null;
};

/* Where the shelf reads a cover as "in view": past its faded left edge. */
const READING_EDGE = 0.1;

const prefersReducedMotion = () =>
  typeof window !== "undefined" &&
  window.matchMedia("(prefers-reduced-motion: reduce)").matches;

const scrollBehavior = (): ScrollBehavior =>
  prefersReducedMotion() ? "auto" : "smooth";

/*
 * v3's cover shelf, the one game picker (Start a Play, New Play, the Team
 * Planner): every game's box in release order on one row that scrolls
 * sideways, arrows to page through it on wider screens, and the generation
 * marks under it to jump to a generation's first game. One game is picked at
 * a time; the picked cover stands up with a check.
 *
 * It is a horizontal listbox: one tab stop, the arrow keys (and Home, End)
 * move between covers, Enter or Space picks. The shelf owns no background;
 * the page behind it (the meadow) does.
 */
export const GameShelfPicker = ({
  ariaLabel = "Games",
  className,
  coverSize = "md",
  games,
  initialGeneration,
  onValueChange,
  value,
}: GameShelfPickerProps) => {
  const shelfRef = useRef<HTMLDivElement>(null);
  const firstGameOfGeneration = useMemo(() => {
    const firstByGeneration = new Map<number, GameShelfGame>();

    for (const game of games) {
      if (!firstByGeneration.has(game.generation.number)) {
        firstByGeneration.set(game.generation.number, game);
      }
    }

    return firstByGeneration;
  }, [games]);
  const pickedGame = games.find((game) => game.slug === value) ?? null;
  const [activeSlug, setActiveSlug] = useState<string | null>(
    () =>
      pickedGame?.slug ??
      (initialGeneration !== undefined
        ? firstGameOfGeneration.get(initialGeneration)?.slug
        : undefined) ??
      games.at(-1)?.slug ??
      null,
  );
  const [generationInView, setGenerationInView] = useState<number | null>(null);
  const tabStopSlug =
    activeSlug && games.some((game) => game.slug === activeSlug)
      ? activeSlug
      : (games[0]?.slug ?? null);

  const getCover = useCallback((slug: string) => {
    return (
      shelfRef.current?.querySelector<HTMLElement>(
        `[data-game-slug="${CSS.escape(slug)}"]`,
      ) ?? null
    );
  }, []);

  /* The generation of the first cover past the shelf's faded left edge. */
  const readGenerationInView = useCallback(() => {
    const shelf = shelfRef.current;

    if (!shelf) {
      return;
    }

    const edge = shelf.scrollLeft + shelf.clientWidth * READING_EDGE;
    const covers = shelf.querySelectorAll<HTMLElement>("[data-game-slug]");
    const coverInView = Array.from(covers).find(
      (cover) => cover.offsetLeft + cover.offsetWidth > edge,
    );
    const game = games.find(
      (candidate) => candidate.slug === coverInView?.dataset.gameSlug,
    );

    setGenerationInView(game?.generation.number ?? null);
  }, [games]);

  /* Scrolls a generation's first cover to the shelf's left reading edge. */
  const scrollToCover = useCallback(
    (slug: string, behavior: ScrollBehavior) => {
      const shelf = shelfRef.current;
      const cover = getCover(slug);

      if (!shelf || !cover) {
        return;
      }

      shelf.scrollTo({
        behavior,
        left: cover.offsetLeft - shelf.clientWidth * (READING_EDGE - 0.02),
      });
    },
    [getCover],
  );

  /*
   * Opening the shelf: the picked game in the middle, else the asked-for
   * generation, else the newest games (v3). Covers keep their platform's
   * shape, so their widths are known only once each image loads: the opening
   * place is set again on every load until the reader moves the shelf.
   */
  useEffect(() => {
    const shelf = shelfRef.current;

    if (!shelf) {
      return;
    }

    const pickedSlug = pickedGame?.slug;
    const generationSlug =
      initialGeneration !== undefined
        ? firstGameOfGeneration.get(initialGeneration)?.slug
        : undefined;
    const placeOpening = () => {
      const pickedCover = pickedSlug ? getCover(pickedSlug) : null;

      if (pickedCover) {
        shelf.scrollLeft =
          pickedCover.offsetLeft -
          (shelf.clientWidth - pickedCover.offsetWidth) / 2;
      } else if (generationSlug) {
        scrollToCover(generationSlug, "auto");
      } else {
        shelf.scrollLeft = shelf.scrollWidth;
      }

      readGenerationInView();
    };
    /* The whole picker: the shelf, its arrows and the generation marks. */
    const picker = shelf.closest<HTMLElement>("[data-slot=game-shelf-picker]");
    const readerEvents = ["keydown", "pointerdown", "touchstart", "wheel"];
    const stopPlacing = () => {
      shelf.removeEventListener("load", placeOpening, true);
      readerEvents.forEach((type) =>
        picker?.removeEventListener(type, stopPlacing),
      );
    };

    placeOpening();
    shelf.addEventListener("load", placeOpening, true);
    readerEvents.forEach((type) =>
      picker?.addEventListener(type, stopPlacing, { passive: true }),
    );

    return stopPlacing;
    // Only where the shelf opens; later picks keep the reader's place.
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  useEffect(() => {
    const shelf = shelfRef.current;

    if (!shelf) {
      return;
    }

    let frame = 0;
    const onScroll = () => {
      cancelAnimationFrame(frame);
      frame = requestAnimationFrame(readGenerationInView);
    };

    shelf.addEventListener("scroll", onScroll, { passive: true });

    return () => {
      cancelAnimationFrame(frame);
      shelf.removeEventListener("scroll", onScroll);
    };
  }, [readGenerationInView]);

  const pick = (slug: string) => {
    setActiveSlug(slug);
    onValueChange(slug === value ? null : slug);
  };

  const moveFocus = (slug: string) => {
    const cover = getCover(slug);

    setActiveSlug(slug);
    cover?.focus({ preventScroll: true });
    cover?.scrollIntoView({
      behavior: scrollBehavior(),
      block: "nearest",
      inline: "nearest",
    });
  };

  const onShelfKeyDown = (event: KeyboardEvent<HTMLDivElement>) => {
    const index = games.findIndex((game) => game.slug === tabStopSlug);
    const targets: Record<string, number> = {
      ArrowLeft: Math.max(index - 1, 0),
      ArrowRight: Math.min(index + 1, games.length - 1),
      End: games.length - 1,
      Home: 0,
    };

    if (event.key in targets) {
      event.preventDefault();

      const target = games[targets[event.key]];

      if (target) {
        moveFocus(target.slug);
      }

      return;
    }

    if ((event.key === "Enter" || event.key === " ") && tabStopSlug) {
      event.preventDefault();
      pick(tabStopSlug);
    }
  };

  const pageShelf = (direction: -1 | 1) => {
    const shelf = shelfRef.current;

    shelf?.scrollBy({
      behavior: scrollBehavior(),
      left: direction * shelf.clientWidth * 0.7,
    });
  };

  const jumpToGeneration = (generationNumber: string) => {
    const game = firstGameOfGeneration.get(Number(generationNumber));

    if (!game) {
      return;
    }

    // Tabbing into the shelf next lands on this generation's first game.
    setActiveSlug(game.slug);
    setGenerationInView(game.generation.number);
    scrollToCover(game.slug, scrollBehavior());
  };

  const generationOptions = Array.from(firstGameOfGeneration.values()).map(
    (game) => ({
      current: game.generation.number === generationInView,
      label: game.generation.numeral,
      value: String(game.generation.number),
    }),
  );
  const arrowClassName =
    "shadow-float absolute top-[calc(50%+12px)] z-10 size-11.5 -translate-y-1/2 rounded-full max-sm:hidden";

  return (
    <div
      data-slot="game-shelf-picker"
      className={cn("flex min-w-0 flex-col", className)}
    >
      <div className="relative">
        <Button
          type="button"
          variant="outline"
          size="icon"
          aria-label="Earlier games"
          onClick={() => pageShelf(-1)}
          className={cn(arrowClassName, "left-5")}
        >
          <AppIcon icon={appIcons.actions.previous} size="lg" />
        </Button>
        <div
          ref={shelfRef}
          role="listbox"
          aria-label={ariaLabel}
          aria-orientation="horizontal"
          onKeyDown={onShelfKeyDown}
          className={cn(
            "no-scrollbar relative flex items-end overflow-x-auto [mask-image:linear-gradient(90deg,transparent,black_7%,black_93%,transparent)]",
            "gap-3 px-4.5 pt-9 pb-4 sm:gap-4 sm:px-16 sm:pt-10",
          )}
        >
          {games.map((game) => {
            const isPicked = game.slug === value;

            return (
              <div
                key={game.slug}
                role="option"
                aria-selected={isPicked}
                aria-label={`${game.name}, ${game.releaseYear}`}
                title={game.name}
                data-game-slug={game.slug}
                tabIndex={game.slug === tabStopSlug ? 0 : -1}
                onClick={() => pick(game.slug)}
                onFocus={() => setActiveSlug(game.slug)}
                className={cn(
                  "group/cover relative shrink-0 cursor-pointer rounded-sm transition-transform duration-250 ease-[cubic-bezier(0.3,1.5,0.5,1)]",
                  isPicked
                    ? "-translate-y-5"
                    : "motion-safe:hover:-translate-y-3 motion-safe:hover:-rotate-3",
                )}
              >
                <GameCover
                  alt=""
                  coverImageUrl={game.coverImageUrl}
                  gameName={game.name}
                  gameSlug={game.slug}
                  size={coverSize === "lg" ? "pickerLarge" : "picker"}
                />
                {isPicked ? (
                  <span
                    aria-hidden
                    className="bg-action absolute top-2 right-2 grid size-7 place-items-center rounded-full text-white ring-3 ring-white"
                  >
                    <AppIcon
                      icon={appIcons.status.active}
                      size="md"
                      strokeWidth={3}
                    />
                  </span>
                ) : null}
              </div>
            );
          })}
        </div>
        <Button
          type="button"
          variant="outline"
          size="icon"
          aria-label="Later games"
          onClick={() => pageShelf(1)}
          className={cn(arrowClassName, "right-5")}
        >
          <AppIcon icon={appIcons.actions.next} size="lg" />
        </Button>
      </div>

      <div className="no-scrollbar mt-1 flex items-center justify-center-safe gap-2 overflow-x-auto px-4.5">
        <span
          aria-hidden
          className="text-13 text-ink-2 shrink-0 font-bold max-sm:hidden"
        >
          Generation
        </span>
        <SegmentedControl
          ariaLabel="Jump to a generation"
          className="max-w-none shrink-0 flex-nowrap gap-1"
          onValueChange={jumpToGeneration}
          options={generationOptions}
          size="sm"
          value={null}
        />
      </div>
    </div>
  );
};
