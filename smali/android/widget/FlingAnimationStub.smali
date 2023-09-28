# classes4.dex

.class public interface abstract Landroid/widget/FlingAnimationStub;
.super Ljava/lang/Object;


# direct methods
.method public static newInstance()Landroid/widget/FlingAnimationStub;
    .registers 1

    const-class v0, Landroid/widget/FlingAnimationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FlingAnimationStub;

    return-object v0
.end method


# virtual methods
.method public adjustDuration(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public flywheel()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFlingDistance(I)D
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFlingDuration(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getFlingVelocityThreshold()I
    .registers 2

    const/16 v0, 0x1f4

    return v0
.end method

.method public getFlywheelParam1()D
    .registers 3

    const-wide v0, 0x3f40624dd2f1a9fcL  # 5.0E-4

    return-wide v0
.end method

.method public getFlywheelParam2()D
    .registers 3

    const-wide v0, 0x3ffccccccccccccdL  # 1.8

    return-wide v0
.end method

.method public getFlywheelParam3()I
    .registers 2

    const/16 v0, 0x3a98

    return v0
.end method

.method public getFlywheelVelocityThreshold()I
    .registers 2

    const/16 v0, 0xbb8

    return v0
.end method

.method public getTouchFlywheelVelocityThreshold()I
    .registers 2

    const/16 v0, 0x3e8

    return v0
.end method

.method public getUpdateDistance(FFJ)D
    .registers 7

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUpdateVelocity(FJ)F
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public isOptimizeEnable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
