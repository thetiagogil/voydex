import {
  formatPlayDate,
  formatPlayMinutes,
  formatPlayPokedexProgress,
  formatPlayTeamSummary,
} from "@/modules/mainline/features/plays/shared/display/play-formatters";
import { getPlayStatusBadgeTone } from "@/modules/mainline/features/plays/shared/display/play-status-display";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/shared/types";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { StatusBadge } from "@/shared/components/status-badge";
import { Badge } from "@/shared/components/ui/badge";

type MainlinePlayTopInfoProps = {
  data: MainlinePlayPageData;
  titleId: string;
};

type MainlinePlayMetadataProps = {
  data: MainlinePlayPageData;
};

type MainlinePlayTimelineItemProps = {
  icon: AppIconComponent;
  label: string;
  value: string;
};

type MainlinePlayQuickInfoItem = {
  icon: AppIconComponent;
  key: string;
  label: string;
};

const getPlayTitle = (data: MainlinePlayPageData) => {
  return data.play.play_name ?? `${data.play.game_name ?? "Untitled"} Play`;
};

const getPlayMetadata = (data: MainlinePlayPageData) => {
  return [
    data.play.game_name,
    data.region ? `${data.region.name} Region` : null,
    data.play.generation_name,
  ].filter(Boolean);
};

const getPlayQuickInfo = (
  data: MainlinePlayPageData,
): MainlinePlayQuickInfoItem[] => {
  if (data.rules.length) {
    return data.rules.map((rule) => ({
      icon: appIcons.product.details,
      key: rule.id,
      label: rule.name,
    }));
  }

  return [
    {
      icon: appIcons.product.pokedex,
      key: "pokedex",
      label: formatPlayPokedexProgress({
        caughtCount: data.play.pokedex_caught_count,
        seenCount: data.play.pokedex_seen_count,
      }),
    },
    {
      icon: appIcons.product.team,
      key: "team",
      label: formatPlayTeamSummary({
        activeCount: data.play.active_team_count,
        reserveCount: data.play.reserve_team_count,
      }),
    },
  ];
};

const MainlinePlayMetadata = ({ data }: MainlinePlayMetadataProps) => {
  const metadata = getPlayMetadata(data);

  return (
    <div className="text-muted-foreground flex flex-wrap items-center gap-x-2 gap-y-1 text-xs">
      {data.play.status_name ? (
        <StatusBadge
          tone={getPlayStatusBadgeTone(
            data.play.status_slug,
            data.play.status_name,
          )}
          className="h-6 rounded-md px-2"
        >
          {data.play.status_name}
        </StatusBadge>
      ) : null}

      {metadata.map((item, index) => (
        <span key={item} className="flex items-center gap-2">
          {index ? <span aria-hidden>•</span> : null}
          <span>{item}</span>
        </span>
      ))}
    </div>
  );
};

const MainlinePlayTimelineItem = ({
  icon,
  label,
  value,
}: MainlinePlayTimelineItemProps) => {
  return (
    <div className="text-muted-foreground flex items-center gap-1.5 text-xs">
      <AppIcon icon={icon} size="sm" aria-hidden />
      <dt className="sr-only">{label}</dt>
      <dd>{value}</dd>
    </div>
  );
};

const MainlinePlayQuickInfo = ({ data }: { data: MainlinePlayPageData }) => {
  const quickInfo = getPlayQuickInfo(data);

  return (
    <div className="flex flex-wrap gap-2">
      {quickInfo.map((item) => (
        <Badge
          key={item.key}
          variant="outline"
          className="bg-background h-7 rounded-md px-2.5 text-xs"
        >
          <AppIcon icon={item.icon} inline="start" size="sm" aria-hidden />
          {item.label}
        </Badge>
      ))}
    </div>
  );
};

export const MainlinePlayTopInfo = ({
  data,
  titleId,
}: MainlinePlayTopInfoProps) => {
  const title = getPlayTitle(data);

  return (
    <div className="flex min-w-0 flex-col gap-3">
      <div className="flex min-w-0 flex-col gap-2">
        <h1
          id={titleId}
          className="text-foreground min-w-0 text-2xl leading-tight font-semibold tracking-normal sm:text-3xl"
        >
          {title}
        </h1>
        <MainlinePlayMetadata data={data} />
      </div>

      <dl className="flex flex-wrap gap-x-5 gap-y-2">
        <MainlinePlayTimelineItem
          icon={appIcons.product.playtime}
          label="Playtime"
          value={formatPlayMinutes(data.play.playtime_minutes)}
        />
        <MainlinePlayTimelineItem
          icon={appIcons.product.date}
          label="Started"
          value={formatPlayDate(data.play.started_on, "Not started")}
        />
      </dl>

      <MainlinePlayQuickInfo data={data} />
    </div>
  );
};
