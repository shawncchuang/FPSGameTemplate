// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/GameStateBase.h"
#include "FPSGameState.generated.h"

/**
 * 
 */
UCLASS()
class FPSGAME_API AFPSGameState : public AGameStateBase
{
	GENERATED_BODY()
	
	
public:
    // this function were to be called from server it gets to sent to all clients and will run on alll clients including the server
    UFUNCTION(NetMulticast, Reliable)
    void MulticastOnMissionComplete(APawn* InstigatorPawn, bool bMissionSuccess);
	
};
