import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type PageLoadingStateProps = {
  className?: string;
  label?: string;
};

export const PageLoadingState = ({
  className,
  label = "Loading",
}: PageLoadingStateProps) => {
  return (
    <div className={cn("flex items-center justify-center", className)}>
      <Spinner aria-label={label} className="text-primary size-6" />
    </div>
  );
};
