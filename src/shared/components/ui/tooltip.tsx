"use client";

import { Tooltip as TooltipPrimitive } from "@base-ui/react/tooltip";
import { cn } from "@/shared/utils/cn";

/* How long a hover waits before a tip opens: brief, so passing over doesn't flash tips. */
export const tooltipDelay = 300;

const TooltipProvider = ({
  delay = tooltipDelay,
  ...props
}: TooltipPrimitive.Provider.Props) => {
  return (
    <TooltipPrimitive.Provider
      data-slot="tooltip-provider"
      delay={delay}
      {...props}
    />
  );
};

const Tooltip = ({ ...props }: TooltipPrimitive.Root.Props) => {
  return <TooltipPrimitive.Root data-slot="tooltip" {...props} />;
};

const TooltipTrigger = ({ ...props }: TooltipPrimitive.Trigger.Props) => {
  return <TooltipPrimitive.Trigger data-slot="tooltip-trigger" {...props} />;
};

/*
 * What a tip shows. `tag` is a bare name or a short reason: white with a thin
 * line. `card` holds a `TipCard` (tip-parts), which draws its own frame, so
 * the popup itself is bare.
 */
const TooltipContent = ({
  className,
  side = "top",
  sideOffset = 6,
  align = "center",
  alignOffset = 0,
  children,
  variant = "tag",
  ...props
}: TooltipPrimitive.Popup.Props &
  Pick<
    TooltipPrimitive.Positioner.Props,
    "align" | "alignOffset" | "side" | "sideOffset"
  > & { variant?: "card" | "tag" }) => {
  return (
    <TooltipPrimitive.Portal>
      <TooltipPrimitive.Positioner
        align={align}
        alignOffset={alignOffset}
        side={side}
        sideOffset={sideOffset}
        className="isolate z-50"
      >
        <TooltipPrimitive.Popup
          data-slot="tooltip-content"
          data-variant={variant}
          className={cn(
            "data-[side=bottom]:slide-in-from-top-2 data-[side=inline-end]:slide-in-from-left-2 data-[side=inline-start]:slide-in-from-right-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 data-[state=delayed-open]:animate-in data-[state=delayed-open]:fade-in-0 data-[state=delayed-open]:zoom-in-95 data-open:animate-in data-open:fade-in-0 data-open:zoom-in-95 data-closed:animate-out data-closed:fade-out-0 data-closed:zoom-out-95 z-50 w-fit max-w-[calc(100vw-2rem)] origin-(--transform-origin)",
            variant === "tag" && "tip-tag copy-label max-w-xs px-3 py-1.5",
            className,
          )}
          {...props}
        >
          {children}
        </TooltipPrimitive.Popup>
      </TooltipPrimitive.Positioner>
    </TooltipPrimitive.Portal>
  );
};

export { Tooltip, TooltipTrigger, TooltipContent, TooltipProvider };
