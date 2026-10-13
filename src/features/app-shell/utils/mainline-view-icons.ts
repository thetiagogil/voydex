import { appRoutes } from "@/config/routes";
import { appIcons, type AppIconComponent } from "@/shared/components/app-icon";

/* The bars' icon for each Mainline view, by where it leads. */
export const getMainlineViewIcon = (href: string): AppIconComponent => {
  if (href === appRoutes.mainline) {
    return appIcons.views.mainline.home;
  }
  if (href === appRoutes.mainlinePlays) {
    return appIcons.views.mainline.plays;
  }
  if (href.startsWith(appRoutes.mainlinePlans)) {
    return appIcons.views.mainline.planner;
  }
  if (href === appRoutes.mainlineStats) {
    return appIcons.views.mainline.stats;
  }
  if (href === appRoutes.mainlineCollection) {
    return appIcons.views.mainline.collection;
  }

  return appIcons.modules.mainline;
};
