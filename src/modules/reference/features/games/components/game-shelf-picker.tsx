"use client";

import { PickedMark } from "@/shared/components/picked-mark";
import {
  useCallback,
  useEffect,
  useLayoutEffect,
  useMemo,
  useRef,
  useState,
  type KeyboardEvent,
} from "react";

import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import type { GameShelfGame } from "@/modules/reference/features/games/types";
import { Carousel } from "@/shared/components/carousel";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { cn } from "@/shared/utils/cn";
import { IconTip } from "@/shared/components/icon-tip";
import { getScrollBehavior, isMotionReduced } from "@/shared/utils/motion";

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
  /*
   * A request to jump to a generation after the shelf opened, as when one of
   * Start a Play's first partners is tapped: each new `key` scrolls the shelf
   * there the way a generation mark does.
   */
  jumpTo?: { generation: number; key: number };
  /* Picking the picked game again clears the pick (`null`). */
  onValueChange: (gameSlug: string | null) => void;
  /* The picked game's slug, or `null`. */
  value: string | null;
};

/* Where the shelf reads a cover as "in view": past its faded left edge. */
const READING_EDGE = 0.1;

/* The marks row's side padding (`px-4.5`), kept around a mark scrolled into view. */
const MARKS_GUTTER = 18;

/*
 * Covers this close to where the shelf opens load at once; the rest wait
 * until the shelf scrolls near them.
 */
const EAGER_COVER_REACH = 14;

/*
 * v3's cover shelf, the one game picker (Start a Play, New Play, the Team
 * Planner): every game's box in release order on one row that scrolls
 * sideways, arrows to page through it on wider screens, and the generation
 * marks under it to jump to a generation's first game. An arrow shows only
 * while there is more that way. One game is picked at a time; the picked
 * cover stands up with a check.
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
  jumpTo,
  onValueChange,
  value,
}: GameShelfPickerProps) => {
  const shelfRef = useRef<HTMLDivElement>(null);
  const marksRef = useRef<HTMLDivElement>(null);
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
  const generationOpeningSlug =
    initialGeneration !== undefined
      ? firstGameOfGeneration.get(initialGeneration)?.slug
      : undefined;
  /* Where the shelf opens: the picked game, the asked-for generation, else the newest. */
  const [opening] = useState(() => {
    const slug = pickedGame?.slug ?? generationOpeningSlug;
    const index = slug ? games.findIndex((game) => game.slug === slug) : -1;

    return index === -1
      ? { atNewest: true, index: games.length - 1 }
      : { atNewest: false, index };
  });
  const [activeSlug, setActiveSlug] = useState<string | null>(
    () => games[opening.index]?.slug ?? null,
  );
  const [generationInView, setGenerationInView] = useState<number | null>(null);
  /*
   * A generation jumped to stays lit while the shelf scrolls there and after,
   * until the reader scrolls on their own: the marks never run through the
   * generations in between, and the newest stays lit though the shelf can't
   * bring its first game to the left.
   */
  const [jumpedGeneration, setJumpedGeneration] = useState<number | null>(null);
  const markedGeneration = jumpedGeneration ?? generationInView;
  const letReaderLead = () => setJumpedGeneration(null);
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
   * generation, else the newest games (v3). Every cover holds its box's shape
   * before its art loads, so the place is set once, before the first paint.
   */
  useLayoutEffect(() => {
    const shelf = shelfRef.current;
    const openingSlug = games[opening.index]?.slug;

    if (!shelf) {
      return;
    }

    if (opening.atNewest || !openingSlug) {
      shelf.scrollLeft = shelf.scrollWidth;
    } else if (pickedGame?.slug === openingSlug) {
      const pickedCover = getCover(openingSlug);

      if (pickedCover) {
        shelf.scrollLeft =
          pickedCover.offsetLeft -
          (shelf.clientWidth - pickedCover.offsetWidth) / 2;
      }
    } else {
      scrollToCover(openingSlug, "auto");
    }

    readGenerationInView();
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
    const resizeObserver = new ResizeObserver(onScroll);

    resizeObserver.observe(shelf);
    shelf.addEventListener("scroll", onScroll, { passive: true });

    return () => {
      cancelAnimationFrame(frame);
      resizeObserver.disconnect();
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
      behavior: getScrollBehavior(),
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
      letReaderLead();

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

  const jumpToGeneration = (generationNumber: string) => {
    const game = firstGameOfGeneration.get(Number(generationNumber));

    if (!game) {
      return;
    }

    // Tabbing into the shelf next lands on this generation's first game.
    setActiveSlug(game.slug);
    setJumpedGeneration(game.generation.number);
    scrollToCover(game.slug, getScrollBehavior());
  };

  /* A new jump request moves the tab stop at once; the effect scrolls there. */
  const jumpKey = jumpTo?.key;
  const jumpGame =
    jumpTo === undefined
      ? undefined
      : firstGameOfGeneration.get(jumpTo.generation);
  const [handledJumpKey, setHandledJumpKey] = useState(jumpKey);

  if (jumpKey !== handledJumpKey) {
    setHandledJumpKey(jumpKey);

    if (jumpGame) {
      setActiveSlug(jumpGame.slug);
      setJumpedGeneration(jumpGame.generation.number);
    }
  }

  useEffect(() => {
    if (jumpKey !== undefined && jumpGame) {
      scrollToCover(jumpGame.slug, getScrollBehavior());
    }
    // Only a new request jumps; the reader's own scrolling is left alone.
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [jumpKey]);

  /* On a narrow screen the marks scroll too: the lit one comes into view. */
  useEffect(() => {
    const row = marksRef.current;
    const mark = row?.querySelector<HTMLElement>("[aria-current]");

    if (!row || !mark) {
      return;
    }

    const rowBox = row.getBoundingClientRect();
    const markBox = mark.getBoundingClientRect();
    const gutter = MARKS_GUTTER;
    const left =
      markBox.left < rowBox.left + gutter
        ? markBox.left - rowBox.left - gutter
        : markBox.right > rowBox.right - gutter
          ? markBox.right - rowBox.right + gutter
          : 0;

    if (left) {
      row.scrollBy({ behavior: getScrollBehavior(), left });
    }
  }, [markedGeneration]);

  const generationOptions = Array.from(firstGameOfGeneration.values()).map(
    (game) => ({
      current: game.generation.number === markedGeneration,
      label: game.generation.numeral,
      value: String(game.generation.number),
    }),
  );
  return (
    <div
      data-slot="game-shelf-picker"
      className={cn("flex min-w-0 flex-col", className)}
    >
      <Carousel
        ref={shelfRef}
        role="listbox"
        aria-label={ariaLabel}
        aria-orientation="horizontal"
        onKeyDown={onShelfKeyDown}
        earlierLabel="Earlier games"
        laterLabel="Later games"
        onPage={letReaderLead}
        onWheel={letReaderLead}
        onTouchMove={letReaderLead}
        fadeEdges
        initialEdges={{
          canScrollEnd: !opening.atNewest && opening.index < games.length - 1,
          canScrollStart: opening.index > 0,
        }}
      >
        {games.map((game, index) => {
          const isPicked = game.slug === value;

          return (
            <IconTip
              key={game.slug}
              label={game.name}
              trigger={
                <div
                  role="option"
                  aria-selected={isPicked}
                  aria-label={`${game.name}, ${game.releaseYear}`}
                  data-game-slug={game.slug}
                  tabIndex={game.slug === tabStopSlug ? 0 : -1}
                  onClick={() => pick(game.slug)}
                  onFocus={() => setActiveSlug(game.slug)}
                  className={cn(
                    "group/cover ease-hop relative shrink-0 cursor-pointer rounded-sm transition-transform duration-250",
                    isPicked
                      ? "-translate-y-5"
                      : "motion-safe:hover:-translate-y-3 motion-safe:hover:-rotate-3",
                  )}
                >
                  <GameCover
                    alt=""
                    coverImageUrl={game.coverImageUrl}
                    eager={Math.abs(index - opening.index) <= EAGER_COVER_REACH}
                    gameName={game.name}
                    gameSlug={game.slug}
                    shape={game.coverShape}
                    size={coverSize === "lg" ? "pickerLarge" : "picker"}
                  />
                  {isPicked ? <PickedMark /> : null}
                </div>
              }
            />
          );
        })}
      </Carousel>

      {/* Room above and below, so the scrolling row never cuts the lit mark's band. */}
      <div
        ref={marksRef}
        className="no-scrollbar flex items-center justify-center-safe gap-2 overflow-x-auto px-4.5 py-2"
      >
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
          selectedTone="strong"
          size="sm"
          value={null}
        />
      </div>
    </div>
  );
};
