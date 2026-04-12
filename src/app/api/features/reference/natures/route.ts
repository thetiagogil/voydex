import { getNaturesWithStats } from "@/features/play/server/reference-pokemon";
import { NextResponse } from "next/server";

export async function GET() {
  try {
    const { data, error } = await getNaturesWithStats();

    if (error)
      return NextResponse.json(
        { error: error instanceof Error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
