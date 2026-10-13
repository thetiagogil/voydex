import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
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
    <div className="flex min-w-0 flex-wrap items-end gap-x-6 gap-y-4">
      <div className="min-w-0">
        <h2 className="text-28 leading-[1.05] tracking-[-0.02em] sm:text-[34px]">
          Team analysis
        </h2>
        <p className="text-ink-2 text-15 mt-1.5 font-semibold">{description}</p>
      </div>
      {showReadingSwitch ? (
        <div className="sm:ml-auto">
          <TeamAnalysisReadingSwitch />
        </div>
      ) : null}
    </div>
  );
};
