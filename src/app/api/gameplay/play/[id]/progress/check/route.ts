import { checkProgressItem } from "@/services/gameplay/play-progress";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { progressItemId } = await request.json();

    if (!progressItemId) {
      return NextResponse.json(
        { error: "Progress item ID is required" },
        { status: 400 },
      );
    }

    const result = await checkProgressItem(playId, progressItemId);
    return NextResponse.json(result);
  } catch (error: unknown) {
    console.error("Error checking progress item as complete:", error);
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to check progress item as complete",
      },
      { status: 500 },
    );
  }
}
