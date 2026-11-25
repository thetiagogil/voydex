import { describe, expect, it } from "vitest";

import { getTabPillClassName } from "@/shared/components/tab-pill";
import { navigationMenuTriggerStyle } from "@/shared/components/ui/navigation-menu";
import { cn } from "@/shared/utils/cn";

import { getNavigationMenuControlClassName } from "./play-tab-control";

describe("getNavigationMenuControlClassName", () => {
  it("draws a Play's tabs as every page's tabs", () => {
    for (const active of [true, false]) {
      const tab = getNavigationMenuControlClassName({ active }).split(" ");

      for (const name of getTabPillClassName(active).split(" ")) {
        expect(tab).toContain(name);
      }
    }
  });

  it("wins over the menu trigger's own height, so a tab is 36px with lighter words", () => {
    const merged = cn(
      navigationMenuTriggerStyle(),
      getNavigationMenuControlClassName({ active: false }),
    ).split(" ");

    expect(merged).toContain("h-9");
    expect(merged).not.toContain("h-10");
    expect(merged).toContain("font-semibold");
    expect(merged).not.toContain("font-bold");
  });

  it("keeps the tab you are on blue under the pointer and while its menu is open", () => {
    const active = getNavigationMenuControlClassName({ active: true });

    expect(active).toContain("hover:bg-calm");
    expect(active).toContain("data-popup-open:bg-calm");
    expect(active).toContain("hover:text-white");
    expect(getNavigationMenuControlClassName({ active: false })).not.toContain(
      "hover:bg-calm",
    );
  });
});
