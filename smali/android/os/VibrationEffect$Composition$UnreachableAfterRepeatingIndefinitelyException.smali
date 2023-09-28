# classes3.dex

.class public final Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;
.super Ljava/lang/IllegalStateException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect$Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnreachableAfterRepeatingIndefinitelyException"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Compositions ending in an indefinitely repeating effect can\'t be extended"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method
