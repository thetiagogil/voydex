import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Checkbox } from "@/components/ui/checkbox";
import { Progress } from "@/components/ui/progress";
import { type Playthrough, type ProgressItem } from "@/lib/mock-data";
import { Eye, MapPin, Shield, Trophy } from "lucide-react";

interface ProgressTrackingProps {
  playthrough: Playthrough;
}

export function ProgressTracking({ playthrough }: ProgressTrackingProps) {
  const getProgressTypeIcon = (type: ProgressItem["type"]) => {
    switch (type) {
      case "gym":
        return Trophy;
      case "elite4":
        return Shield;
      case "champion":
        return Trophy;
      case "pokedex":
        return Eye;
      case "story":
        return MapPin;
      default:
        return Trophy;
    }
  };

  return (
    <Card>
      <CardHeader>
        <CardTitle>Progress Tracking</CardTitle>
      </CardHeader>
      <CardContent>
        <div className="space-y-4">
          {playthrough.progressItems.map((item) => {
            const Icon = getProgressTypeIcon(item.type);
            return (
              <Card key={item.id}>
                <CardContent className="pt-4">
                  <div className="flex items-start gap-4">
                    <div className="mt-1">
                      <Icon className="h-5 w-5 text-muted-foreground" />
                    </div>
                    <div className="flex-1 space-y-2">
                      <div className="flex items-start justify-between">
                        <div>
                          <h3 className="font-semibold">{item.name}</h3>
                          <p className="text-sm text-muted-foreground">
                            {item.description}
                          </p>
                        </div>
                        <div className="flex items-center gap-2">
                          <Checkbox checked={item.completed} />
                          {item.completed ? (
                            <Badge className="bg-green-500">Completed</Badge>
                          ) : (
                            <Badge variant="outline">In Progress</Badge>
                          )}
                          {item.completedDate && (
                            <Badge variant="outline" className="text-xs">
                              {new Date(
                                item.completedDate
                              ).toLocaleDateString()}
                            </Badge>
                          )}
                        </div>
                      </div>
                      {item.progress !== undefined && item.total && (
                        <div className="flex items-center gap-2">
                          <Progress
                            value={(item.progress / item.total) * 100}
                            className="flex-1"
                          />
                          <span className="text-xs text-muted-foreground">
                            {item.progress}/{item.total}
                          </span>
                        </div>
                      )}
                    </div>
                  </div>
                </CardContent>
              </Card>
            );
          })}
        </div>
      </CardContent>
    </Card>
  );
}
