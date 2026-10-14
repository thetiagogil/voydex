"use client";

import { useState } from "react";

import type { StatsModel } from "@/modules/mainline/features/stats/data/stats-model";
import {
  formatHoursAndMinutes,
  joinStatsList,
} from "@/modules/mainline/features/stats/utils/stats-format";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SectionHead } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";

type StatsTimeSectionProps = {
  stats: StatsModel;
};

const shownByDefault = 5;

/*
 * Where your time went: one row per Play with playtime, the bars on one
 * scale. Plays without playtime are named under the list, not counted.
 */
export const StatsTimeSection = ({ stats }: StatsTimeSectionProps) => {
  const [showAll, setShowAll] = useState(false);
  const rows = showAll ? stats.time : stats.time.slice(0, shownByDefault);
  const hidden = stats.time.slice(shownByDefault);
  const longest = stats.time[0]?.minutes ?? 1;
  const untracked = stats.untrackedPlayLabels;

  return (
    <section aria-labelledby="stats-time" className="flex flex-col gap-4">
      <SectionHead
        title="Where your time went"
        titleId="stats-time"
        aside={
          stats.time.length
            ? `${formatHoursAndMinutes(stats.minutes)} across ${stats.time.length} ${stats.time.length === 1 ? "Play" : "Plays"}`
            : "No playtime recorded yet"
        }
      />
      <Card className="gap-0 px-4 py-3 sm:px-6 sm:py-4">
        {stats.time.length ? (
          <ul className="grid">
            {rows.map((row) => (
              <li
                key={row.playId}
                style={getGameColourStyle(row.gameSlug)}
                className="game-scope grid grid-cols-[34px_minmax(0,1fr)_auto] items-center gap-x-3 gap-y-1.5 py-2.5 sm:grid-cols-[34px_minmax(0,14rem)_minmax(0,1fr)_5.5rem_3rem]"
              >
                <GameCover
                  alt=""
                  coverImageUrl={row.coverImageUrl}
                  gameName={row.gameName}
                  gameSlug={row.gameSlug ?? undefined}
                  size="dock"
                />
                <b className="text-ink text-14 truncate font-extrabold">
                  {row.label}
                </b>
                <span className="text-ink text-14 text-right font-extrabold tabular-nums sm:order-last sm:hidden">
                  {formatHoursAndMinutes(row.minutes)}
                </span>
                <span
                  aria-hidden
                  className="bg-track col-span-3 col-start-1 h-2.5 overflow-hidden rounded-full sm:col-span-1 sm:col-start-auto"
                >
                  <span
                    className="bg-game block h-full rounded-full"
                    style={{
                      width: `${Math.max(4, (row.minutes / longest) * 100)}%`,
                    }}
                  />
                </span>
                <span className="text-ink text-14 hidden text-right font-extrabold tabular-nums sm:block">
                  {formatHoursAndMinutes(row.minutes)}
                </span>
                <span className="text-ink-3 text-13 hidden text-right font-bold tabular-nums sm:block">
                  {row.share}%
                </span>
              </li>
            ))}
          </ul>
        ) : (
          <p className="text-ink-2 text-14 py-2 font-semibold">
            Add playtime in a Play&apos;s settings and this shows where your
            hours go. It&apos;s optional. Everything else here works without it.
          </p>
        )}

        {hidden.length ? (
          <button
            type="button"
            aria-expanded={showAll}
            onClick={() => setShowAll((current) => !current)}
            className="text-link text-14 focus-visible:outline-focus mt-1 inline-flex min-h-10 items-center gap-1.5 self-start rounded-xs font-extrabold outline-none focus-visible:outline-3 focus-visible:outline-solid"
          >
            <AppIcon
              icon={showAll ? appIcons.actions.expand : appIcons.actions.create}
              size="sm"
              className={showAll ? "rotate-180" : undefined}
            />
            {showAll
              ? "Show fewer"
              : `And ${hidden.length} more ${hidden.length === 1 ? "Play" : "Plays"} · ${formatHoursAndMinutes(hidden.reduce((total, row) => total + row.minutes, 0))}`}
          </button>
        ) : null}

        {stats.time.length && untracked.length ? (
          <p className="text-ink-2 text-13 mt-2 pt-3 font-semibold">
            {untracked.length > 3
              ? `${untracked.length} Plays have no playtime recorded, so they aren't counted.`
              : `${joinStatsList(untracked, "and")} ${untracked.length === 1 ? "has" : "have"} no playtime recorded, so ${untracked.length === 1 ? "it isn't" : "they aren't"} counted.`}
          </p>
        ) : null}
      </Card>
    </section>
  );
};
