import { uncheckTrackingItem } from "@/services/gameplay/play-tracking";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { searchParams } = new URL(request.url);
    const trackingItemId = searchParams.get("trackingItemId");

    if (!trackingItemId) {
      return NextResponse.json(
        { error: "Tracking item ID is required" },
        { status: 400 },
      );
    }

    const result = await uncheckTrackingItem(playId, parseInt(trackingItemId));
    return NextResponse.json(result);
  } catch (error: unknown) {
    console.error("Error checking tracking item as incomplete:", error);
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to check tracking item as incomplete",
      },
      { status: 500 },
    );
  }
}
