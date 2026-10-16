import { clsx, type ClassValue } from "clsx";
import { extendTailwindMerge } from "tailwind-merge";

/*
 * The Soft Clay type scale (`text-12` … `text-60`) and shadow roles are custom
 * theme values; tailwind-merge has to know them, or a size and a colour such
 * as `text-20 text-ink` would be treated as conflicting.
 */
const twMerge = extendTailwindMerge({
  extend: {
    theme: {
      shadow: ["soft", "cover", "float", "overlay", "card", "action", "game"],
      text: [
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "20",
        "24",
        "28",
        "32",
        "44",
        "60",
      ],
    },
  },
});

export const cn = (...inputs: ClassValue[]) => {
  return twMerge(clsx(inputs));
};
