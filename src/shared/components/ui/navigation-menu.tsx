import { NavigationMenu as NavigationMenuPrimitive } from "@base-ui/react/navigation-menu";
import { cva } from "class-variance-authority";
import { cn } from "@/shared/utils/cn";
import { ChevronDownIcon } from "lucide-react";

const NavigationMenu = ({
  align = "start",
  className,
  children,
  ...props
}: NavigationMenuPrimitive.Root.Props &
  Pick<NavigationMenuPrimitive.Positioner.Props, "align">) => {
  return (
    <NavigationMenuPrimitive.Root
      data-slot="navigation-menu"
      className={cn(
        "group/navigation-menu relative flex max-w-max flex-1 items-center justify-center",
        className,
      )}
      {...props}
    >
      {children}
      <NavigationMenuPositioner align={align} />
    </NavigationMenuPrimitive.Root>
  );
};

const NavigationMenuList = ({
  className,
  ...props
}: React.ComponentPropsWithRef<typeof NavigationMenuPrimitive.List>) => {
  return (
    <NavigationMenuPrimitive.List
      data-slot="navigation-menu-list"
      className={cn(
        "group flex flex-1 list-none items-center justify-center gap-0",
        className,
      )}
      {...props}
    />
  );
};

const NavigationMenuItem = ({
  className,
  ...props
}: React.ComponentPropsWithRef<typeof NavigationMenuPrimitive.Item>) => {
  return (
    <NavigationMenuPrimitive.Item
      data-slot="navigation-menu-item"
      className={cn("relative", className)}
      {...props}
    />
  );
};

const navigationMenuTriggerStyle = cva(
  "group/navigation-menu-trigger inline-flex h-10 w-max items-center justify-center rounded-full px-3 py-1.5 text-14 font-bold transition-colors outline-none hover:bg-hover focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-focus focus-visible:outline-solid disabled:pointer-events-none disabled:opacity-50 data-popup-open:bg-hover data-open:bg-hover",
);

const NavigationMenuTrigger = ({
  className,
  children,
  ...props
}: NavigationMenuPrimitive.Trigger.Props) => {
  return (
    <NavigationMenuPrimitive.Trigger
      data-slot="navigation-menu-trigger"
      className={cn(navigationMenuTriggerStyle(), "group", className)}
      {...props}
    >
      {children}{" "}
      <ChevronDownIcon
        className="relative top-px ml-1 size-3 transition duration-300 group-data-open/navigation-menu-trigger:rotate-180 group-data-popup-open/navigation-menu-trigger:rotate-180"
        aria-hidden="true"
      />
    </NavigationMenuPrimitive.Trigger>
  );
};

const NavigationMenuContent = ({
  className,
  ...props
}: NavigationMenuPrimitive.Content.Props) => {
  return (
    <NavigationMenuPrimitive.Content
      data-slot="navigation-menu-content"
      className={cn(
        "data-ending-style:data-activation-direction=left:translate-x-1/2 data-ending-style:data-activation-direction=right:-translate-x-1/2 data-starting-style:data-activation-direction=left:-translate-x-1/2 data-starting-style:data-activation-direction=right:translate-x-1/2 data-[motion=from-end]:slide-in-from-right-52 data-[motion=from-start]:slide-in-from-left-52 data-[motion=to-end]:slide-out-to-right-52 data-[motion=to-start]:slide-out-to-left-52 data-[motion^=from-]:animate-in data-[motion^=from-]:fade-in data-[motion^=to-]:animate-out data-[motion^=to-]:fade-out h-full w-auto p-1 transition-[opacity,transform,translate] duration-[0.35s] ease-[cubic-bezier(0.22,1,0.36,1)] data-ending-style:opacity-0 data-starting-style:opacity-0",
        className,
      )}
      {...props}
    />
  );
};

const NavigationMenuPositioner = ({
  className,
  side = "bottom",
  sideOffset = 8,
  align = "start",
  alignOffset = 0,
  ...props
}: NavigationMenuPrimitive.Positioner.Props) => {
  return (
    <NavigationMenuPrimitive.Portal>
      <NavigationMenuPrimitive.Positioner
        side={side}
        sideOffset={sideOffset}
        align={align}
        alignOffset={alignOffset}
        className={cn(
          "isolate z-50 h-(--positioner-height) w-(--positioner-width) max-w-(--available-width) transition-[top,left,right,bottom] duration-[0.35s] ease-[cubic-bezier(0.22,1,0.36,1)] data-instant:transition-none data-[side=bottom]:before:-top-2.5 data-[side=bottom]:before:right-0 data-[side=bottom]:before:left-0",
          className,
        )}
        {...props}
      >
        <NavigationMenuPrimitive.Popup className="data-[ending-style]:easing-[ease] xs:w-(--popup-width) bg-surface text-ink shadow-menu relative h-(--popup-height) w-(--popup-width) origin-(--transform-origin) rounded-lg transition-[opacity,transform,width,height,scale,translate] duration-[0.35s] ease-[cubic-bezier(0.22,1,0.36,1)] outline-none data-ending-style:scale-90 data-ending-style:opacity-0 data-ending-style:duration-150 data-starting-style:scale-90 data-starting-style:opacity-0">
          <NavigationMenuPrimitive.Viewport className="relative size-full overflow-hidden" />
        </NavigationMenuPrimitive.Popup>
      </NavigationMenuPrimitive.Positioner>
    </NavigationMenuPrimitive.Portal>
  );
};

const NavigationMenuLink = ({
  className,
  ...props
}: NavigationMenuPrimitive.Link.Props) => {
  return (
    <NavigationMenuPrimitive.Link
      data-slot="navigation-menu-link"
      className={cn(
        "hover:bg-hover focus:bg-hover data-active:bg-select-soft data-active:text-select-ink text-14 focus-visible:outline-focus in-data-[slot=navigation-menu-content]:text-15 flex items-center gap-2 rounded-full p-2 font-bold transition-colors outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid in-data-[slot=navigation-menu-content]:rounded-md in-data-[slot=navigation-menu-content]:focus-visible:-outline-offset-3 [&_svg:not([class*='size-'])]:size-4",
        className,
      )}
      {...props}
    />
  );
};

export {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
  NavigationMenuTrigger,
  navigationMenuTriggerStyle,
  NavigationMenuPositioner,
};
