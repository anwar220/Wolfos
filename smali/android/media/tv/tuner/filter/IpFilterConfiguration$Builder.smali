# classes2.dex

.class public final Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/IpFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDstIpAddress:[B

.field private mDstPort:I

.field private mIpCid:I

.field private mPassthrough:Z

.field private mSettings:Landroid/media/tv/tuner/filter/Settings;

.field private mSrcIpAddress:[B

.field private mSrcPort:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_1e

    iput-object v1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mSrcIpAddress:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    iput-object v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mDstIpAddress:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mSrcPort:I

    iput v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mDstPort:I

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mPassthrough:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mIpCid:I

    return-void

    nop

    :array_1e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_24
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/IpFilterConfiguration;
    .registers 12

    iget-object v2, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mSrcIpAddress:[B

    array-length v9, v2

    iget-object v3, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mDstIpAddress:[B

    array-length v0, v3

    if-ne v9, v0, :cond_21

    const/4 v0, 0x4

    if-eq v9, v0, :cond_f

    const/16 v0, 0x10

    if-ne v9, v0, :cond_21

    :cond_f
    new-instance v10, Landroid/media/tv/tuner/filter/IpFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v4, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mSrcPort:I

    iget v5, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mDstPort:I

    iget-boolean v6, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mPassthrough:Z

    iget v7, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mIpCid:I

    const/4 v8, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v8}, Landroid/media/tv/tuner/filter/IpFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;[B[BIIZILandroid/media/tv/tuner/filter/IpFilterConfiguration-IA;)V

    return-object v10

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The lengths of src and dst IP address must be 4 or 16 and must be the same.srcLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dstLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mDstIpAddress:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDstIpAddress([B)Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mDstIpAddress:[B

    return-object p0
.end method

.method public setDstPort(I)Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mDstPort:I

    return-object p0
.end method

.method public setIpFilterContextId(I)Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .registers 4

    const v0, 0x10001

    const-string v1, "setIpFilterContextId"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput p1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mIpCid:I

    :cond_d
    return-object p0
.end method

.method public setPassthrough(Z)Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mPassthrough:Z

    return-object p0
.end method

.method public setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object p0
.end method

.method public setSrcIpAddress([B)Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mSrcIpAddress:[B

    return-object p0
.end method

.method public setSrcPort(I)Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;->mSrcPort:I

    return-object p0
.end method
