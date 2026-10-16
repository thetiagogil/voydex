import type { StartIntent } from "@/config/start-intent";
import { type AuthMode, getAuthPageHref } from "@/features/auth/auth-mode";
import { SegmentedControl } from "@/shared/components/segmented-control";

const authModeOptions: { label: string; mode: AuthMode }[] = [
  { label: "Log in", mode: "log-in" },
  { label: "Sign up", mode: "sign-up" },
];

type AuthModeSwitchProps = {
  intent: StartIntent | null;
  mode: AuthMode;
  next: string;
};

/*
 * The switch at the top of the card: Log in and Sign up share it, and both
 * keep the game picked on Start a Play. Each side is a real link, so it works
 * before the page hydrates and can open in a new tab.
 */
export const AuthModeSwitch = ({ intent, mode, next }: AuthModeSwitchProps) => (
  <SegmentedControl
    ariaLabel="Log in or sign up"
    variant="segment"
    /* v3's `.formsw`: the form switch keeps the quiet tint. */
    selectedTone="soft"
    fullWidth
    options={authModeOptions.map((option) => ({
      href: getAuthPageHref({ intent, mode: option.mode, next }),
      label: option.label,
      value: option.mode,
    }))}
    value={mode}
  />
);
