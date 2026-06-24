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
  icon: AppIconComponent;
  label: string;
  value: ThemePreference;
};

const themeOptions: ThemeOption[] = [
  {
    icon: appIcons.theme.system,
    label: "System",
    value: "system",
  },
  {
    icon: appIcons.theme.light,
    label: "Light",
    value: "light",
  },
  {
    icon: appIcons.theme.dark,
    label: "Dark",
    value: "dark",
  },
];

export const ThemeSettingsCard = () => {
  const { resolvedTheme, setTheme, theme } = useTheme();
  const resolvedThemeLabel = resolvedTheme === "dark" ? "Dark" : "Light";

  return (
    <Card size="sm">
      <CardHeader>
        <CardTitle>Appearance</CardTitle>
        <CardDescription>
          System currently resolves to {resolvedThemeLabel}.
        </CardDescription>
      </CardHeader>
      <CardContent>
        <ToggleGroup
          aria-label="Theme preference"
          variant="outline"
          size="sm"
          spacing={0}
          className="w-full sm:w-fit"
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
                className="aria-pressed:bg-primary/10 aria-pressed:text-primary flex-1 sm:min-w-24 sm:flex-none"
              >
                <AppIcon icon={option.icon} inline="start" aria-hidden />
                {option.label}
              </ToggleGroupItem>
            );
          })}
        </ToggleGroup>
      </CardContent>
    </Card>
  );
};
