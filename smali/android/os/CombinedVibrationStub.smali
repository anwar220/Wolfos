# classes3.dex

.class public interface abstract Landroid/os/CombinedVibrationStub;
.super Ljava/lang/Object;


# static fields
.field public static final PARCEL_TOKEN_DYNAMIC:I = 0x5


# direct methods
.method public static getInstance()Landroid/os/CombinedVibrationStub;
    .registers 1

    const-class v0, Landroid/os/CombinedVibrationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibrationStub;

    return-object v0
.end method


# virtual methods
.method public createDynamicEffect([III)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method
