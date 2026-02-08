import { Card } from "@/components/ui/card";
import { STATUS_COLORS, StatusType } from "@/lib/constants/styles";
import { cn } from "@/lib/utils/cn";

interface StatCardProps {
  title: number;
  description: string;
  variant: StatusType;
}

export const StatCard = ({ title, description, variant }: StatCardProps) => {
  return (
    <Card className="box-shadow min-w-[88px] gap-0 p-3 text-center">
      <div
        className={cn(
          "font-display text-foreground text-xl font-bold",
          STATUS_COLORS[variant]?.text,
        )}
      >
        {title}
      </div>
      <div className="text-muted-foreground text-xs">{description}</div>
    </Card>
  );
};
