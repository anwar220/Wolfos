# classes2.dex

.class public final Landroid/media/tv/tuner/filter/IpFilterConfiguration;
.super Landroid/media/tv/tuner/filter/FilterConfiguration;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final INVALID_IP_FILTER_CONTEXT_ID:I = -0x1


# instance fields
.field private final mDstIpAddress:[B

.field private final mDstPort:I

.field private final mIpFilterContextId:I

.field private final mPassthrough:Z

.field private final mSrcIpAddress:[B

.field private final mSrcPort:I


# direct methods
.method private constructor <init>(Landroid/media/tv/tuner/filter/Settings;[B[BIIZI)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;)V

    iput-object p2, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mSrcIpAddress:[B

    iput-object p3, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mDstIpAddress:[B

    iput p4, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mSrcPort:I

    iput p5, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mDstPort:I

    iput-boolean p6, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mPassthrough:Z

    iput p7, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mIpFilterContextId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/filter/Settings;[B[BIIZILandroid/media/tv/tuner/filter/IpFilterConfiguration-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/tv/tuner/filter/IpFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;[B[BIIZI)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;-><init>(Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getDstIpAddress()[B
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mDstIpAddress:[B

    return-object v0
.end method

.method public getDstPort()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mDstPort:I

    return v0
.end method

.method public getIpFilterContextId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mIpFilterContextId:I

    return v0
.end method

.method public getSrcIpAddress()[B
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mSrcIpAddress:[B

    return-object v0
.end method

.method public getSrcPort()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mSrcPort:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public isPassthrough()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mPassthrough:Z

    return v0
.end method
