"use client";

import type { ReactNode } from "react";

import { TipNamed } from "@/shared/components/tip-parts";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

/*
 * A field that shows what its picked value is on hover, such as an ability's
 * effect: the same card its list's "i" opens, the value's `name` over what it
 * does, or a `card` of the caller's (a move's). The wrapper is always there,
 * switched off without either, so the field inside never remounts (and keeps
 * its focus) as a pick gains or loses one. Pair it with the field's
 * `aria-description` for screen readers.
 */
export const HoverInfo = ({
  card,
  children,
  info,
  name,
}: {
  /* A whole card in place of the name and words. */
  card?: ReactNode;
  children: ReactNode;
  info?: string | null;
  /* The picked value's name, the card's head. */
  name?: string | null;
}) => {
  const content =
    card ?? (info && name ? <TipNamed name={name}>{info}</TipNamed> : null);

  return (
    <Tooltip disabled={!content}>
      <TooltipTrigger render={<div className="min-w-0" />}>
        {children}
      </TooltipTrigger>
      {content ? (
        <TooltipContent variant="card">{content}</TooltipContent>
      ) : null}
    </Tooltip>
  );
};
