import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";

type DashboardMetricProps = {
  description: string;
  icon: AppIconComponent;
  label: string;
  value: string;
};

export const DashboardMetric = ({
  description,
  icon: Icon,
  label,
  value,
}: DashboardMetricProps) => {
  return (
    <Card className="bg-card/82">
      <CardHeader className="grid-cols-[auto_1fr] gap-x-3">
        <div className="bg-primary/10 text-primary row-span-2 flex size-10 items-center justify-center rounded-lg [&_svg]:size-5">
          <AppIcon icon={Icon} aria-hidden />
        </div>
        <CardDescription>{label}</CardDescription>
        <CardTitle className="text-2xl">{value}</CardTitle>
      </CardHeader>
      <CardContent>
        <p className="text-muted-foreground text-sm leading-6">{description}</p>
      </CardContent>
    </Card>
  );
};
