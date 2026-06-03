import {
  getDashboardRoute,
  getGenerationsRoute,
} from "@/shared/constants/routes";
import type { Breadcrumb } from "@/shared/types";

export const buildGenerationBreadcrumbs = (generation: {
  id: number;
  name: string;
}): Breadcrumb[] => [
  { label: "Dashboard", href: getDashboardRoute() },
  {
    label: generation.name,
    href: getGenerationsRoute(generation.id),
    current: true,
  },
];
