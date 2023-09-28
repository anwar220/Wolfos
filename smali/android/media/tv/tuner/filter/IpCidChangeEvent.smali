# classes2.dex

.class public final Landroid/media/tv/tuner/filter/IpCidChangeEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mCid:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/IpCidChangeEvent;->mCid:I

    return-void
.end method


# virtual methods
.method public getIpCid()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/IpCidChangeEvent;->mCid:I

    return v0
.end method
