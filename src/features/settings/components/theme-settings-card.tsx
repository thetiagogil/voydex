"use client";

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
import {
  useTheme,
  type ThemePreference,
} from "@/shared/providers/theme-provider";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";

type ThemeOption = {
  description: string;
  icon: AppIconComponent;
  label: string;
  value: ThemePreference;
};

const themeOptions: ThemeOption[] = [
  {
    description: "Follow your device appearance.",
    icon: appIcons.theme.system,
    label: "System",
    value: "system",
  },
  {
    description: "Use the brighter Voydex interface.",
    icon: appIcons.theme.light,
    label: "Light",
    value: "light",
  },
  {
    description: "Use the darker Voydex interface.",
    icon: appIcons.theme.dark,
    label: "Dark",
    value: "dark",
  },
];

export const ThemeSettingsCard = () => {
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
          aria-label="Theme preference"
          variant="outline"
          className="grid w-full gap-3 sm:grid-cols-3"
          value={[theme]}
          onValueChange={(nextTheme) => {
            const nextThemePreference = nextTheme[0];
            if (nextThemePreference) {
              setTheme(nextThemePreference as ThemePreference);
            }
          }}
        >
          {themeOptions.map((option) => {
            return (
              <ToggleGroupItem
                key={option.value}
                value={option.value}
                className="data-[state=on]:border-primary/50 data-[state=on]:bg-primary/10 h-auto min-h-28 flex-col items-start justify-start gap-3 p-4 text-left whitespace-normal"
              >
                <span className="flex w-full items-center gap-2">
                  <AppIcon icon={option.icon} aria-hidden />
                  <span className="text-sm font-semibold">{option.label}</span>
                </span>
                <span className="text-muted-foreground block text-xs leading-5">
                  {option.description}
                </span>
              </ToggleGroupItem>
            );
          })}
        </ToggleGroup>
      </CardContent>
    </Card>
  );
};
