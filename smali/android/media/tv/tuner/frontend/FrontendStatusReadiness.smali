# classes2.dex

.class public final Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/FrontendStatusReadiness$Readiness;
    }
.end annotation


# static fields
.field public static final FRONTEND_STATUS_READINESS_STABLE:I = 0x3

.field public static final FRONTEND_STATUS_READINESS_UNAVAILABLE:I = 0x1

.field public static final FRONTEND_STATUS_READINESS_UNDEFINED:I = 0x0

.field public static final FRONTEND_STATUS_READINESS_UNSTABLE:I = 0x2

.field public static final FRONTEND_STATUS_READINESS_UNSUPPORTED:I = 0x4


# instance fields
.field private mFrontendStatusType:I

.field private mStatusReadiness:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;->mFrontendStatusType:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;->mStatusReadiness:I

    return-void
.end method


# virtual methods
.method public getStatusReadiness()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;->mStatusReadiness:I

    return v0
.end method

.method public getStatusType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;->mFrontendStatusType:I

    return v0
.end method
