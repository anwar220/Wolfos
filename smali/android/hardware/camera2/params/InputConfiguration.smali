# classes.dex

.class public final Landroid/hardware/camera2/params/InputConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mIsMultiResolution:Z

.field private final mWidth:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    iput-boolean p4, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Input multi-resolution stream info"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/hardware/camera2/params/InputConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    if-ne v2, v3, :cond_2b

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    if-ne v2, v3, :cond_2b

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    if-ne v2, v3, :cond_2b

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    if-ne v2, v3, :cond_2b

    const/4 v1, 0x1

    return v1

    :cond_2b
    return v1
.end method

.method public getFormat()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public isMultiResolution()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "InputConfiguration(w:%d, h:%d, format:%d, isMultiResolution %b)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
