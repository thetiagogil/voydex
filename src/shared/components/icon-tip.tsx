"use client";

import type { ReactElement } from "react";

import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

/*
 * An icon-only action naming itself on hover and focus. The trigger keeps
 * its own `aria-label`; the tip only shows that name to sighted users.
 */
export const IconTip = ({
  label,
  trigger,
}: {
  label: string;
  trigger: ReactElement;
}) => (
  <Tooltip>
    <TooltipTrigger render={trigger} />
    <TooltipContent>{label}</TooltipContent>
  </Tooltip>
);
