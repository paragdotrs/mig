-- CreateEnum
CREATE TYPE "RoomSize" AS ENUM ('SMALL', 'BIG');

-- AlterTable
ALTER TABLE "City" ALTER COLUMN "updatedAt" DROP DEFAULT;

-- AlterTable
ALTER TABLE "RoomType" ADD COLUMN     "size" "RoomSize";
