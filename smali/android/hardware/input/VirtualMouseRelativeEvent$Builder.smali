# classes2.dex

.class public final Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseRelativeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRelativeX:F

.field private mRelativeY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualMouseRelativeEvent;
    .registers 5

    new-instance v0, Landroid/hardware/input/VirtualMouseRelativeEvent;

    iget v1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeX:F

    iget v2, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeY:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(FFLandroid/hardware/input/VirtualMouseRelativeEvent-IA;)V

    return-object v0
.end method

.method public setRelativeX(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeX:F

    return-object p0
.end method

.method public setRelativeY(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeY:F

    return-object p0
.end method
