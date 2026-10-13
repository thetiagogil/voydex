"use client";

import { useEffect, useSyncExternalStore, type ReactNode } from "react";

const seenKey = "voydex:meadow-seen";

const subscribeToNothing = () => () => {};

/* Without storage the partners just stand there, as on a later visit. */
const readSeen = () => {
  try {
    return window.sessionStorage.getItem(seenKey) === "1";
  } catch {
    return true;
  }
};

const readSeenOnServer = () => false;

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
  const seen = useSyncExternalStore(
    subscribeToNothing,
    readSeen,
    readSeenOnServer,
  );

  useEffect(() => {
    try {
      window.sessionStorage.setItem(seenKey, "1");
    } catch {
      /* Storage is unavailable: nothing to remember. */
    }
  }, []);

  return (
    <div
      data-pop={seen ? undefined : ""}
      role={label ? "group" : undefined}
      aria-label={label}
      aria-hidden={label ? undefined : true}
      className={className}
    >
      {children}
    </div>
  );
};
