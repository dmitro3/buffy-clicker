/*
  Warnings:

  - You are about to alter the column `userId` on the `referrals` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - A unique constraint covering the columns `[userId]` on the table `Referrals` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `Referrals` MODIFY `userId` INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Referrals_userId_key` ON `Referrals`(`userId`);
