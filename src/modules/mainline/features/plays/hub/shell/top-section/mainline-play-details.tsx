"use client";

import { useState, type ReactNode } from "react";

import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import {
  formatPlayDate,
  formatPlayMinutes,
} from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { Button } from "@/shared/components/ui/button";
import {
  Popover,
  PopoverContent,
  PopoverTitle,
  PopoverTrigger,
} from "@/shared/components/ui/popover";
import { useIsMobile } from "@/shared/hooks/use-mobile";

type PlayDetailRow = { key: string; label: string; value: ReactNode };

/*
 * What a Play records but its header has no room for. A category with
 * nothing recorded is left out.
 */
const getPlayDetailRows = (data: MainlinePlayShellData): PlayDetailRow[] => {
  const { play } = data;
  const rows: (PlayDetailRow | null)[] = [
    {
      key: "started",
      label: "Started",
      value: formatPlayDate(play.started_on, "Not recorded"),
    },
    {
      key: "updated",
      label: "Last updated",
      value: (
        <PlayMomentTime
          value={play.updated_at}
          format="date"
          fallback="Not recorded"
        />
      ),
    },
    play.playtime_minutes
      ? {
          key: "playtime",
          label: "Playtime",
          value: (
            <span className="tabular-nums">
              {formatPlayMinutes(play.playtime_minutes)}
            </span>
          ),
        }
      : null,
    data.rules.length
      ? {
          key: "rules",
          label: "Rules",
          value: (
            <ul className="grid gap-1.5">
              {data.rules.map((rule) => (
                <li key={rule.id}>
                  {rule.name}
                  {rule.description ? (
                    <span className="text-ink-2 text-13 block font-semibold">
                      {rule.description}
                    </span>
                  ) : null}
                </li>
              ))}
            </ul>
          ),
        }
      : null,
    data.tags?.length
      ? { key: "tags", label: "Tags", value: data.tags.join(" · ") }
      : null,
  ];

  return rows.filter((row) => row !== null);
};

/* v3 `.pd-rows`: one fact per row between hairlines. */
const PlayDetailRows = ({ rows }: { rows: PlayDetailRow[] }) => (
  <dl className="grid">
    {rows.map((row) => (
      <div
        key={row.key}
        className="border-line flex justify-between gap-4 border-b px-0.5 py-2.5 last:border-b-0"
      >
        <dt className="text-ink-2 text-13 shrink-0 font-bold">{row.label}</dt>
        <dd className="text-ink text-14 min-w-0 text-right font-extrabold">
          {row.value}
        </dd>
      </div>
    ))}
  </dl>
);

/*
 * The header's Play details button (v3 `.ph-aside`): a flyout under it on
 * wide screens, a bottom sheet on phones, where it shrinks to a round "i" in
 * the header's corner.
 */
export const MainlinePlayDetails = ({
  data,
}: {
  data: MainlinePlayShellData;
}) => {
  const isMobile = useIsMobile();
  const [isOpen, setIsOpen] = useState(false);
  const rows = getPlayDetailRows(data);
  const trigger = (
    <Button
      type="button"
      variant="outline"
      size="sm"
      aria-label="Play details"
      className="max-sm:size-11 max-sm:rounded-full max-sm:p-0"
    >
      <AppIcon icon={appIcons.status.info} className="sm:hidden" />
      <span className="max-sm:hidden">Play details</span>
      <AppIcon
        icon={appIcons.actions.expand}
        inline="end"
        className="max-sm:hidden"
      />
    </Button>
  );

  if (isMobile) {
    return (
      <BottomSheet
        open={isOpen}
        onOpenChange={setIsOpen}
        title="Play details"
        trigger={trigger}
      >
        <PlayDetailRows rows={rows} />
      </BottomSheet>
    );
  }

  return (
    <Popover open={isOpen} onOpenChange={setIsOpen}>
      <PopoverTrigger render={trigger} />
      <PopoverContent align="end" sideOffset={8} className="w-80 px-4 py-3.5">
        <PopoverTitle className="sr-only">Play details</PopoverTitle>
        <PlayDetailRows rows={rows} />
      </PopoverContent>
    </Popover>
  );
};
