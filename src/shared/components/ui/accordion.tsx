import { Accordion as AccordionPrimitive } from "@base-ui/react/accordion";
import { cn } from "@/shared/utils/cn";
import { ChevronDownIcon } from "lucide-react";

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

/* A row that opens in place (v3 `.mx-row`): Nunito 800, a quiet chevron that turns when open. */
const AccordionTrigger = ({
  className,
  children,
  ...props
}: AccordionPrimitive.Trigger.Props) => {
  return (
    <AccordionPrimitive.Header className="flex">
      <AccordionPrimitive.Trigger
        data-slot="accordion-trigger"
        className={cn(
          "group/accordion-trigger text-15 text-ink focus-visible:outline-focus relative flex min-h-11 flex-1 items-center justify-between gap-3 rounded-sm py-2.5 text-left font-extrabold transition-colors outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid aria-disabled:pointer-events-none aria-disabled:opacity-50",
          className,
        )}
        {...props}
      >
        {children}
        <ChevronDownIcon
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
