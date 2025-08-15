-- AlterTable
ALTER TABLE "Hostel" ADD COLUMN     "facilities" TEXT[] DEFAULT ARRAY[]::TEXT[],
ADD COLUMN     "houseRules" TEXT[] DEFAULT ARRAY[]::TEXT[];

-- AlterTable
ALTER TABLE "RoomType" ADD COLUMN     "images" TEXT[];
