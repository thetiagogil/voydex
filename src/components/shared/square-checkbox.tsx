import { type ReactNode } from "react";
import { Checkbox } from "../ui/checkbox";

interface SquareCheckboxProps {
  title?: string | ReactNode;
  id: string;
  checked: boolean;
  onCheckedChange?: (checked: boolean) => void;
  className?: string;
  children?: ReactNode;
  disabled?: boolean;
}

export const SquareCheckbox = ({
  title,
  id,
  checked,
  onCheckedChange,
  className,
  children,
  disabled = false,
}: SquareCheckboxProps) => {
  const handleClick = () => {
    if (!disabled && onCheckedChange) {
      onCheckedChange(!checked);
    }
  };

  return (
    <div
      onClick={handleClick}
      className={
        "border-border hover:bg-accent/30 has-[[aria-checked=true]]:hover:bg-primary/15 has-[[aria-checked=true]]:border-primary has-[[aria-checked=true]]:bg-primary/10 dark:has-[[aria-checked=true]]:border-primary dark:has-[[aria-checked=true]]:bg-primary/20 flex min-h-[160px] cursor-pointer flex-col rounded-lg border p-3 transition-all " +
        (disabled ? "cursor-not-allowed opacity-50" : "")
      }
    >
      {/* Checkbox indicator */}
      <div className="flex w-full items-baseline justify-between gap-2">
        {title}
        <Checkbox
          id={id}
          checked={checked}
          disabled={disabled}
          className="data-[state=checked]:border-primary data-[state=checked]:bg-primary data-[state=checked]:text-primary-foreground pointer-events-none"
        />
      </div>

      <div className={"w-full " + (className ? className : "")}>{children}</div>
    </div>
  );
};
