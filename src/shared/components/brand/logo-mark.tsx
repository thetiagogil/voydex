import { cn } from "@/shared/utils/cn";

type LogoMarkProps = {
  className?: string;
};

/* The "V" tile. A placeholder until the logo is designed. */
export const LogoMark = ({ className }: LogoMarkProps) => {
  return (
    <span
      aria-hidden
      className={cn(
        "bg-action font-display inline-grid size-9 place-items-center rounded-sm text-20 leading-none font-semibold text-white",
        className,
      )}
    >
      V
    </span>
  );
};
