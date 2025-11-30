import { uncheckProgressItem } from "@/services/gameplay/play-progress-uncheck";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { searchParams } = new URL(request.url);
    const progressItemId = searchParams.get("progressItemId");

    if (!progressItemId) {
      return NextResponse.json(
        { error: "Progress item ID is required" },
        { status: 400 },
      );
    }

    const result = await uncheckProgressItem(playId, parseInt(progressItemId));
    return NextResponse.json(result);
  } catch (error: any) {
    console.error("Error checking progress item as incomplete:", error);
    return NextResponse.json(
      { error: error.message || "Failed to check progress item as incomplete" },
      { status: 500 },
    );
  }
}
