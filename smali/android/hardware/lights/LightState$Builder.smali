# classes2.dex

.class public final Landroid/hardware/lights/LightState$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/LightState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsForPlayerId:Z

.field private mValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    iput-boolean v0, p0, Landroid/hardware/lights/LightState$Builder;->mIsForPlayerId:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/lights/LightState;
    .registers 4

    iget-boolean v0, p0, Landroid/hardware/lights/LightState$Builder;->mIsForPlayerId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    new-instance v0, Landroid/hardware/lights/LightState;

    iget v2, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    invoke-direct {v0, v2, v1}, Landroid/hardware/lights/LightState;-><init>(II)V

    return-object v0

    :cond_d
    new-instance v0, Landroid/hardware/lights/LightState;

    iget v2, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/lights/LightState;-><init>(II)V

    return-object v0
.end method

.method public setColor(I)Landroid/hardware/lights/LightState$Builder;
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/lights/LightState$Builder;->mIsForPlayerId:Z

    iput p1, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    return-object p0
.end method

.method public setPlayerId(I)Landroid/hardware/lights/LightState$Builder;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/lights/LightState$Builder;->mIsForPlayerId:Z

    iput p1, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    return-object p0
.end method
