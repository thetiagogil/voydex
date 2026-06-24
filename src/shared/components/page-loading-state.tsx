import { cn } from "@/lib/utils";
import { Spinner } from "@/shared/components/ui/spinner";

type PageLoadingStateProps = {
  className?: string;
  label?: string;
};

export const PageLoadingState = ({
  className,
  label = "Loading",
}: PageLoadingStateProps) => {
  return (
    <div
      className={cn(
        "flex min-h-[50vh] items-center justify-center p-6",
        className,
      )}
    >
      <Spinner aria-label={label} className="text-primary size-6" />
    </div>
  );
};
