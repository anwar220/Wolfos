# classes2.dex

.class public final Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseButtonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mButtonCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualMouseButtonEvent;
    .registers 5

    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    if-eq v0, v1, :cond_14

    new-instance v0, Landroid/hardware/input/VirtualMouseButtonEvent;

    iget v1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    iget v2, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/VirtualMouseButtonEvent;-><init>(IILandroid/hardware/input/VirtualMouseButtonEvent-IA;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual mouse button event with unset fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAction(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
    .registers 4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_11

    const/16 v0, 0xc

    if-ne p1, v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mouse button action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_11
    iput p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    return-object p0
.end method

.method public setButtonCode(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x10

    if-ne p1, v0, :cond_12

    goto :goto_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mouse button code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_1a
    iput p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    return-object p0
.end method
