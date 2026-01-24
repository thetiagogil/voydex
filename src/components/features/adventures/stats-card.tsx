import { Card, CardContent } from "@/components/ui/card";

interface StatsCardProps {
  children: React.ReactNode;
}

export const StatsCard = ({ children }: StatsCardProps) => {
  return (
    <Card>
      <CardContent>{children}</CardContent>
    </Card>
  );
};
