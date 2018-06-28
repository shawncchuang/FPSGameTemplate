// Fill out your copyright notice in the Description page of Project Settings.

#include "FPSLaunchPad.h"
#include "Compoents/StaticMeshComponent.h"
#include "Components/ArrowComponent.h"
#include "GameFramework/Character.h"
#include "Kismet/GameplayStatic.h"

// Sets default values
AFPSLaunchPad::AFPSLaunchPad()
{
 	OverlapComp = CreateDefaultSubobject<UBoxcomponent>(TEXT("OverlapComp"));
	 OverlapComp->SetBoxExtent(FVctor(75,75,50));
RootComponent = OverlapComp;

MechComp = CreateDefaultSubobject<UStaticMechComponent>(TEXT("MeshComp"));
MechComp->SetupAttachment(RootComponent);

//Bind to Event
OverlapComp->OnComponentBeginOverlap.AddDymanic(this, &AFPSLaunchPad::OverlapLaunchPad);

LaunchStreangth = 1500;
LauchPitchAngle = 35.0f;

}

void AFPSLaunchPad::OverlapLaunchPad(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComp,
	int32 OtherBodyIndex, bool bFromSweep)
	{



	}