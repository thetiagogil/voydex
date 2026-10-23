"use client";

import { useState, type ReactNode } from "react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import {
  formatPlayDate,
  formatPlayMinutes,
} from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import {
  Popover,
  PopoverContent,
  PopoverTitle,
  PopoverTrigger,
} from "@/shared/components/ui/popover";
import { useIsMobile } from "@/shared/hooks/use-mobile";
import { cn } from "@/shared/utils/cn";
import { IconTip } from "@/shared/components/icon-tip";
import { TipNamed } from "@/shared/components/tip-parts";

type PlayDetailRow = {
  key: string;
  label: string;
  /* A list (rules, tags) wraps under its label instead of beside it. */
  stacked?: boolean;
  value: ReactNode;
};

/*
 * Rules and tags as small chips, so a long list wraps instead of piling up.
 * A chip with more to say (Level caps' cap) ends with an info icon and its tip.
 */
const PlayDetailChips = ({
  items,
  label,
}: {
  items: { id: string; name: string; tip?: ReactNode; title?: string }[];
  label: string;
}) => (
  <ul aria-label={label} className="flex flex-wrap gap-1.5">
    {items.map((item) => (
      <li key={item.id}>
        <IconTip
          label={item.title}
          trigger={
            <Badge
              size="md"
              className={cn(
                "whitespace-normal",
                /* The tip's hit area reaches past the chip's edge. */
                item.tip && "overflow-visible pr-1.5",
              )}
            >
              {item.name}
              {item.tip ? (
                <ExplanatoryTip
                  content={<TipNamed name={item.name}>{item.tip}</TipNamed>}
                  triggerLabel={`About ${item.name}`}
                  triggerVariant="icon"
                />
              ) : null}
            </Badge>
          }
        />
      </li>
    ))}
  </ul>
);

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
          stacked: true,
          value: (
            <PlayDetailChips
              label="Rules"
              items={data.rules.map((rule) => ({
                id: rule.id,
                name: rule.label,
                tip: data.ruleNotes[rule.id],
                title: rule.description ?? undefined,
              }))}
            />
          ),
        }
      : null,
    data.tags?.length
      ? {
          key: "tags",
          label: "Tags",
          stacked: true,
          value: (
            <PlayDetailChips
              label="Tags"
              items={data.tags.map((tag, index) => ({
                id: `${index}:${tag}`,
                name: tag,
              }))}
            />
          ),
        }
      : null,
  ];

  return rows.filter((row) => row !== null);
};

/* v3 `.pd-rows`: one fact per row. */
const PlayDetailRows = ({ rows }: { rows: PlayDetailRow[] }) => (
  <dl className="grid">
    {rows.map((row) =>
      row.stacked ? (
        <div key={row.key} className="grid gap-2 px-0.5 py-2.5">
          <dt className="text-ink-2 text-13 font-bold">{row.label}</dt>
          <dd className="min-w-0">{row.value}</dd>
        </div>
      ) : (
        <div key={row.key} className="flex justify-between gap-4 px-0.5 py-2.5">
          <dt className="text-ink-2 text-13 shrink-0 font-bold">{row.label}</dt>
          <dd className="text-ink text-14 min-w-0 text-right font-extrabold">
            {row.value}
          </dd>
        </div>
      ),
    )}
  </dl>
);

/* v3 `.pd-acts`: the way on to the Play's settings, under its facts. */
const PlaySettingsLink = ({
  onNavigate,
  playId,
}: {
  onNavigate: () => void;
  playId: string;
}) => (
  <div className="mt-1 pt-3">
    <Button
      variant="secondary"
      size="sm"
      nativeButton={false}
      render={
        <Link
          href={appRoutes.mainlinePlaySettings(playId)}
          onClick={onNavigate}
        />
      }
    >
      <AppIcon icon={appIcons.actions.settings} inline="start" />
      Play settings
    </Button>
  </div>
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
  const settingsLink = data.play.play_id ? (
    <PlaySettingsLink
      onNavigate={() => setIsOpen(false)}
      playId={data.play.play_id}
    />
  ) : null;
  const trigger = (
    <Button
      type="button"
      variant="tint"
      size="sm"
      aria-label="Play details"
      className="max-sm:size-12 max-sm:rounded-full max-sm:p-0"
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
        {settingsLink}
      </BottomSheet>
    );
  }

  return (
    <Popover open={isOpen} onOpenChange={setIsOpen}>
      <PopoverTrigger render={trigger} />
      <PopoverContent align="end" sideOffset={8} className="w-80 px-4 py-3.5">
        <PopoverTitle className="sr-only">Play details</PopoverTitle>
        <PlayDetailRows rows={rows} />
        {settingsLink}
      </PopoverContent>
    </Popover>
  );
};
