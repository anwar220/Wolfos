# classes4.dex

.class public interface abstract Lmiui/utils/GetCameraOccupierStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Lmiui/utils/GetCameraOccupierStub;
    .registers 1

    const-class v0, Lmiui/utils/GetCameraOccupierStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/utils/GetCameraOccupierStub;

    return-object v0
.end method


# virtual methods
.method public abstract getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract needDisableCutout(Ljava/lang/String;)Z
.end method

.method public abstract setCoveredPackageName()V
.end method
