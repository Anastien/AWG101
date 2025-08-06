/*
 * MXT2144.c
 *
 *  Created on: Jan 2, 2025
 *      Author: Anas
 */
#include <MXT2144.h>

/*Configuration for PSSI*/
void ADC_Init()
{
	PSSI_Handle.Instance = PSSI;
	PSSI_Handle.Init.BusWidth = HAL_PSSI_16LINES;
	PSSI_Handle.Init.DataWidth = HAL_PSSI_16BITS;
	PSSI_Handle.Init.ControlSignal = HAL_PSSI_DE_ENABLE;
	HAL_PSSI_MspInit()

	if(HAL_PSSI_Init(&PSSI_Handle) != HAL_OK)
	{
	  Error_Handler();
	}
}

void send_to_adc()
{
	/* Start transmitting the received & modified data */
	if(HAL_PSSI_Transmit_DMA(&PSSI_Handle, (uint32_t*)pData8_M_TRSMT, sizeof(pData8_M_TRSMT)/4)!= HAL_OK)
	{
		Error_Handler();
	}

	HAL_Delay(2);

	while(PSSI_HAL_PSSI_TransmitComplete_count != 1)
	{
		/* wait until transmit data is complete */
	}
}


