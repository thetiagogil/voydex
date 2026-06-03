import { cn } from "@/lib/utils/cn";
import { Card } from "@/shared/components/ui/card";
import {
  STATUS_VARIANT_META,
  type StatusVariant,
} from "@/shared/constants/play-statuses";

type StatCardProps = {
  title: number;
  description: string;
  variant: StatusVariant;
}

export const StatCard = ({ title, description, variant }: StatCardProps) => {
  return (
    <Card className="box-shadow min-w-[88px] gap-0 p-3 text-center">
      <div
        className={cn(
          "font-display text-foreground text-xl font-bold",
          STATUS_VARIANT_META[variant].colors.text,
        )}
      >
        {title}
      </div>
      <div className="text-muted-foreground text-xs">{description}</div>
    </Card>
  );
};
