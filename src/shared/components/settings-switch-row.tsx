"use client";

import { useId, type ReactNode } from "react";

import { SettingsRow } from "@/shared/components/settings-row";
import { Switch } from "@/shared/components/ui/switch";

type SettingsSwitchRowProps = {
  checked: boolean;
  description?: ReactNode;
  disabled?: boolean;
  onCheckedChange: (checked: boolean) => void;
  title: ReactNode;
};

/*
 * A settings row whose control is an on/off switch (v3 `.trow` with a
 * toggle): the row's words name the switch. App settings and Play settings.
 */
export const SettingsSwitchRow = ({
  checked,
  description,
  disabled,
  onCheckedChange,
  title,
}: SettingsSwitchRowProps) => {
  const titleId = useId();

  return (
    <SettingsRow title={title} titleId={titleId} description={description}>
      <Switch
        aria-labelledby={titleId}
        checked={checked}
        disabled={disabled}
        onCheckedChange={onCheckedChange}
      />
    </SettingsRow>
  );
};
