export const getPlayStatusVariant = (
  status: PlayStatus,
): "default" | "secondary" | "outline" | "destructive" => {
  switch (status) {
    case "active":
      return "default";
    case "completed":
      return "secondary";
    case "dropped":
      return "destructive";
    case "paused":
      return "outline";
  }
};
