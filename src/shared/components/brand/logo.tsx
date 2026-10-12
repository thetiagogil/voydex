import { cn } from "@/shared/utils/cn";
import { LogoMark } from "@/shared/components/brand/logo-mark";

type LogoProps = {
  className?: string;
  markClassName?: string;
  showText?: boolean;
};

export const Logo = ({
  className,
  markClassName,
  showText = true,
}: LogoProps) => {
  return (
    <span className={cn("inline-flex items-center gap-2", className)}>
      <LogoMark className={cn("size-8 shrink-0", markClassName)} />
      {showText ? (
        <span className="font-display text-20 hidden leading-none font-semibold sm:inline">
          <span className="text-ink">Voydex</span>
        </span>
      ) : null}
    </span>
  );
};
