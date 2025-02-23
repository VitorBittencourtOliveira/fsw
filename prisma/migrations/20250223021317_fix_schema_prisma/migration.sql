/*
  Warnings:

  - You are about to drop the column `prince` on the `Product` table. All the data in the column will be lost.
  - Changed the type of `consumptionMethod` on the `Order` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `price` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "ConsumptionMethod" AS ENUM ('TAKEAWAY', 'DINE_IN');

-- AlterTable
ALTER TABLE "Order" DROP COLUMN "consumptionMethod",
ADD COLUMN     "consumptionMethod" "ConsumptionMethod" NOT NULL;

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "prince",
ADD COLUMN     "price" DOUBLE PRECISION NOT NULL;

-- DropEnum
DROP TYPE "consumptionMethod";
