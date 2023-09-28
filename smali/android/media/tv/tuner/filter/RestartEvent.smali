# classes2.dex

.class public final Landroid/media/tv/tuner/filter/RestartEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final NEW_FILTER_FIRST_START_ID:I


# instance fields
.field private final mStartId:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/RestartEvent;->mStartId:I

    return-void
.end method


# virtual methods
.method public getStartId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/RestartEvent;->mStartId:I

    return v0
.end method
