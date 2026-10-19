/*
 * The one look for every picker's popup: selects, dropdown menus, the bar's
 * menus and searchable lists. A white panel with a hairline on the float
 * shadow; each option a 48px row (two lines with a description) that lights
 * up under the pointer or the keyboard and takes the selected tint, with a
 * check at its end, when it is the pick.
 */
export const menuSurfaceClassName =
  "bg-surface text-ink shadow-menu rounded-lg";

/*
 * On phones (below 768px) every picker opens as a sheet from the bottom over
 * the scrim, full width with a big search field and room for long lists. The
 * positioner's placement is overridden; the popup takes the sheet's shape.
 */
export const menuSheetPositionerClassName =
  "max-md:fixed! max-md:inset-x-0! max-md:top-auto! max-md:bottom-0! max-md:left-0! max-md:right-0! max-md:transform-none!";

export const menuSheetPopupClassName =
  "max-md:w-full max-md:min-w-0 max-md:max-w-none max-md:max-h-[75dvh] max-md:rounded-t-3xl max-md:rounded-b-none max-md:p-2.5 max-md:pb-[max(env(safe-area-inset-bottom),1rem)] max-md:origin-bottom max-md:data-open:zoom-in-100 max-md:data-open:slide-in-from-bottom-10 max-md:data-closed:zoom-out-100 max-md:data-closed:slide-out-to-bottom-10";

/* The scrim behind a picker's phone sheet; hidden from 768px. */
export const menuSheetBackdropClassName =
  "bg-scrim fixed inset-0 z-50 transition-opacity duration-150 data-ending-style:opacity-0 data-starting-style:opacity-0 md:hidden";

/* The panel: the surface with its inner padding. */
export const menuPanelClassName = `${menuSurfaceClassName} p-1.5`;

/* An option row's shape, shared by items and the bar's menu links. */
export const menuOptionShapeClassName =
  "flex min-h-12 items-center gap-3 rounded-md py-1.5 pl-2 text-15 font-bold";

/* One option's row. Items mark the highlighted and the picked option. */
export const menuOptionClassName = `${menuOptionShapeClassName} relative w-full cursor-default pr-10 outline-hidden select-none transition-colors data-highlighted:bg-hover data-highlighted:text-ink data-disabled:pointer-events-none data-disabled:opacity-50 [&_svg]:pointer-events-none [&_svg]:shrink-0`;

/* The picked option, where the item marks it with `data-selected`. */
export const menuOptionSelectedClassName =
  "data-selected:bg-select-soft data-selected:text-select-ink data-selected:data-highlighted:bg-select-soft data-selected:data-highlighted:text-select-ink";

/* Where the check sits at the end of the picked option's row. */
export const menuCheckClassName =
  "pointer-events-none absolute right-3 flex size-5 items-center justify-center text-select-ink";

/* A group's quiet heading inside a panel. */
export const menuGroupLabelClassName =
  "px-2 pt-2 pb-1 text-13 font-bold text-ink-3";
