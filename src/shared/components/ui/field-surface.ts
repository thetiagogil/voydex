/*
 * The one look for form fields (inputs, text areas, select triggers, the
 * search field). On the page ground a field is cream with a hairline; inside
 * a card, dialog, sheet or popover it takes the inset fill without the line,
 * the way v3 draws its fields. Focus is the action-red outline.
 */
export const fieldSurfaceClassName =
  "border-[1.5px] border-line bg-surface text-ink transition-colors outline-none in-data-[slot=alert-dialog-content]:border-transparent in-data-[slot=alert-dialog-content]:bg-surface-2 in-data-[slot=card]:border-transparent in-data-[slot=card]:bg-surface-2 in-data-[slot=dialog-content]:border-transparent in-data-[slot=dialog-content]:bg-surface-2 in-data-[slot=popover-content]:border-transparent in-data-[slot=popover-content]:bg-surface-2 in-data-[slot=sheet-content]:border-transparent in-data-[slot=sheet-content]:bg-surface-2 aria-invalid:border-danger";

/* The focus outline a field shows while you type in it. */
export const fieldFocusClassName =
  "focus-visible:outline-3 focus-visible:outline-offset-1 focus-visible:outline-focus focus-visible:outline-solid";
