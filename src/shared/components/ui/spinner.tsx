import { cn } from "@/lib/utils/cn";
import { LoaderIcon } from "lucide-react";
const Spinner = ({ className, ...props }: React.ComponentProps<"svg">) => {
  return (
    <LoaderIcon
      role="status"
      aria-label="Loading"
      className={cn("size-4 animate-spin", className)}
      {...props}
    />
  );
};
export { Spinner };
