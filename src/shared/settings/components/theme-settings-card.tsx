"use client";

import { MonitorIcon, MoonIcon, SunIcon, type LucideIcon } from "lucide-react";

import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  ToggleGroup,
  ToggleGroupItem,
} from "@/shared/components/ui/toggle-group";
import { useTheme, type ThemePreference } from "@/shared/theme/theme-provider";

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
        <ToggleGroup
          type="single"
          aria-label="Theme preference"
          variant="outline"
          className="grid w-full gap-3 sm:grid-cols-3"
          value={theme}
          onValueChange={(nextTheme) => {
            if (nextTheme) {
              setTheme(nextTheme as ThemePreference);
            }
          }}
        >
          {themeOptions.map((option) => {
            const Icon = option.icon;

            return (
              <ToggleGroupItem
                key={option.value}
                value={option.value}
                className="h-auto flex-col items-start justify-start gap-3 p-4 text-left whitespace-normal"
              >
                <span className="flex items-center justify-between gap-3">
                  <Icon aria-hidden />
                </span>
                <span>
                  <span className="block text-sm font-semibold">
                    {option.label}
                  </span>
                  <span className="text-muted-foreground mt-1 block text-xs leading-5">
                    {option.description}
                  </span>
                </span>
              </ToggleGroupItem>
            );
          })}
        </ToggleGroup>
      </CardContent>
    </Card>
  );
}
