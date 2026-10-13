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
 * the page, without changing the address, and starts loading its games on
 * hover or focus so the dialog fills at once. Outside Mainline it is a plain
 * link to the New Play page.
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
        href={appRoutes.mainlinePlayNew(gameSlug)}
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
      onPointerEnter={opener.prepare}
      onFocus={opener.prepare}
      onPointerDown={opener.prepare}
      onClick={() => opener.open({ gameSlug })}
    >
      {children}
    </button>
  );
};
