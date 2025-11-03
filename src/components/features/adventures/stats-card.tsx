import { Card, CardContent } from "@/components/ui/card";

interface StatsCardProps {
  icon: React.ReactNode;
  value: string | number;
  label: string;
  description?: string;
}

export const StatsCard = ({
  icon,
  value,
  label,
  description,
}: StatsCardProps) => {
  return (
    <Card>
      <CardContent>
        <div className="flex items-start gap-4">
          <div className="bg-primary/10 text-primary rounded-lg p-2">
            {icon}
          </div>
          <div className="flex-1 space-y-1">
            <p className="text-2xl font-bold">{value}</p>
            <p className="text-muted-foreground text-sm font-medium">{label}</p>
            {description && (
              <p className="text-muted-foreground text-xs">{description}</p>
            )}
          </div>
        </div>
      </CardContent>
    </Card>
  );
};
