import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { cn } from "@/shared/utils/cn";

export const comparisonFieldGridClassName =
  "grid-cols-[4.75rem_minmax(0,1fr)_1.5rem_minmax(0,1fr)]";

export const formatComparisonValue = (value: string | null) => {
  if (!value) return "Not recorded";
  if (value === "male") return "Male";
  if (value === "female") return "Female";
  if (value === "genderless") return "Genderless";
  return value;
};

export const TeamPlanComparisonFieldHeader = () => {
  return (
    <div
      className={cn(
        "text-muted-foreground grid gap-2 py-2 text-[0.625rem] font-medium uppercase",
        comparisonFieldGridClassName,
      )}
      aria-hidden
    >
      <span />
      <span className="text-center">Planned</span>
      <span />
      <span className="text-center">Tracked</span>
    </div>
  );
};

export const TeamPlanComparisonResult = ({
  description,
  matches,
}: {
  description: string;
  matches: boolean | null;
}) => {
  const icon =
    matches === null
      ? appIcons.product.uncaught
      : matches
        ? appIcons.status.active
        : appIcons.status.warning;

  return (
    <ExplanatoryTip
      content={description}
      contentClassName="max-w-64 text-center"
      trigger={
        <button
          type="button"
          className={cn(
            "focus-visible:ring-ring/40 flex size-5 items-center justify-center rounded-full border outline-none focus-visible:ring-2",
            matches === null
              ? "border-muted-foreground/25 text-muted-foreground"
              : matches
                ? "border-ok-line bg-ok-soft text-ok"
                : "border-warn/50 bg-warn-soft text-warn-ink",
          )}
          aria-label={description}
        />
      }
    >
      <AppIcon icon={icon} size="xs" aria-hidden />
    </ExplanatoryTip>
  );
};
