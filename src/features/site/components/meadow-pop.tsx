"use client";

import type { ReactNode } from "react";

import { useFirstVisit } from "@/shared/hooks/use-first-visit";

/*
 * Lets the meadow's partners pop in once per visit: the first time in a
 * session they pop, and after that they are simply there. Partners opt in
 * with `group-data-pop/meadow:animate-meadow-pop`.
 */
export const MeadowPop = ({
  children,
  className,
  label,
}: {
  children: ReactNode;
  className?: string;
  /* Names the row when its partners are links; without one the row is decoration. */
  label?: string;
}) => {
  const firstVisit = useFirstVisit("voydex:meadow-seen");

  return (
    <div
      data-pop={firstVisit ? "" : undefined}
      role={label ? "group" : undefined}
      aria-label={label}
      aria-hidden={label ? undefined : true}
      className={className}
    >
      {children}
    </div>
  );
};
