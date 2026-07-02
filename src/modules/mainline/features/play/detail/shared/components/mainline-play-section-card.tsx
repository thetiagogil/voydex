import type { ReactNode } from "react";

import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { InfoTile } from "@/shared/components/info-tile";

type MainlinePlayMetric = {
  label: string;
  value: ReactNode;
};

type MainlinePlaySectionCardProps = {
  children?: ReactNode;
  description?: ReactNode;
  metrics?: MainlinePlayMetric[];
  title: ReactNode;
};

export const MainlinePlaySectionCard = ({
  children,
  description,
  metrics = [],
  title,
}: MainlinePlaySectionCardProps) => {
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
              <InfoTile
                key={String(metric.label)}
                className="bg-background/42"
                label={metric.label}
              >
                {metric.value}
              </InfoTile>
            ))}
          </div>
        ) : null}
        {children}
      </CardContent>
    </Card>
  );
};

type MainlinePlaySectionListProps<TItem> = {
  emptyLabel: ReactNode;
  getKey: (item: TItem, index: number) => string;
  items: TItem[];
  renderItem: (item: TItem) => ReactNode;
};

export const MainlinePlaySectionList = <TItem,>({
  emptyLabel,
  getKey,
  items,
  renderItem,
}: MainlinePlaySectionListProps<TItem>) => {
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
