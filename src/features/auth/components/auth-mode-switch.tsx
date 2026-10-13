import { type AuthMode, getAuthPageHref } from "@/features/auth/auth-mode";
import { SegmentedControl } from "@/shared/components/segmented-control";

const authModeOptions: { label: string; mode: AuthMode }[] = [
  { label: "Log in", mode: "log-in" },
  { label: "Sign up", mode: "sign-up" },
];

type AuthModeSwitchProps = {
  mode: AuthMode;
  next: string;
};

/*
 * The switch at the top of the card: Log in and Sign up share it. Each side
 * is a real link, so it works before the page hydrates and can open in a new
 * tab.
 */
export const AuthModeSwitch = ({ mode, next }: AuthModeSwitchProps) => (
  <SegmentedControl
    ariaLabel="Log in or sign up"
    variant="segment"
    fullWidth
    options={authModeOptions.map((option) => ({
      href: getAuthPageHref({ mode: option.mode, next }),
      label: option.label,
      value: option.mode,
    }))}
    value={mode}
  />
);
