# classes2.dex

.class public Landroid/media/tv/tuner/frontend/AtscFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final MODULATION_AUTO:I = 0x1

.field public static final MODULATION_MOD_16VSB:I = 0x8

.field public static final MODULATION_MOD_8VSB:I = 0x4

.field public static final MODULATION_UNDEFINED:I


# instance fields
.field private final mModulation:I


# direct methods
.method private constructor <init>(JI)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    iput p3, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;->mModulation:I

    return-void
.end method

.method synthetic constructor <init>(JILandroid/media/tv/tuner/frontend/AtscFrontendSettings-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;-><init>(JI)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getModulation()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;->mModulation:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
