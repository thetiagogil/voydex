"use client";

import Link from "next/link";
import type { CSSProperties, ReactNode } from "react";

import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

export type SegmentedControlOption<TValue extends string> = {
  count?: number | string;
  /*
   * The current section without being the exact page, such as Pokémon while
   * a Pokémon's entry is open. It takes the selected style and, as a link,
   * `aria-current="true"` (the exact page gets `aria-current="page"`).
   */
  current?: boolean;
  /* Shown but not available: never selectable, and a link loses its href. */
  disabled?: boolean;
  /*
   * Why a disabled option isn't available, such as "Not available yet". It
   * shows as a tooltip and joins the accessible name, and the option stays
   * focusable (`aria-disabled`) so keyboard users can reach the reason.
   */
  disabledReason?: string;
  /*
   * A leading colour dot filled with `--game`, such as a version's colour:
   * pass `getGameColourStyle(slug)`. Decorative; the label carries the name.
   */
  dot?: CSSProperties;
  /*
   * Makes the option a link, for a switch between pages: it works before
   * hydration and marks the current one with `aria-current`.
   */
  href?: string;
  icon?: ReactNode;
  label: string;
  value: TValue;
};

type SegmentedControlProps<TValue extends string> = {
  ariaLabel: string;
  className?: string;
  /* Options share the row's width equally. */
  fullWidth?: boolean;
  /* Not needed when every option is a link. */
  onValueChange?: (value: TValue) => void;
  options: readonly SegmentedControlOption<TValue>[];
  /*
   * `sm` is v3's `.gens` pill: 13px and 30px tall from `sm` up, 40px tall on
   * phones so it stays easy to tap.
   */
  size?: "md" | "sm";
  /*
   * `soft` is the one selected style. `strong` (the context colour's strong
   * shade with a white label) is for pills that sit on a surface already
   * wearing the soft tint, such as the game shelf's generation marks on the
   * meadow, where the soft tint would disappear.
   */
  selectedTone?: "soft" | "strong";
  /* `null` when no option is the exact page or value. */
  value: TValue | null;
  /*
   * `pills`: separate cream pills, for filters. `segment`: one inset track,
   * for a switch between modes; it scrolls sideways rather than overflow. Both share the one selected style: the soft
   * tint of the context colour with deep ink.
   */
  variant?: "pills" | "segment";
};

type SegmentedOptionState = {
  ariaCurrent: "page" | "true" | undefined;
  isActive: boolean;
  isDisabled: boolean;
  isSelected: boolean;
};

/* What an option is: the exact value, the current section, or neither. */
export const getSegmentedOptionState = <TValue extends string>(
  option: SegmentedControlOption<TValue>,
  value: TValue | null,
): SegmentedOptionState => {
  const isDisabled = option.disabled === true;
  const isSelected = !isDisabled && option.value === value;
  const isCurrent = !isDisabled && !isSelected && option.current === true;

  return {
    ariaCurrent: isSelected ? "page" : isCurrent ? "true" : undefined,
    isActive: isSelected || isCurrent,
    isDisabled,
    isSelected,
  };
};

export const SegmentedControl = <TValue extends string>({
  ariaLabel,
  className,
  fullWidth = false,
  onValueChange,
  options,
  selectedTone = "soft",
  size = "md",
  value,
  variant = "pills",
}: SegmentedControlProps<TValue>) => {
  const isNavigation = options.some((option) => option.href !== undefined);
  const Container = isNavigation ? "nav" : "div";

  return (
    <Container
      role={isNavigation ? undefined : "group"}
      aria-label={ariaLabel}
      className={cn(
        "max-w-full items-center",
        fullWidth ? "flex w-full" : "inline-flex",
        variant === "pills"
          ? "flex-wrap gap-1.5"
          : "bg-surface-2 no-scrollbar gap-0.5 overflow-x-auto rounded-full p-1",
        className,
      )}
    >
      {options.map((option) => {
        const { ariaCurrent, isActive, isDisabled, isSelected } =
          getSegmentedOptionState(option, value);
        const optionClassName = cn(
          "inline-flex items-center gap-2 rounded-full whitespace-nowrap transition-colors [&_svg]:size-4",
          size === "sm"
            ? "text-13 h-10 min-w-10 justify-center px-2.5 font-extrabold sm:h-7.5"
            : "text-14 h-10 px-4 font-bold",
          variant === "pills" && !isActive && "bg-surface",
          variant === "segment" && size === "md" && "h-9 px-3.5",
          fullWidth && "flex-1 justify-center",
          isActive
            ? cn(
                "font-extrabold",
                selectedTone === "strong"
                  ? "bg-game-strong text-white"
                  : "bg-select-soft text-select-ink",
              )
            : "text-ink-2",
          !isActive && !isDisabled && "hover:text-ink hover:bg-hover",
          isDisabled && "cursor-not-allowed opacity-45",
        );
        const content = (
          <>
            {option.dot ? (
              <span
                aria-hidden
                style={option.dot}
                className="bg-game size-2.5 shrink-0 rounded-full"
              />
            ) : null}
            {option.icon}
            {option.label}
            {option.count !== undefined ? (
              <small
                className={cn(
                  "text-[12.5px] font-bold tabular-nums",
                  isActive ? "text-current" : "text-ink-3",
                )}
              >
                {option.count}
              </small>
            ) : null}
          </>
        );

        if (option.href !== undefined && isDisabled) {
          return (
            <span
              key={option.value}
              role="link"
              aria-disabled="true"
              className={optionClassName}
            >
              {content}
            </span>
          );
        }

        if (isDisabled && option.disabledReason) {
          return (
            <Tooltip key={option.value}>
              <TooltipTrigger
                render={
                  <button
                    type="button"
                    aria-disabled="true"
                    aria-pressed={false}
                    aria-label={`${option.label}, ${option.disabledReason}`}
                    className={optionClassName}
                  />
                }
              >
                {content}
              </TooltipTrigger>
              <TooltipContent side="bottom">
                {option.disabledReason}
              </TooltipContent>
            </Tooltip>
          );
        }

        return option.href !== undefined ? (
          <Link
            key={option.value}
            href={option.href}
            scroll={false}
            aria-current={ariaCurrent}
            className={optionClassName}
          >
            {content}
          </Link>
        ) : (
          <button
            key={option.value}
            type="button"
            aria-pressed={isSelected}
            aria-current={ariaCurrent === "true" ? "true" : undefined}
            disabled={isDisabled}
            onClick={() => onValueChange?.(option.value)}
            className={optionClassName}
          >
            {content}
          </button>
        );
      })}
    </Container>
  );
};
