import { getPlayOverview } from "@/features/play/server/play-overview";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId)
      return NextResponse.json({ error: "Missing play id" }, { status: 400 });

    const { data, error } = await getPlayOverview(playId);

    if (error)
      return NextResponse.json(
        {
          error:
            typeof error === "object" && error !== null && "message" in error
              ? (error as { message: string }).message
              : String(error),
        },
        { status: 500 },
      );

    if (!data)
      return NextResponse.json({ error: "Play not found" }, { status: 404 });

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
