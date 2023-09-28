# classes2.dex

.class public final Landroid/media/tv/tuner/filter/ScramblingStatusEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mScramblingStatus:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/ScramblingStatusEvent;->mScramblingStatus:I

    return-void
.end method


# virtual methods
.method public getScramblingStatus()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/ScramblingStatusEvent;->mScramblingStatus:I

    return v0
.end method
