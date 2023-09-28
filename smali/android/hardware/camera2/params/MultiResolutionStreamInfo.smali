# classes.dex

.class public Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
.super Ljava/lang/Object;


# instance fields
.field private mPhysicalCameraId:Ljava/lang/String;

.field private mStreamHeight:I

.field private mStreamWidth:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_27

    if-lez p2, :cond_e

    iput p1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    iput p2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    iput-object p3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    if-eqz v2, :cond_29

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iget v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    if-ne v3, v4, :cond_27

    iget v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    nop

    :goto_28
    return v0

    :cond_29
    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    return v0
.end method

.method public getPhysicalCameraId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
