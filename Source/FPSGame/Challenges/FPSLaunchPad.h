// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "Kismets/"
#include "FPSLaunchPad.generated.h"

UCLASS()
class FPSGAME_API AFPSLaunchPad : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	AFPSLaunchPad();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	UStaticMeshComponent* MashComp;

	UPROPERTY(VisibleAnywhere, Category= "Components" )
	UBoxComponent* OverlapComp;

	// Marked with ufunction to bind to overlap event
	UFUNCTION()
	void OverlapLaunchPad(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComp,
	int32 OtherBodyIndex, bool bFromSweep )

UPROPERTY(EditInstanceOnly, Category="LaunchPad")
float LaunchStrength;

UPROPERTY(EditInstanceOnly, Category="LaunchPad")
float LaunchAngle;

UPROPERTY(EditDefaultOnly, Category="LaunchPad")
UParticalSystem* ActiveLaunchPadEffect;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	
	
};
