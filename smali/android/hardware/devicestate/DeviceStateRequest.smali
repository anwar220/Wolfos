# classes.dex

.class public final Landroid/hardware/devicestate/DeviceStateRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateRequest$Callback;,
        Landroid/hardware/devicestate/DeviceStateRequest$Builder;,
        Landroid/hardware/devicestate/DeviceStateRequest$RequestFlags;
    }
.end annotation


# static fields
.field public static final FLAG_CANCEL_WHEN_BASE_CHANGES:I = 0x1

.field public static final FLAG_CANCEL_WHEN_FOLD_CHANGES:I = 0x10000


# instance fields
.field private final mFlags:I

.field private final mRequestedState:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/devicestate/DeviceStateRequest;->mRequestedState:I

    iput p2, p0, Landroid/hardware/devicestate/DeviceStateRequest;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/devicestate/DeviceStateRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/devicestate/DeviceStateRequest;-><init>(II)V

    return-void
.end method

.method public static newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;
    .registers 3

    new-instance v0, Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;-><init>(ILandroid/hardware/devicestate/DeviceStateRequest$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/hardware/devicestate/DeviceStateRequest;->mFlags:I

    return v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Landroid/hardware/devicestate/DeviceStateRequest;->mRequestedState:I

    return v0
.end method
