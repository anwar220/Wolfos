# classes3.dex

.class public Landroid/os/VibrationEffect$VibrationParameter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VibrationParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;
    .registers 2

    new-instance v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    invoke-direct {v0, p0}, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;-><init>(F)V

    return-object v0
.end method

.method public static targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;
    .registers 2

    new-instance v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    invoke-direct {v0, p0}, Landroid/os/VibrationEffect$FrequencyVibrationParameter;-><init>(F)V

    return-object v0
.end method
