import { PendingData } from "@/shared/components/pending-data";
import { cn } from "@/shared/utils/cn";

type CodexPendingValueProps = {
  className?: string;
  /*
   * What would stand here, such as "Height", where nothing else names it.
   * Without it the marker reads "Not in Voydex yet", for a value its own
   * label already names.
   */
  label?: string;
};

/*
 * One value the Codex doesn't have yet, in line with the text around it: the
 * inline pending marker, named for what it stands for when the text around
 * it doesn't, and read out as not in Voydex yet. Each use carries the
 * `TODO(v3-data)` for what it waits on.
 */
export const CodexPendingValue = ({
  className,
  label,
}: CodexPendingValueProps) => {
  return (
    <span className="inline-flex align-middle">
      <PendingData
        variant="inline"
        label={label}
        className={cn("h-6", className)}
      />
      {label ? <span className="sr-only">, not in Voydex yet</span> : null}
    </span>
  );
};
