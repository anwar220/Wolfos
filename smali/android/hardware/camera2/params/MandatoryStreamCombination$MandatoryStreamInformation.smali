# classes.dex

.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MandatoryStreamInformation"
.end annotation


# instance fields
.field private final mAvailableSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mFormat:I

.field private final mIs10BitCapable:Z

.field private final mIsInput:Z

.field private final mIsMaximumSize:Z

.field private final mIsUltraHighResolution:Z

.field private final mStreamUseCase:J


# direct methods
.method public constructor <init>(Ljava/util/List;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IZZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZZZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IZZZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZZZZ)V"
        }
    .end annotation

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IZZZZJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZZZZJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    iput-boolean p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsMaximumSize:Z

    iput-boolean p4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    iput-boolean p5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    iput-boolean p6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIs10BitCapable:Z

    iput-wide p7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No available sizes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    if-eqz v1, :cond_42

    move-object v1, p1

    check-cast v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    iget v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    if-ne v2, v3, :cond_41

    iget-boolean v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    if-ne v2, v3, :cond_41

    iget-boolean v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    if-ne v2, v3, :cond_41

    iget-wide v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    iget-wide v4, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_38

    goto :goto_41

    :cond_38
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_41
    :goto_41
    return v0

    :cond_42
    return v0
.end method

.method public get10BitFormat()I
    .registers 3

    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIs10BitCapable:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "10-bit output is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvailableSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .registers 3

    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIs10BitCapable:Z

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    const/16 v1, 0x36

    if-ne v0, v1, :cond_d

    const/16 v0, 0x23

    return v0

    :cond_d
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    return v0
.end method

.method public getStreamUseCase()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [F

    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    long-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public is10BitCapable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIs10BitCapable:Z

    return v0
.end method

.method public isInput()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    return v0
.end method

.method public isMaximumSize()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsMaximumSize:Z

    return v0
.end method

.method public isUltraHighResolution()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    return v0
.end method
