// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "FPSBlackHole.generated.h"

UCLASS()
class FPSGAME_API AFPSBlackHole : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	AFPSBlackHole();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	UPROPERTY(VisibleAnyWhere, Category = "Components")
	UStaticMeshComponent* MeshComp;

	/* Inner sphere destroys the overlapping component*/
	UPROPERTY(VisibleAnyWhere, Category = "Components")
	class USphereComponent* InnerSphereComponent;

	/* Outer sphere pulls components(that are physically simulating) towards the centre of the actor*/
	UPROPERTY(VisibleAnyWhere, Category = "Components")
		class USphereComponent* OuterSpereConponent;

	// Marked with uFunction to bind to overlap event
	UFUNCTION()
	void OverlapInnerSphere(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComp,int32 otherBodyIndex, bool bFromSweep, bool bFromSweep, const FHitResult& SweepResult)

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	
	
};
