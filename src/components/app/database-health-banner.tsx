"use client";

import { WifiOffIcon } from "lucide-react";
import { useEffect, useState } from "react";

import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";

type HealthState = "unknown" | "healthy" | "unhealthy";

type DatabaseHealthBannerProps = {
  className?: string;
};

const HEALTH_INTERVAL_MS = 60_000;

async function checkHealth() {
  const response = await fetch("/api/health", { cache: "no-store" });
  return response.ok;
}

export function DatabaseHealthBanner({ className }: DatabaseHealthBannerProps) {
  const [state, setState] = useState<HealthState>("unknown");

  useEffect(() => {
    let isMounted = true;

    async function runCheck() {
      try {
        const isHealthy = await checkHealth();
        if (isMounted) setState(isHealthy ? "healthy" : "unhealthy");
      } catch {
        if (isMounted) setState("unhealthy");
      }
    }

    runCheck();
    const interval = window.setInterval(runCheck, HEALTH_INTERVAL_MS);

    return () => {
      isMounted = false;
      window.clearInterval(interval);
    };
  }, []);

  if (state !== "unhealthy") return null;

  return (
    <Alert variant="destructive" className={className}>
      <div className="flex gap-3">
        <WifiOffIcon className="mt-0.5 size-4 shrink-0" aria-hidden />
        <div>
          <AlertTitle>Database unavailable</AlertTitle>
          <AlertDescription>
            The database is currently unavailable. Some features may not work as
            expected.
          </AlertDescription>
        </div>
      </div>
    </Alert>
  );
}
