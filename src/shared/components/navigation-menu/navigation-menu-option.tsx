import type { ComponentPropsWithoutRef, ReactNode } from "react";

import { cn } from "@/shared/utils/cn";
import { NavigationMenuOptionContent } from "@/shared/components/navigation-menu/navigation-menu-option-content";
import { NavigationMenuLink } from "@/shared/components/ui/navigation-menu";

type NavigationMenuLinkProps = ComponentPropsWithoutRef<
  typeof NavigationMenuLink
>;
type NavigationMenuOptionCurrent = Exclude<
  NavigationMenuLinkProps["aria-current"],
  false | "false" | undefined
>;

type NavigationMenuOptionProps = {
  accessibilityLabel?: string;
  active?: boolean;
  className?: string;
  current?: boolean | NavigationMenuOptionCurrent;
  description?: ReactNode;
  disabled?: boolean;
  leading?: ReactNode;
  leadingClassName?: string;
  muted?: boolean;
  onClick?: NavigationMenuLinkProps["onClick"];
  render?: NavigationMenuLinkProps["render"];
  title: ReactNode;
  titleAccessory?: ReactNode;
  trailing?: ReactNode;
};

const getAriaCurrent = ({
  active,
  current,
}: {
  active: boolean;
  current?: NavigationMenuOptionProps["current"];
}) => {
  if (current === false) {
    return undefined;
  }

  if (current === true || (current === undefined && active)) {
    return "page";
  }

  return current;
};

export const getNavigationMenuOptionClassName = ({
  active,
  className,
  muted,
}: {
  active: boolean;
  className?: string;
  muted: boolean;
}) => {
  return cn(
    "min-h-16 items-center gap-3 rounded-sm p-3",
    active && "bg-select-soft text-select-ink",
    muted && "opacity-65 hover:opacity-100",
    className,
  );
};

export const NavigationMenuOption = (props: NavigationMenuOptionProps) => {
  const {
    accessibilityLabel,
    active = false,
    className,
    current,
    description,
    disabled = false,
    leading,
    leadingClassName,
    muted = false,
    onClick,
    render,
    title,
    titleAccessory,
    trailing,
  } = props;
  const isMuted = muted || disabled;
  const optionClassName = getNavigationMenuOptionClassName({
    active,
    className,
    muted: isMuted,
  });
  const ariaCurrent = getAriaCurrent({ active, current });
  const content = (
    <NavigationMenuOptionContent
      active={active}
      description={description}
      leading={leading}
      leadingClassName={leadingClassName}
      muted={isMuted}
      title={title}
      titleAccessory={titleAccessory}
      trailing={trailing}
    />
  );

  if (render && !disabled) {
    return (
      <NavigationMenuLink
        aria-current={ariaCurrent}
        aria-label={accessibilityLabel}
        active={active}
        className={optionClassName}
        closeOnClick
        onClick={onClick}
        render={render}
      >
        {content}
      </NavigationMenuLink>
    );
  }

  return (
    <div
      aria-current={ariaCurrent}
      aria-disabled={disabled ? true : undefined}
      aria-label={accessibilityLabel}
      data-active={active ? "true" : undefined}
      data-disabled={disabled ? "true" : undefined}
      onClick={
        disabled
          ? undefined
          : (onClick as ComponentPropsWithoutRef<"div">["onClick"])
      }
      className={cn("flex text-14 transition-colors", optionClassName)}
    >
      {content}
    </div>
  );
};
