import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { PageHeader } from "@/shared/components/page-header";
import { cn } from "@/shared/utils/cn";

const readingClassName =
  "text-14 inline-flex h-10 items-center rounded-full px-3.5 font-extrabold whitespace-nowrap transition-colors sm:h-9";

/*
 * The reading switch on the right of the page head. Story matchups needs
 * encounter data the app doesn't have yet, so it shows as not available.
 */
const TeamAnalysisReadingSwitch = () => {
  return (
    <div
      role="group"
      aria-label="Reading"
      className="bg-surface-2 inline-flex max-w-full items-center gap-0.5 rounded-full p-1"
    >
      <button
        type="button"
        aria-pressed
        className={cn(readingClassName, "bg-select-soft text-select-ink")}
      >
        Overall
      </button>
      {/* aria-disabled, not disabled, so keyboard focus can reach the reason. */}
      <Tooltip>
        <TooltipTrigger
          render={
            <button
              type="button"
              aria-disabled
              aria-pressed={false}
              aria-label="Story matchups, not available yet"
              className={cn(readingClassName, "text-ink-3 cursor-not-allowed")}
            />
          }
        >
          Story matchups
        </TooltipTrigger>
        <TooltipContent side="bottom">Not available yet</TooltipContent>
      </Tooltip>
    </div>
  );
};

export const TeamAnalysisPageHead = ({
  description,
  showReadingSwitch = false,
}: {
  description: string;
  showReadingSwitch?: boolean;
}) => {
  return (
    <PageHeader
      headingLevel="h2"
      title="Team analysis"
      description={description}
      className="pt-0 sm:pt-0"
      action={showReadingSwitch ? <TeamAnalysisReadingSwitch /> : undefined}
    />
  );
};
