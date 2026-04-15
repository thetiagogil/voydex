import { cn } from "@/lib/utils/cn";
import { Spinner } from "@/shared/components/ui/spinner";

type LoadingProps = {
  label?: string;
  className?: string;
}

export const Loading = ({ label, className }: LoadingProps) => {
  return (
    <div
      className={cn(
        "flex flex-col items-center justify-center gap-3 py-12",
        className,
      )}
    >
      <Spinner className="size-6" />
      {label ? (
        <p className="text-muted-foreground text-sm">{label}</p>
      ) : null}
    </div>
  );
};
