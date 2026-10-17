import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type PageLoadingStateProps = {
  className?: string;
  label?: string;
};

/* The shell stays; one spinner in the content region while a page loads. */
export const PageLoadingState = ({
  className,
  label = "Loading",
}: PageLoadingStateProps) => {
  return (
    <div
      className={cn(
        "flex min-h-60 flex-1 items-center justify-center",
        className,
      )}
    >
      <Spinner aria-label={label} className="text-action size-7" />
    </div>
  );
};
