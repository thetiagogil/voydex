"use client";

import { useRouter } from "next/navigation";
import { useEffect } from "react";

import { readActiveModuleHref } from "@/config/active-module";

/* `/app`: opens the module you were last in on this device. */
export const AppEntryPage = () => {
  const router = useRouter();

  useEffect(() => {
    router.replace(readActiveModuleHref());
  }, [router]);

  return null;
};
