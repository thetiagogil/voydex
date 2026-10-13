"use client";

import Link from "next/link";
import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

export type SegmentedControlOption<TValue extends string> = {
  count?: number | string;
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
  value: TValue;
  /*
   * `pills`: separate cream pills, for filters. `segment`: one inset track,
   * for a switch between modes. Both share the one selected style: the soft
   * tint of the context colour with deep ink.
   */
  variant?: "pills" | "segment";
};

export const SegmentedControl = <TValue extends string>({
  ariaLabel,
  className,
  fullWidth = false,
  onValueChange,
  options,
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
          : "bg-surface-2 gap-0.5 rounded-full p-1",
        className,
      )}
    >
      {options.map((option) => {
        const isSelected = option.value === value;
        const optionClassName = cn(
          "inline-flex items-center gap-2 rounded-full whitespace-nowrap transition-colors [&_svg]:size-4",
          size === "sm"
            ? "text-13 h-10 min-w-10 justify-center px-2.5 font-extrabold sm:h-7.5"
            : "text-14 h-10 px-4 font-bold",
          variant === "pills" && !isSelected && "bg-surface",
          variant === "segment" && size === "md" && "h-9 px-3.5",
          fullWidth && "flex-1 justify-center",
          isSelected
            ? "bg-select-soft text-select-ink font-extrabold"
            : "text-ink-2 hover:text-ink hover:bg-hover",
        );
        const content = (
          <>
            {option.icon}
            {option.label}
            {option.count !== undefined ? (
              <small
                className={cn(
                  "text-[12.5px] font-bold tabular-nums",
                  isSelected ? "text-select-ink" : "text-ink-3",
                )}
              >
                {option.count}
              </small>
            ) : null}
          </>
        );

        return option.href !== undefined ? (
          <Link
            key={option.value}
            href={option.href}
            scroll={false}
            aria-current={isSelected ? "page" : undefined}
            className={optionClassName}
          >
            {content}
          </Link>
        ) : (
          <button
            key={option.value}
            type="button"
            aria-pressed={isSelected}
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
