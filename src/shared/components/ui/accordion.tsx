import { Accordion as AccordionPrimitive } from "@base-ui/react/accordion";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

const Accordion = ({ className, ...props }: AccordionPrimitive.Root.Props) => {
  return (
    <AccordionPrimitive.Root
      data-slot="accordion"
      className={cn("flex w-full flex-col", className)}
      {...props}
    />
  );
};

const AccordionItem = ({
  className,
  ...props
}: AccordionPrimitive.Item.Props) => {
  return (
    <AccordionPrimitive.Item
      data-slot="accordion-item"
      className={cn("border-line not-last:border-b", className)}
      {...props}
    />
  );
};

type AccordionHeadingLevel = 2 | 3 | 4 | 5 | 6;

const headingTags = {
  2: "h2",
  3: "h3",
  4: "h4",
  5: "h5",
  6: "h6",
} as const;

/*
 * A row that opens in place (v3 `.mx-row`): Nunito 800, a quiet chevron that
 * turns when open. Its header is a plain div unless `headingLevel` makes it a
 * heading that fits the page's outline; the trigger stays Nunito either way.
 */
const AccordionTrigger = ({
  className,
  children,
  headingLevel,
  ...props
}: AccordionPrimitive.Trigger.Props & {
  headingLevel?: AccordionHeadingLevel;
}) => {
  const HeadingTag = headingLevel ? headingTags[headingLevel] : "div";

  return (
    <AccordionPrimitive.Header render={<HeadingTag />} className="flex">
      <AccordionPrimitive.Trigger
        data-slot="accordion-trigger"
        className={cn(
          "group/accordion-trigger text-15 text-ink focus-ring relative flex min-h-11 flex-1 items-center justify-between gap-3 rounded-sm py-2.5 text-left font-sans font-extrabold tracking-normal transition-colors aria-disabled:pointer-events-none aria-disabled:opacity-50",
          className,
        )}
        {...props}
      >
        {children}
        <AppIcon
          icon={appIcons.actions.expand}
          data-slot="accordion-trigger-icon"
          className="text-ink-3 pointer-events-none ml-auto size-4 shrink-0 transition-transform duration-200 group-aria-expanded/accordion-trigger:rotate-180"
        />
      </AccordionPrimitive.Trigger>
    </AccordionPrimitive.Header>
  );
};

const AccordionContent = ({
  className,
  children,
  ...props
}: AccordionPrimitive.Panel.Props) => {
  return (
    <AccordionPrimitive.Panel
      data-slot="accordion-content"
      className="data-open:animate-accordion-down data-closed:animate-accordion-up text-14 text-ink-2 overflow-hidden"
      {...props}
    >
      <div
        className={cn(
          "[&_a]:text-link h-(--accordion-panel-height) pt-0 pb-3 data-ending-style:h-0 data-starting-style:h-0 [&_a]:font-extrabold [&_a]:underline [&_a]:underline-offset-3 [&_p:not(:last-child)]:mb-3",
          className,
        )}
      >
        {children}
      </div>
    </AccordionPrimitive.Panel>
  );
};

export { Accordion, AccordionItem, AccordionTrigger, AccordionContent };
