# classes3.dex

.class final Landroid/os/VibrationEffect$AmplitudeVibrationParameter;
.super Landroid/os/VibrationEffect$VibrationParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmplitudeVibrationParameter"
.end annotation


# instance fields
.field public final amplitude:F


# direct methods
.method constructor <init>(F)V
    .registers 4

    invoke-direct {p0}, Landroid/os/VibrationEffect$VibrationParameter;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_10

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v1, "Amplitude must be within [0,1]"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return-void
.end method
