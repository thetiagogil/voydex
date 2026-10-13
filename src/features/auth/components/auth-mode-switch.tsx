import Link from "next/link";

import { type AuthMode, getAuthPageHref } from "@/features/auth/auth-mode";
import { cn } from "@/shared/utils/cn";

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
 * tab. It wears SegmentedControl's segment look.
 */
export const AuthModeSwitch = ({ mode, next }: AuthModeSwitchProps) => (
  <nav
    aria-label="Log in or sign up"
    className="bg-surface-2 flex w-full items-center gap-0.5 rounded-full p-1"
  >
    {authModeOptions.map((option) => {
      const isCurrent = option.mode === mode;

      return (
        <Link
          key={option.mode}
          href={getAuthPageHref({ mode: option.mode, next })}
          scroll={false}
          aria-current={isCurrent ? "page" : undefined}
          className={cn(
            "text-14 inline-flex h-9 flex-1 items-center justify-center rounded-full px-3.5 font-bold whitespace-nowrap transition-colors",
            isCurrent
              ? "bg-select-soft text-select-ink font-extrabold"
              : "text-ink-2 hover:text-ink hover:bg-hover",
          )}
        >
          {option.label}
        </Link>
      );
    })}
  </nav>
);
