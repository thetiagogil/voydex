"use client";

import type { ReactNode } from "react";

import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

/*
 * A field that shows what its picked value is on hover, such as an ability's
 * effect. The wrapper is always there, switched off without `info`, so the
 * field inside never remounts (and keeps its focus) as a pick gains or loses
 * one. Pair it with the field's `aria-description` for screen readers.
 */
export const HoverInfo = ({
  children,
  info,
}: {
  children: ReactNode;
  info: string | null | undefined;
}) => (
  <Tooltip disabled={!info}>
    <TooltipTrigger render={<div className="min-w-0" />}>
      {children}
    </TooltipTrigger>
    {info ? <TooltipContent className="max-w-72">{info}</TooltipContent> : null}
  </Tooltip>
);
