import { checkTrackingItemBulk } from "@/services/gameplay/play-tracking";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await context.params;
    const body = await request.json();
    const { trackingItemIds, categoryId } = body;

    if (!trackingItemIds || !Array.isArray(trackingItemIds)) {
      return NextResponse.json(
        { error: "trackingItemIds array is required" },
        { status: 400 },
      );
    }

    if (!categoryId) {
      return NextResponse.json(
        { error: "categoryId is required" },
        { status: 400 },
      );
    }

    await checkTrackingItemBulk(playId, trackingItemIds);

    return NextResponse.json({ success: true });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
