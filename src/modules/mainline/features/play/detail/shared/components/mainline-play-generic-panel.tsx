import type { ReactNode } from "react";

import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type MainlinePlayMetric = {
  label: string;
  value: ReactNode;
};

type MainlinePlayGenericPanelProps = {
  children?: ReactNode;
  description?: ReactNode;
  metrics?: MainlinePlayMetric[];
  title: ReactNode;
};

export const MainlinePlayGenericPanel = ({
  children,
  description,
  metrics = [],
  title,
}: MainlinePlayGenericPanelProps) => {
  return (
    <Card className="bg-card/82">
      <CardHeader>
        <CardTitle>{title}</CardTitle>
        {description ? <CardDescription>{description}</CardDescription> : null}
      </CardHeader>
      <CardContent className="grid gap-4">
        {metrics.length ? (
          <div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-4">
            {metrics.map((metric) => (
              <div
                key={String(metric.label)}
                className="bg-background/42 ring-app-surface-border rounded-lg p-3 ring-1"
              >
                <div className="text-muted-foreground text-xs">
                  {metric.label}
                </div>
                <div className="mt-1 font-medium">{metric.value}</div>
              </div>
            ))}
          </div>
        ) : null}
        {children}
      </CardContent>
    </Card>
  );
};

type MainlinePlaySimpleListProps<TItem> = {
  emptyLabel: ReactNode;
  getKey: (item: TItem, index: number) => string;
  items: TItem[];
  renderItem: (item: TItem) => ReactNode;
};

export const MainlinePlaySimpleList = <TItem,>({
  emptyLabel,
  getKey,
  items,
  renderItem,
}: MainlinePlaySimpleListProps<TItem>) => {
  if (!items.length) {
    return <p className="text-muted-foreground text-sm">{emptyLabel}</p>;
  }

  return (
    <div className="divide-app-surface-border/60 divide-y">
      {items.map((item, index) => (
        <div key={getKey(item, index)} className="py-3 first:pt-0 last:pb-0">
          {renderItem(item)}
        </div>
      ))}
    </div>
  );
};
