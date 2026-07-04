import type { ComponentProps, ReactNode } from "react";
import Link from "next/link";
import { cn } from "@/lib/utils";
import {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  Empty,
  EmptyContent,
  EmptyDescription,
  EmptyHeader,
  EmptyTitle,
} from "@/shared/components/ui/empty";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

const resourceGridColumns = {
  five: "sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 2xl:grid-cols-5",
  three: "sm:grid-cols-2 lg:grid-cols-3",
  four: "sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4",
} as const;

type CodexBrowseMetaProps = {
  children: ReactNode;
};

export const CodexBrowseMeta = ({ children }: CodexBrowseMetaProps) => {
  return (
    <div className="text-muted-foreground text-sm leading-6">{children}</div>
  );
};

export const CodexFilterPanel = ({
  className,
  ...props
}: ComponentProps<"form">) => {
  return (
    <form
      className={cn(
        "bg-card/78 ring-app-surface-border grid gap-3 rounded-xl p-3 ring-1 backdrop-blur-md",
        className,
      )}
      {...props}
    />
  );
};

type CodexResourceGridProps = ComponentProps<"div"> & {
  columns?: keyof typeof resourceGridColumns;
};

export const CodexResourceGrid = ({
  children,
  className,
  columns = "three",
  ...props
}: CodexResourceGridProps) => {
  return (
    <div
      className={cn("grid gap-4", resourceGridColumns[columns], className)}
      {...props}
    >
      {children}
    </div>
  );
};

type CodexGenerationSectionProps = ComponentProps<"section"> & {
  title: ReactNode;
};

export const CodexGenerationSection = ({
  children,
  className,
  title,
  ...props
}: CodexGenerationSectionProps) => {
  return (
    <section className={cn("space-y-4", className)} {...props}>
      <div className="flex items-center gap-4">
        <h2 className="text-foreground shrink-0 text-lg leading-7 font-semibold">
          {title}
        </h2>
        <div className="bg-app-surface-border/70 h-px min-w-8 flex-1" />
      </div>
      {children}
    </section>
  );
};

type CodexResourceCardProps = {
  children?: ReactNode;
  className?: string;
  contentClassName?: string;
  description?: ReactNode;
  href: string;
  media?: ReactNode;
  title: ReactNode;
};

export const CodexResourceCard = ({
  children,
  className,
  contentClassName,
  description,
  href,
  media,
  title,
}: CodexResourceCardProps) => {
  return (
    <Link
      href={href}
      className="group focus-visible:ring-ring focus-visible:ring-offset-background block h-full rounded-xl focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
    >
      <Card
        className={cn(
          "bg-card/82 group-hover:bg-card/94 group-hover:ring-primary/45 h-full transition-colors",
          className,
        )}
      >
        {media ? <div className="px-(--card-spacing)">{media}</div> : null}
        <CardHeader>
          <div className="flex items-start justify-between gap-3">
            <div className="min-w-0">
              {description ? (
                <CardDescription className="truncate">
                  {description}
                </CardDescription>
              ) : null}
              <CardTitle className="truncate">{title}</CardTitle>
            </div>
            <CardAction className="text-muted-foreground transition-transform group-hover:translate-x-0.5 [&_svg]:size-4">
              <AppIcon icon={appIcons.actions.continue} aria-hidden />
            </CardAction>
          </div>
        </CardHeader>
        {children ? (
          <CardContent className={cn("flex flex-col gap-3", contentClassName)}>
            {children}
          </CardContent>
        ) : null}
      </Card>
    </Link>
  );
};

type CodexEmptyStateProps = {
  action?: ReactNode;
  description: ReactNode;
  title: ReactNode;
};

export const CodexEmptyState = ({
  action,
  description,
  title,
}: CodexEmptyStateProps) => {
  return (
    <Empty>
      <EmptyHeader>
        <EmptyTitle>{title}</EmptyTitle>
        <EmptyDescription>{description}</EmptyDescription>
      </EmptyHeader>
      {action ? <EmptyContent>{action}</EmptyContent> : null}
    </Empty>
  );
};
