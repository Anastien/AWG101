/*
 * MXT2144.h
 *
 *  Created on: Jan 2, 2025
 *      Author: Admin
 */
#include <stm32h7xx_hal_pssi.h>
#ifndef AWG101_DRIVERS_INC_MXT2144_H_
#define AWG101_DRIVERS_INC_MXT2144_H_

PSSI_HandleTypeDef PSSI_Handle;

ALIGN_32BYTES (int16_t pD16_ADC[64]);  /* Data to transmit from Slave */
void ADC_Init();
void HAL_PSSI_TxCpltCallback(PSSI_HandleTypeDef *hpssi);
void HAL_PSSI_ErrorCallback(PSSI_HandleTypeDef *hpssi);



void send_to_adc(pD16_ADC *buffer) /* Send data in buffer to ADC.*/


#endif /* AWG101_DRIVERS_INC_MXT2144_H_ */
