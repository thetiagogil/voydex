import { Card } from "@/components/ui/card";

interface StatCardProps {
  title: number;
  description: string;
  variant?: "default" | "primary" | "orange" | "green" | "yellow";
}

const textStyles = {
  default: "",
  primary: "text-blue-600 dark:text-blue-400",
  orange: "text-orange-600 dark:text-orange-400",
  green: "text-green-600 dark:text-green-400",
  yellow: "text-yellow-600 dark:text-yellow-400",
};

export const StatCard = ({ title, description, variant }: StatCardProps) => {
  return (
    <Card className="box-shadow min-w-[88px] gap-0 p-3 text-center">
      <div
        className={`font-display text-foreground text-xl font-bold ${textStyles[variant || "default"]}`}
      >
        {title}
      </div>
      <div className="text-muted-foreground text-xs">{description}</div>
    </Card>
  );
};
