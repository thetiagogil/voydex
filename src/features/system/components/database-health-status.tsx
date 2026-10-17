"use client";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { useEffect, useSyncExternalStore } from "react";

type HealthState = "unknown" | "healthy" | "unhealthy";
type HealthListener = () => void;

const HEALTH_INTERVAL_MS = 60000;
const healthListeners = new Set<HealthListener>();
let healthState: HealthState = "unknown";
let healthMonitorStarted = false;
let healthCheckPromise: Promise<void> | null = null;

const requestHealth = async () => {
  const response = await fetch("/api/health", { cache: "no-store" });
  return response.ok;
};

const setHealthState = (nextState: HealthState) => {
  if (healthState === nextState) return;
  healthState = nextState;
  healthListeners.forEach((listener) => listener());
};

const runHealthCheck = () => {
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
};

const startDatabaseHealthMonitor = () => {
  if (healthMonitorStarted || typeof window === "undefined") return;
  healthMonitorStarted = true;
  void runHealthCheck();
  window.setInterval(() => {
    void runHealthCheck();
  }, HEALTH_INTERVAL_MS);
};

const subscribeToHealth = (listener: HealthListener) => {
  healthListeners.add(listener);
  return () => {
    healthListeners.delete(listener);
  };
};

const getHealthSnapshot = () => {
  return healthState;
};

const useDatabaseHealth = () => {
  return useSyncExternalStore(
    subscribeToHealth,
    getHealthSnapshot,
    getHealthSnapshot,
  );
};

export const DatabaseHealthProvider = () => {
  useEffect(() => {
    startDatabaseHealthMonitor();
  }, []);
  return null;
};

/*
 * A small floating mark when the database can't be reached: a round button
 * with a danger dot, its reason in an ink tooltip. On phones it floats above
 * the bottom bar.
 */
export const DatabaseHealthStatus = () => {
  const state = useDatabaseHealth();
  if (state !== "unhealthy") return null;
  return (
    <div className="fixed right-4 bottom-[calc(5.75rem+env(safe-area-inset-bottom))] z-50 sm:right-6 lg:bottom-6">
      <Tooltip>
        <TooltipTrigger
          render={
            <Button
              type="button"
              variant="secondary"
              size="icon"
              aria-label="Database unavailable"
              className="relative"
            />
          }
        >
          <AppIcon icon={appIcons.status.offline} className="text-danger" />
          <span
            className="bg-danger ring-surface absolute -top-0.5 -right-0.5 size-3 rounded-full ring-2"
            aria-hidden
          />
        </TooltipTrigger>
        <TooltipContent side="top" align="end" className="w-64">
          <div>
            <span className="block font-extrabold text-white">
              Database unavailable
            </span>
            <span className="text-on-ink mt-0.5 block font-medium">
              Some features may not work as expected.
            </span>
          </div>
        </TooltipContent>
      </Tooltip>
    </div>
  );
};
