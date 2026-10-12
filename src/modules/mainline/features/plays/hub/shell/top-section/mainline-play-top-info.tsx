import {
  formatPlayDate,
  formatPlayMinutes,
} from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { getPlayStatusBadgeTone } from "@/modules/mainline/features/plays/shared/utils/play-status-display";
import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { StatusBadge } from "@/shared/components/status-badge";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { Badge } from "@/shared/components/ui/badge";
import { Separator } from "@/shared/components/ui/separator";

type MainlinePlayTopInfoProps = {
  data: MainlinePlayShellData;
  titleId: string;
};

type MainlinePlayMetadataProps = {
  data: MainlinePlayShellData;
};

type MainlinePlayTimelineItemProps = {
  icon: AppIconComponent;
  label: string;
  value: string;
};

const getPlayTitle = (data: MainlinePlayShellData) => {
  return data.play.play_name ?? `${data.play.game_name ?? "Untitled"} Play`;
};

const getPlayMetadata = (data: MainlinePlayShellData) => {
  return [
    data.play.game_name,
    data.region ? `${data.region.name} Region` : null,
    data.play.generation_name,
  ].filter(Boolean);
};

const MainlinePlayMetadata = ({ data }: MainlinePlayMetadataProps) => {
  const metadata = getPlayMetadata(data);

  return (
    <div className="flex flex-wrap items-center gap-2">
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

      {metadata.map((item) => (
        <Badge key={item} variant="outline" className="h-6 rounded-md px-2">
          {item}
        </Badge>
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
    <dl className="text-muted-foreground text-xs">
      <dt className="sr-only">{label}</dt>
      <dd className="flex items-center gap-1.5">
        <AppIcon icon={icon} size="sm" aria-hidden />
        {value}
      </dd>
    </dl>
  );
};

const MainlinePlayRules = ({ data }: { data: MainlinePlayShellData }) => {
  if (!data.rules.length) {
    return null;
  }

  const ruleSummary = data.rules.map((rule) => rule.name).join(" · ");

  return (
    <Tooltip>
      <TooltipTrigger
        render={
          <button
            type="button"
            className="text-muted-foreground hover:text-foreground focus-visible:ring-ring/35 flex min-w-0 items-center gap-1.5 rounded-sm text-left text-xs outline-none focus-visible:ring-2"
            aria-label={`Challenge rules: ${ruleSummary}`}
          />
        }
      >
        <AppIcon icon={appIcons.product.details} size="sm" aria-hidden />
        <span className="max-w-72 truncate">{ruleSummary}</span>
      </TooltipTrigger>
      <TooltipContent
        side="bottom"
        align="start"
        className="grid max-w-sm gap-2 px-3 py-2.5"
      >
        <p className="font-semibold">Challenge rules</p>
        <ul className="grid gap-2">
          {data.rules.map((rule) => (
            <li key={rule.id} className="grid gap-0.5">
              <span className="font-medium">{rule.name}</span>
              {rule.description ? (
                <span className="text-background/75 leading-relaxed">
                  {rule.description}
                </span>
              ) : null}
            </li>
          ))}
        </ul>
      </TooltipContent>
    </Tooltip>
  );
};

const MainlinePlayFacts = ({ data }: { data: MainlinePlayShellData }) => {
  return (
    <div className="flex flex-wrap items-center gap-x-3 gap-y-2">
      <MainlinePlayTimelineItem
        icon={appIcons.account.user}
        label="Trainer"
        value={data.play.trainer_name ?? "Trainer not recorded"}
      />
      <Separator orientation="vertical" className="hidden h-4 sm:block" />
      <MainlinePlayTimelineItem
        icon={appIcons.product.playtime}
        label="Playtime"
        value={formatPlayMinutes(data.play.playtime_minutes)}
      />
      <Separator orientation="vertical" className="hidden h-4 sm:block" />
      <MainlinePlayTimelineItem
        icon={appIcons.product.date}
        label="Started"
        value={formatPlayDate(data.play.started_on, "Not started")}
      />
      {data.rules.length ? (
        <>
          <Separator orientation="vertical" className="hidden h-4 sm:block" />
          <dl className="min-w-0">
            <dt className="sr-only">Challenge rules</dt>
            <dd>
              <MainlinePlayRules data={data} />
            </dd>
          </dl>
        </>
      ) : null}
    </div>
  );
};

export const MainlinePlayTopInfo = ({
  data,
  titleId,
}: MainlinePlayTopInfoProps) => {
  const title = getPlayTitle(data);

  return (
    <div className="flex min-w-0 flex-col gap-3.5">
      <div className="flex min-w-0 flex-col gap-2">
        <h1
          id={titleId}
          className="text-primary min-w-0 font-display text-2xl leading-tight font-semibold tracking-tight sm:text-3xl lg:text-4xl"
        >
          {title}
        </h1>
        <MainlinePlayMetadata data={data} />
      </div>

      <MainlinePlayFacts data={data} />
    </div>
  );
};
