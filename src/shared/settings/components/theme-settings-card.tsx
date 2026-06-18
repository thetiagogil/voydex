"use client";

import {
  CheckIcon,
  MonitorIcon,
  MoonIcon,
  SunIcon,
  type LucideIcon,
} from "lucide-react";

import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { useTheme, type ThemePreference } from "@/shared/theme/theme-provider";
import { cn } from "@/lib/utils";

type ThemeOption = {
  description: string;
  icon: LucideIcon;
  label: string;
  value: ThemePreference;
};

const themeOptions: ThemeOption[] = [
  {
    description: "Follow your device appearance.",
    icon: MonitorIcon,
    label: "System",
    value: "system",
  },
  {
    description: "Use the brighter Voydex interface.",
    icon: SunIcon,
    label: "Light",
    value: "light",
  },
  {
    description: "Use the darker Voydex interface.",
    icon: MoonIcon,
    label: "Dark",
    value: "dark",
  },
];

export function ThemeSettingsCard() {
  const { resolvedTheme, setTheme, theme } = useTheme();

  return (
    <Card>
      <CardHeader>
        <CardTitle>Appearance</CardTitle>
        <CardDescription>
          Choose how Voydex looks on this device. System currently resolves to{" "}
          {resolvedTheme}.
        </CardDescription>
      </CardHeader>
      <CardContent>
        <div
          role="radiogroup"
          aria-label="Theme preference"
          className="grid gap-3 sm:grid-cols-3"
        >
          {themeOptions.map((option) => {
            const Icon = option.icon;
            const isSelected = theme === option.value;

            return (
              <button
                key={option.value}
                type="button"
                role="radio"
                aria-checked={isSelected}
                className={cn(
                  "border-border bg-card/60 hover:bg-muted/60 focus-visible:ring-ring flex flex-col gap-3 rounded-xl border p-4 text-left transition-colors outline-none focus-visible:ring-2",
                  isSelected &&
                    "border-primary bg-primary/10 text-primary shadow-primary/10 shadow-sm",
                )}
                onClick={() => {
                  setTheme(option.value);
                }}
              >
                <span className="flex items-center justify-between gap-3">
                  <Icon className="size-5" aria-hidden />
                  {isSelected ? (
                    <CheckIcon className="size-4" aria-hidden />
                  ) : null}
                </span>
                <span>
                  <span className="block text-sm font-semibold">
                    {option.label}
                  </span>
                  <span className="text-muted-foreground mt-1 block text-xs leading-5">
                    {option.description}
                  </span>
                </span>
              </button>
            );
          })}
        </div>
      </CardContent>
    </Card>
  );
}
