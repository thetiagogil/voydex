import { LogoMark } from "@/components/app/logo-mark";
import { cn } from "@/lib/utils";

type LogoProps = {
  className?: string;
  markClassName?: string;
  showText?: boolean;
};

export function Logo({ className, markClassName, showText = true }: LogoProps) {
  return (
    <span className={cn("inline-flex items-center gap-2", className)}>
      <LogoMark className={cn("text-primary size-8 shrink-0", markClassName)} />
      {showText ? (
        <span className="text-base font-semibold tracking-tight">
          <span className="text-primary">Voydex</span>
        </span>
      ) : null}
    </span>
  );
}
