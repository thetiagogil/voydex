import type { ReactNode } from "react";

/*
 * A field's label, marked once it changed: a dot that takes no width from
 * the row (so an inline field never wraps), named "Edited" for screen
 * readers and on hover. The footer (`UnsavedChangesFooter`) lists every
 * change. One look for every form that saves on demand.
 */
export const EditedMark = ({
  children,
  edited,
}: {
  children: ReactNode;
  edited: boolean;
}) => (
  <span className="relative">
    {children}
    {edited ? (
      <span
        title="Edited"
        className="bg-action-ink absolute top-1/2 -right-3 size-1.5 -translate-y-1/2 rounded-full"
      >
        <span className="sr-only">, edited</span>
      </span>
    ) : null}
  </span>
);
