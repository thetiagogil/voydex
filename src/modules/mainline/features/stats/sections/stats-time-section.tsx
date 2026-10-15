"use client";

import Link from "next/link";
import { useRef, useState, type CSSProperties, type FocusEvent } from "react";

import { appRoutes } from "@/config/routes";
import type { StatsModel } from "@/modules/mainline/features/stats/data/stats-model";
import {
  formatWholeHours,
  joinStatsList,
} from "@/modules/mainline/features/stats/utils/stats-format";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SectionHead } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { cn } from "@/shared/utils/cn";

type StatsTimeSectionProps = {
  stats: StatsModel;
};

type TimeRow = StatsModel["time"][number];

/* The donut names the five Plays with the most time; the rest share a slice. */
const shownByDefault = 5;

const RADIUS = 42;
const CIRCUMFERENCE = 2 * Math.PI * RADIUS;
/* The gap between slices, along the ring. */
const SLICE_GAP = 1.6;

/*
 * Each Play's colour: its game's, lighter for a second or third Play of the
 * same game (v3), so two Scarlet Plays stay apart.
 */
const getRowColours = (rows: TimeRow[]) => {
  const seen = new Map<string, number>();

  return rows.map((row) => {
    const key = row.gameSlug ?? row.gameName;
    const repeat = seen.get(key) ?? 0;

    seen.set(key, repeat + 1);

    return {
      ...getGameColourStyle(row.gameSlug),
      "--slice":
        repeat === 0
          ? "var(--game)"
          : `color-mix(in oklab, var(--game) ${repeat === 1 ? 60 : 35}%, white)`,
    } as CSSProperties;
  });
};

/* Only a keyboard focus picks a Play out; a click or a returned focus doesn't. */
const isKeyboardFocus = (event: FocusEvent<HTMLElement>) =>
  event.currentTarget.matches(":focus-visible");

/* Faded while another Play (or the rest) is picked out. */
const getDimClassName = (activeKey: string | null, key: string) =>
  activeKey && activeKey !== key ? "opacity-40" : null;

/*
 * One Play's time as a small card that opens the Play: colour dot, cover,
 * name, hours and share. Hovering it picks out its slice.
 */
const TimeCard = ({
  activeKey,
  colour,
  onActiveChange,
  row,
}: {
  activeKey?: string | null;
  colour: CSSProperties;
  onActiveChange?: (key: string | null) => void;
  row: TimeRow;
}) => (
  <li style={colour} className="flex min-w-0">
    <Link
      href={appRoutes.mainlinePlay(row.playId)}
      onMouseEnter={() => onActiveChange?.(row.playId)}
      onMouseLeave={() => onActiveChange?.(null)}
      onFocus={(event) => {
        if (isKeyboardFocus(event)) onActiveChange?.(row.playId);
      }}
      onBlur={() => onActiveChange?.(null)}
      className={cn(
        "bg-surface-2 hover:bg-hover focus-visible:outline-focus flex w-full min-w-0 items-center gap-3 rounded-lg px-3 py-2.5 transition-opacity outline-none focus-visible:outline-3 focus-visible:outline-solid",
        getDimClassName(activeKey ?? null, row.playId),
      )}
    >
      <GameCover
        alt=""
        coverImageUrl={row.coverImageUrl}
        gameName={row.gameName}
        gameSlug={row.gameSlug ?? undefined}
        size="dock"
      />
      <span className="min-w-0 flex-1">
        <span className="text-ink text-14 block truncate font-extrabold">
          {row.playName}
        </span>
        <span className="text-ink-2 text-13 flex items-center gap-1.5 font-bold tabular-nums">
          <span
            aria-hidden
            className="size-2.5 shrink-0 rounded-full bg-(--slice)"
          />
          {formatWholeHours(row.minutes)} · {row.share}%
        </span>
      </span>
    </Link>
  </li>
);

/*
 * The time as one ring: a slice per Play in its game's colour, the rest as
 * one quiet slice, and the total in the middle. Hovering a slice picks out
 * its card (the rest's is See all) and fades the others.
 */
const TimeDonut = ({
  activeKey,
  colours,
  minutes,
  onActiveChange,
  otherMinutes,
  rows,
}: {
  activeKey: string | null;
  colours: CSSProperties[];
  minutes: number;
  onActiveChange: (key: string | null) => void;
  otherMinutes: number;
  rows: TimeRow[];
}) => {
  const total = Math.max(minutes, 1);
  const slices = [
    ...rows.map((row, index) => ({
      colour: colours[index],
      key: row.playId,
      minutes: row.minutes,
    })),
    ...(otherMinutes
      ? [
          {
            colour: { "--slice": "var(--mute)" } as CSSProperties,
            key: "other",
            minutes: otherMinutes,
          },
        ]
      : []),
  ];
  let start = 0;

  return (
    <div className="relative grid size-44 shrink-0 place-items-center sm:size-52">
      <svg
        viewBox="0 0 100 100"
        aria-hidden
        className="absolute inset-0 -rotate-90"
      >
        <circle
          cx="50"
          cy="50"
          r={RADIUS}
          fill="none"
          strokeWidth="13"
          className="stroke-track"
        />
        {slices.map((slice) => {
          const length = (slice.minutes / total) * CIRCUMFERENCE;
          const offset = start;

          start += length;

          return (
            <circle
              key={slice.key}
              cx="50"
              cy="50"
              r={RADIUS}
              fill="none"
              strokeWidth={activeKey === slice.key ? 16 : 13}
              style={slice.colour}
              onMouseEnter={() => onActiveChange(slice.key)}
              onMouseLeave={() => onActiveChange(null)}
              className={cn(
                "cursor-pointer stroke-(--slice) transition-[opacity,stroke-width]",
                getDimClassName(activeKey, slice.key),
              )}
              strokeDasharray={`${Math.max(length - SLICE_GAP, 0.5)} ${CIRCUMFERENCE}`}
              strokeDashoffset={-offset}
            />
          );
        })}
      </svg>
      <span className="relative flex flex-col items-center">
        <span className="font-display text-[30px] leading-none font-semibold tabular-nums sm:text-[34px]">
          {Math.round(minutes / 60)}
        </span>
        <span className="text-ink-2 text-13 font-bold">hours</span>
      </span>
    </div>
  );
};

/*
 * Where your time went: one ring with a slice per Play (the five with the
 * most time, then the rest together) beside a card for each, picked out
 * together on hover; a card opens its Play, and See all opens every Play's
 * card in a dialog. Plays without playtime are named under it,
 * not counted.
 */
export const StatsTimeSection = ({ stats }: StatsTimeSectionProps) => {
  const [isAllOpen, setIsAllOpen] = useState(false);
  /* The Play (or "other", the rest) picked out by hovering. */
  const [activeKey, setActiveKey] = useState<string | null>(null);
  /* Set briefly while the closed dialog returns focus to See all. */
  const returningFocus = useRef(false);
  const colours = getRowColours(stats.time);
  const rows = stats.time.slice(0, shownByDefault);
  const hidden = stats.time.slice(shownByDefault);
  const otherMinutes = hidden.reduce((total, row) => total + row.minutes, 0);
  const untracked = stats.untrackedPlayLabels;
  const hours = Math.round(stats.minutes / 60);

  return (
    <section aria-labelledby="stats-time" className="flex flex-col gap-4">
      <SectionHead
        title="Where your time went"
        titleId="stats-time"
        aside={stats.time.length ? undefined : "No playtime recorded yet"}
      />
      <Card className="gap-4 px-5 py-5 sm:px-6">
        {stats.time.length ? (
          <div className="flex flex-col items-center gap-5 md:flex-row md:items-center md:gap-8">
            <TimeDonut
              activeKey={activeKey}
              colours={colours}
              minutes={stats.minutes}
              onActiveChange={setActiveKey}
              otherMinutes={otherMinutes}
              rows={rows}
            />
            <ul className="grid w-full min-w-0 flex-1 gap-2 sm:grid-cols-2">
              {rows.map((row, index) => (
                <TimeCard
                  key={row.playId}
                  activeKey={activeKey}
                  colour={colours[index]!}
                  onActiveChange={setActiveKey}
                  row={row}
                />
              ))}
              {hidden.length ? (
                <li className="flex min-w-0">
                  <button
                    type="button"
                    onClick={() => {
                      setActiveKey(null);
                      setIsAllOpen(true);
                    }}
                    onMouseEnter={() => setActiveKey("other")}
                    onMouseLeave={() => setActiveKey(null)}
                    onFocus={(event) => {
                      /* Not when the closing dialog hands focus back. */
                      if (isKeyboardFocus(event) && !returningFocus.current) {
                        setActiveKey("other");
                      }
                    }}
                    onBlur={() => setActiveKey(null)}
                    className={cn(
                      "bg-surface-2 hover:bg-hover focus-visible:outline-focus flex w-full min-w-0 items-center gap-3 rounded-lg px-3 py-2.5 text-left transition-opacity outline-none focus-visible:outline-3 focus-visible:outline-solid",
                      getDimClassName(activeKey, "other"),
                    )}
                  >
                    <span className="text-ink-2 grid h-10 w-[30px] shrink-0 place-items-center">
                      <AppIcon icon={appIcons.actions.next} size="md" />
                    </span>
                    <span className="min-w-0 flex-1">
                      <span className="text-link text-14 block truncate font-extrabold">
                        See all {stats.time.length} Plays
                      </span>
                      <span className="text-ink-2 text-13 flex items-center gap-1.5 font-bold tabular-nums">
                        <span
                          aria-hidden
                          className="bg-mute size-2.5 shrink-0 rounded-full"
                        />
                        {hidden.length} more · {formatWholeHours(otherMinutes)}
                      </span>
                    </span>
                  </button>
                </li>
              ) : null}
            </ul>
          </div>
        ) : (
          <p className="text-ink-2 text-14 font-semibold">
            Add playtime in a Play&apos;s settings and this shows where your
            hours go. It&apos;s optional. Everything else here works without it.
          </p>
        )}

        {stats.time.length && untracked.length ? (
          <p className="text-ink-2 text-13 font-semibold">
            {untracked.length > 3
              ? `${untracked.length} Plays have no playtime recorded, so they aren't counted.`
              : `${joinStatsList(untracked, "and")} ${untracked.length === 1 ? "has" : "have"} no playtime recorded, so ${untracked.length === 1 ? "it isn't" : "they aren't"} counted.`}
          </p>
        ) : null}
      </Card>

      <Dialog
        open={isAllOpen}
        onOpenChange={(open) => {
          setIsAllOpen(open);
          if (open) return;
          setActiveKey(null);
          returningFocus.current = true;
          window.setTimeout(() => {
            returningFocus.current = false;
          }, 400);
        }}
      >
        <DialogContent className="flex max-h-[85dvh] flex-col gap-0 overflow-hidden p-0 sm:max-w-2xl">
          <DialogHeader className="border-line shrink-0 border-b px-6 pt-6 pr-16 pb-4">
            <DialogTitle>Where your time went</DialogTitle>
            <DialogDescription>
              {hours} hours across {stats.time.length} Plays, most first
            </DialogDescription>
          </DialogHeader>
          <ul className="grid min-h-0 flex-1 gap-2 overflow-y-auto overscroll-contain px-6 py-5 sm:grid-cols-2">
            {stats.time.map((row, index) => (
              <TimeCard key={row.playId} colour={colours[index]!} row={row} />
            ))}
          </ul>
        </DialogContent>
      </Dialog>
    </section>
  );
};
