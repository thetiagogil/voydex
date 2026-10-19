import { Medallion } from "@/modules/mainline/features/plays/shared/components/medallion";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/*
 * Where the Play began (v3 `.hstart`): a boundary, not a record, so it has no
 * card of its own. Only its medallion and kicker wear the accent. It
 * closes Overview's recent moments and the full Team history.
 */
export const PlayStartRow = ({
  className,
  startedOn,
}: {
  /* Padding that lines its medallion up with the rows around it. */
  className?: string;
  startedOn: string | null;
}) => {
  const startedOnLabel = formatPlayDate(startedOn, "");

  return (
    <div className={cn("flex min-w-0 items-center gap-4 py-4.5", className)}>
      <Medallion content={{ icon: appIcons.milestones.story, kind: "start" }} />
      <div className="grid min-w-0 gap-0.5">
        <p className="text-action-ink text-13 font-bold">
          {startedOnLabel ? `Play started · ${startedOnLabel}` : "Play started"}
        </p>
        <h3 className="title-card">The journey began</h3>
      </div>
    </div>
  );
};
