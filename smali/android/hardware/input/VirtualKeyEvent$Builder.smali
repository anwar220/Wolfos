# classes2.dex

.class public final Landroid/hardware/input/VirtualKeyEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualKeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mKeyCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualKeyEvent;
    .registers 5

    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    if-eq v0, v1, :cond_14

    new-instance v0, Landroid/hardware/input/VirtualKeyEvent;

    iget v1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    iget v2, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/VirtualKeyEvent;-><init>(IILandroid/hardware/input/VirtualKeyEvent-IA;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual key event with unset fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAction(I)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .registers 4

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_e
    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    return-object p0
.end method

.method public setKeyCode(I)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    return-object p0
.end method
