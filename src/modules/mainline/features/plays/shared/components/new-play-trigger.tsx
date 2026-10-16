"use client";

import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { useNewPlayDialog } from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";

type NewPlayTriggerProps = {
  "aria-label"?: string;
  children: ReactNode;
  className?: string;
  /* Opens New Play with this game already picked. */
  gameSlug?: string;
  title?: string;
};

/*
 * Every New Play button inside Mainline: it opens New Play as a dialog over
 * the page, without changing the address. Outside Mainline it is a plain
 * link to Mainline that opens it there.
 */
export const NewPlayTrigger = ({
  children,
  className,
  gameSlug,
  title,
  "aria-label": ariaLabel,
}: NewPlayTriggerProps) => {
  const opener = useNewPlayDialog();

  if (!opener) {
    return (
      <Link
        href={appRoutes.mainlineNewPlay(gameSlug)}
        aria-label={ariaLabel}
        title={title}
        className={className}
      >
        {children}
      </Link>
    );
  }

  return (
    <button
      type="button"
      aria-haspopup="dialog"
      aria-label={ariaLabel}
      title={title}
      className={className}
      onClick={() => opener.open({ gameSlug })}
    >
      {children}
    </button>
  );
};
