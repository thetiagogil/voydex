import { checkTrackingItem } from "@/services/gameplay/play-tracking";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { trackingItemId } = await request.json();

    if (!trackingItemId) {
      return NextResponse.json(
        { error: "Tracking item ID is required" },
        { status: 400 },
      );
    }

    const result = await checkTrackingItem(playId, trackingItemId);
    return NextResponse.json(result);
  } catch (error: unknown) {
    console.error("Error checking tracking item as complete:", error);
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to check tracking item as complete",
      },
      { status: 500 },
    );
  }
}
