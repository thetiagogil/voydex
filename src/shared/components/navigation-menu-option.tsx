import type { ComponentPropsWithoutRef, ReactNode } from "react";

import { cn } from "@/lib/utils";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
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

const getNavigationMenuOptionClassName = ({
  active,
  className,
  muted,
}: {
  active: boolean;
  className?: string;
  muted: boolean;
}) => {
  return cn(
    "min-h-16 items-center gap-3 p-3",
    active && "bg-accent text-accent-foreground",
    muted && "opacity-65 hover:opacity-100",
    className,
  );
};

const NavigationMenuOptionContent = ({
  active,
  description,
  leading,
  leadingClassName,
  muted,
  title,
  titleAccessory,
  trailing,
}: Pick<
  NavigationMenuOptionProps,
  | "description"
  | "leading"
  | "leadingClassName"
  | "title"
  | "titleAccessory"
  | "trailing"
> & {
  active: boolean;
  muted: boolean;
}) => {
  const resolvedTrailing =
    trailing !== undefined ? (
      trailing
    ) : active ? (
      <AppIcon
        icon={appIcons.status.active}
        size="md"
        aria-hidden
        className="text-primary"
      />
    ) : null;

  return (
    <>
      {leading ? (
        <span
          className={cn(
            "bg-muted text-muted-foreground relative mt-0.5 flex size-10 shrink-0 items-center justify-center overflow-hidden rounded-lg border",
            active && "border-primary bg-primary/10 text-primary",
            muted && "border-dashed",
            leadingClassName,
          )}
        >
          {leading}
        </span>
      ) : null}
      <span className="min-w-0 flex-1">
        <span className="flex min-w-0 items-center gap-2">
          <span className="truncate font-medium">{title}</span>
          {titleAccessory}
        </span>
        {description ? (
          <span className="text-muted-foreground mt-0.5 block truncate text-xs">
            {description}
          </span>
        ) : null}
      </span>
      {resolvedTrailing ? (
        <span className="mt-1 flex shrink-0 items-center">
          {resolvedTrailing}
        </span>
      ) : null}
    </>
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
      className={cn("flex rounded-md text-sm transition-all", optionClassName)}
    >
      {content}
    </div>
  );
};
