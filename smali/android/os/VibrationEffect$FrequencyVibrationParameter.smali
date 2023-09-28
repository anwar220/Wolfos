# classes3.dex

.class final Landroid/os/VibrationEffect$FrequencyVibrationParameter;
.super Landroid/os/VibrationEffect$VibrationParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrequencyVibrationParameter"
.end annotation


# instance fields
.field public final frequencyHz:F


# direct methods
.method constructor <init>(F)V
    .registers 4

    invoke-direct {p0}, Landroid/os/VibrationEffect$VibrationParameter;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Frequency must be >= 1"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    const-string v1, "Frequency must be finite"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return-void
.end method
