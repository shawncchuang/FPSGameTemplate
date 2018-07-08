// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "FPSAIGuard.generated.h"

UENUM(BlueprintType)
enum class EAIState : uint8
{
	Idle,
	Suspicious,
	Alerted

};

UCLASS()
class FPSGAME_API AFPSAIGuard : public ACharacter
{
	GENERATED_BODY()

  public:
	// Sets default values for this character's properties
	AFPSAIGuard();

  protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	class UPawnSensingComponent *PawnSensingComp;

	UFUNCTION()
	void OnPawnSeen(APawn *SeenPawn);

	UFUNCTION()
	void OnNoiseHeard(APawn *NoiseInstigator, const FVector &Location, float Volume);

	FRotator OriginalRotation;

	UFUNCTION()
	void ResetOrientation();

	FTimerHandle TimerHandle_ResetOrientation;

	EAIState GuardState;

	void SetGuardState(EAIState NewSate);

	UFUNCTION(BlueprintImplementableEvent, Category = "AI")
	void OnStateChanged(EAIState NewState);

  public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;

  protected:
	/* Let the guard go on patrol */
	UPROPERTY(EditInstanceOnly, Category = "AI")
	bool bPatrol;

	/* First of two points to patrol between */
	UPROPERTY(EditInstanceOnly, Category = "AI", meta = (EditCondition = "bPatrol"))
	AActor *FirstPatrolPoint;

	/* Second of two points to patrol between */
	UPROPERTY(EditInstanceOnly, Category = " AI", meta = (EditCondition = "bPatrol"))
	AActor *SecondPatrolPoint;

	//The current point the actor is either moving to or standing at
	AActor *CurrentPatrolPoint;

	/*
	under Navigation System there's a checkbox to allow client side navigation
	*/
	void MoveToNextPatrolPoint();
};
