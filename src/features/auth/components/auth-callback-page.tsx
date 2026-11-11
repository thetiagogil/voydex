"use client";

import { useRouter, useSearchParams } from "next/navigation";
import { useEffect } from "react";

import { readActiveModuleHref } from "@/config/active-module";
import { getAuthPageHref } from "@/features/auth/auth-mode";
import { completeAuthLink } from "@/features/auth/client/auth-callback";
import { PageLoadingState } from "@/shared/components/page-loading-state";

/*
 * One finish per link: a code can be exchanged only once, and the page may
 * be drawn twice while it opens.
 */
const finishing = new Map<string, Promise<string>>();

/* Where every email link lands: it finishes the link here, then moves on. */
export const AuthCallbackPage = () => {
  const router = useRouter();
  const query = useSearchParams().toString();

  useEffect(() => {
    let finish = finishing.get(query);

    if (!finish) {
      const next = readActiveModuleHref();

      /* A link that can't be finished (no network) lands on Log in. */
      finish = completeAuthLink(new URLSearchParams(query), next).catch(() => {
        finishing.delete(query);

        return getAuthPageHref({ error: "link-expired", mode: "log-in", next });
      });
      finishing.set(query, finish);
    }

    let current = true;

    finish.then((href) => {
      if (current) router.replace(href);
    });

    return () => {
      current = false;
    };
  }, [query, router]);

  return <PageLoadingState />;
};
