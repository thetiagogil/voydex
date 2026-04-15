import { cn } from "@/lib/utils/cn";

type LogoProps = {
  className?: string;
  size?: "sm" | "md" | "lg" | "xl";
  showText?: boolean;
}

export const Logo = ({
  className,
  size = "md",
  showText = false,
}: LogoProps) => {
  const sizeClasses = {
    sm: "h-8 w-8",
    md: "h-12 w-12",
    lg: "h-16 w-16",
    xl: "h-24 w-24",
  };

  const textSizeClasses = {
    sm: "text-lg",
    md: "text-xl",
    lg: "text-2xl",
    xl: "text-3xl",
  };

  return (
    <div className={cn("flex items-center gap-2", className)}>
      {/* Adventure compass-inspired logo */}
      <div className={cn("relative flex-shrink-0", sizeClasses[size])}>
        <svg
          viewBox="0 0 100 100"
          className="h-full w-full"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          {/* Outer ring with compass points */}
          <circle
            cx="50"
            cy="50"
            r="46"
            fill="none"
            stroke="currentColor"
            strokeWidth="2"
            className="text-primary"
          />

          {/* Cardinal direction markers */}
          <g className="text-primary" fill="currentColor">
            {/* North */}
            <polygon points="50,10 45,25 55,25" />
            {/* East */}
            <polygon points="90,50 75,45 75,55" />
            {/* South */}
            <polygon points="50,90 55,75 45,75" />
            {/* West */}
            <polygon points="10,50 25,55 25,45" />
          </g>

          {/* Central orb with adventure elements */}
          <circle
            cx="50"
            cy="50"
            r="20"
            fill="currentColor"
            className="text-primary"
          />

          {/* Inner detail circle */}
          <circle
            cx="50"
            cy="50"
            r="15"
            fill="currentColor"
            className="text-background"
          />

          {/* Pokeball reference (subtle center dot) */}
          <circle
            cx="50"
            cy="50"
            r="6"
            fill="currentColor"
            className="text-primary"
          />
        </svg>
      </div>

      {/* App name */}
      {showText && (
        <span className={cn("font-bold tracking-tight", textSizeClasses[size])}>
          <span className="text-primary">Poke</span>
          <span className="text-foreground">tracker</span>
        </span>
      )}
    </div>
  );
};
