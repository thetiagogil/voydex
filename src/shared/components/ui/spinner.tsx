import { cn } from "@/shared/utils/cn";
import { Loader2Icon } from "lucide-react";

/* The one loading mark. It takes the colour of its text. */
const Spinner = ({ className, ...props }: React.ComponentProps<"svg">) => {
  return (
    <Loader2Icon
      data-slot="spinner"
      role="status"
      aria-label="Loading"
      className={cn("size-4 shrink-0 animate-spin", className)}
      {...props}
    />
  );
};

export { Spinner };
