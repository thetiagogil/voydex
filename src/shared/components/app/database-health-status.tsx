"use client";

import { WifiOffIcon } from "lucide-react";
import { useEffect, useSyncExternalStore } from "react";

import { buttonVariants } from "@/shared/components/ui/button";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { surfaceClassNames } from "@/shared/components/ui/surface";
import { cn } from "@/lib/utils";

type HealthState = "unknown" | "healthy" | "unhealthy";
type HealthListener = () => void;

const HEALTH_INTERVAL_MS = 60_000;

const healthListeners = new Set<HealthListener>();

let healthState: HealthState = "unknown";
let healthMonitorStarted = false;
let healthCheckPromise: Promise<void> | null = null;

async function requestHealth() {
  const response = await fetch("/api/health", { cache: "no-store" });
  return response.ok;
}

function setHealthState(nextState: HealthState) {
  if (healthState === nextState) return;

  healthState = nextState;
  healthListeners.forEach((listener) => listener());
}

function runHealthCheck() {
  if (healthCheckPromise) return healthCheckPromise;

  healthCheckPromise = (async () => {
    try {
      const isHealthy = await requestHealth();
      setHealthState(isHealthy ? "healthy" : "unhealthy");
    } catch {
      setHealthState("unhealthy");
    }
  })().finally(() => {
    healthCheckPromise = null;
  });

  return healthCheckPromise;
}

function startDatabaseHealthMonitor() {
  if (healthMonitorStarted || typeof window === "undefined") return;

  healthMonitorStarted = true;
  void runHealthCheck();

  window.setInterval(() => {
    void runHealthCheck();
  }, HEALTH_INTERVAL_MS);
}

function subscribeToHealth(listener: HealthListener) {
  healthListeners.add(listener);

  return () => {
    healthListeners.delete(listener);
  };
}

function getHealthSnapshot() {
  return healthState;
}

function useDatabaseHealth() {
  return useSyncExternalStore(
    subscribeToHealth,
    getHealthSnapshot,
    getHealthSnapshot,
  );
}

export function DatabaseHealthProvider() {
  useEffect(() => {
    startDatabaseHealthMonitor();
  }, []);

  return null;
}

export function DatabaseHealthStatus() {
  const state = useDatabaseHealth();

  if (state !== "unhealthy") return null;

  return (
    <div className="fixed right-4 bottom-4 z-50 sm:right-6 sm:bottom-6">
      <Tooltip>
        <TooltipTrigger
          aria-label="Database unavailable"
          className={cn(
            buttonVariants({ variant: "outline", size: "icon" }),
            surfaceClassNames.control,
            "relative rounded-full shadow-lg",
          )}
        >
          <WifiOffIcon className="text-destructive" aria-hidden />
          <span
            className="bg-destructive ring-background absolute -top-0.5 -right-0.5 size-3 rounded-full ring-2"
            aria-hidden
          />
        </TooltipTrigger>
        <TooltipContent side="top" align="end" className="w-64">
          <span className="block font-medium">Database unavailable</span>
          <span className="text-muted-foreground mt-0.5 block">
            Some features may not work as expected.
          </span>
        </TooltipContent>
      </Tooltip>
    </div>
  );
}
