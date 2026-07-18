import { cn } from "@/shared/utils/cn";
import { LogoMark } from "@/shared/components/brand/logo-mark";

type LogoProps = {
  className?: string;
  markClassName?: string;
  showText?: boolean;
  tone?: "default" | "inverse";
};

export const Logo = ({
  className,
  markClassName,
  showText = true,
  tone = "default",
}: LogoProps) => {
  return (
    <span className={cn("inline-flex items-center gap-2", className)}>
      <LogoMark
        className={cn(
          "size-8 shrink-0",
          tone === "inverse"
            ? "text-[var(--app-nav-foreground)] [&_path]:fill-[var(--app-nav-surface)]"
            : "text-primary",
          markClassName,
        )}
      />
      {showText ? (
        <span className="hidden font-serif text-xl leading-none font-semibold tracking-[-0.025em] sm:inline">
          <span
            className={cn(
              tone === "inverse"
                ? "text-[var(--app-nav-foreground)]"
                : "text-primary",
            )}
          >
            Voydex
          </span>
        </span>
      ) : null}
    </span>
  );
};
