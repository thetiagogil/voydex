import * as React from "react";

import { Input } from "@/shared/components/ui/input";
import { cn } from "@/lib/utils";

function InputGroup({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="input-group"
      className={cn(
        "border-input bg-background focus-within:ring-ring flex h-9 w-full min-w-0 items-center gap-2 rounded-lg border px-3 text-sm transition-colors focus-within:ring-2",
        "has-aria-invalid:border-destructive has-aria-invalid:ring-destructive/20",
        className,
      )}
      {...props}
    />
  );
}

function InputGroupAddon({
  className,
  ...props
}: React.ComponentProps<"span">) {
  return (
    <span
      data-slot="input-group-addon"
      className={cn(
        "text-muted-foreground flex shrink-0 items-center [&_svg]:size-4 [&_svg]:shrink-0",
        className,
      )}
      {...props}
    />
  );
}

function InputGroupInput({
  className,
  ...props
}: React.ComponentProps<typeof Input>) {
  return (
    <Input
      data-slot="input-group-input"
      className={cn(
        "h-auto flex-1 border-0 bg-transparent px-0 py-0 shadow-none focus-visible:ring-0",
        className,
      )}
      {...props}
    />
  );
}

export { InputGroup, InputGroupAddon, InputGroupInput };
