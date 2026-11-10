"use client";

import { getLibraryPageData } from "@/modules/mainline/features/library/client/library-page-query";
import { MainlineLibraryPage } from "@/modules/mainline/features/library/mainline-library-page";
import type { LibraryTab } from "@/modules/mainline/features/library/types";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";

/* The Library, read on the device. */
export const MainlineLibraryRoute = ({ tab }: { tab: LibraryTab }) => {
  const data = useLocalPageData("library", getLibraryPageData);

  return data ? <MainlineLibraryPage data={data} tab={tab} /> : null;
};
