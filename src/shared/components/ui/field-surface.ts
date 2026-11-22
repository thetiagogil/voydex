/*
 * The one look for form fields (inputs, text areas, select triggers, the
 * search field): white with a thin outline, the same on the wall, on a
 * band and inside a card, dialog, sheet or popover, like every quiet
 * button. Focus is the focus-blue outline.
 */
export const fieldSurfaceClassName =
  "border-[1.5px] border-lip bg-surface text-ink transition-colors outline-none aria-invalid:border-danger";

/* The focus outline a field shows while you type in it. */
export const fieldFocusClassName = "focus-visible:outline-offset-1 focus-ring";
