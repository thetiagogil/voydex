"use client";

import type { ReactElement } from "react";

import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

/*
 * A hover and focus label for any element: an icon-only action naming
 * itself, or a picture, mark or chip saying more. Never the browser's `title`
 * attribute. The trigger keeps its own accessible name (an `aria-label` or
 * hidden text); the tip only shows the label to sighted users.
 */
export const IconTip = ({
  label,
  trigger,
}: {
  /* Without a label there is no tip, only the trigger. */
  label: string | null | undefined;
  trigger: ReactElement;
}) =>
  label ? (
    <Tooltip>
      <TooltipTrigger render={trigger} />
      <TooltipContent>{label}</TooltipContent>
    </Tooltip>
  ) : (
    trigger
  );
