const fullWidthClassName = "sm:col-span-6";
const halfWidthClassName = "sm:col-span-3";
const thirdWidthClassName = "sm:col-span-2";

export const getStoryDecisionOptionSpanClassName = (
  optionCount: number,
  optionIndex: number,
) => {
  if (optionCount <= 1) {
    return fullWidthClassName;
  }

  if (optionCount === 4) {
    return halfWidthClassName;
  }

  const finalRowCount = optionCount % 3;

  if (finalRowCount === 0) {
    return thirdWidthClassName;
  }

  const finalRowStartIndex = optionCount - finalRowCount;

  if (optionIndex < finalRowStartIndex) {
    return thirdWidthClassName;
  }

  return finalRowCount === 2 ? halfWidthClassName : fullWidthClassName;
};
